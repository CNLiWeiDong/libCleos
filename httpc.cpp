//
// sync_client.cpp
// ~~~~~~~~~~~~~~~
//
// Copyright (c) 2003-2012 Christopher M. Kohlhoff (chris at kohlhoff dot com)
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//

#include <iostream>
#include <istream>
#include <ostream>
#include <string>
#include <asio.hpp>
//#include <fc/variant.hpp>
//#include <fc/io/json.hpp>
//#include <eosio/chain/exceptions.hpp>
//#include <eosio/http_plugin/http_plugin.hpp>
//#include <eosio/chain_plugin/chain_plugin.hpp>
#include "httpc.hpp"
;
using asio::ip::tcp;
namespace eosio { namespace client { namespace http {
   string call( const std::string& server, uint16_t port,
                     const std::string& path,
                     const string& postdata ) {
   try {
      std::string postjson = postdata;
//      if( !postdata.is_null() )
//         postjson = fc::json::to_string( postdata );

      asio::io_service io_service;

      // Get a list of endpoints corresponding to the server name.
      tcp::resolver resolver(io_service);
      tcp::resolver::query query(server, std::to_string(port) );
      tcp::resolver::iterator endpoint_iterator = resolver.resolve(query);
      tcp::resolver::iterator end;

      while( endpoint_iterator != end ) {
         // Try each endpoint until we successfully establish a connection.
         tcp::socket socket(io_service);
         try {
            asio::connect(socket, endpoint_iterator);
            endpoint_iterator = end;
         } catch( std::exception& e ) {
            ++endpoint_iterator;
            if( endpoint_iterator != end ) {
               continue;
            } else {
//               throw connection_exception(fc::log_messages{
//                  FC_LOG_MESSAGE( error, "Connection to ${server}:${port}${path} is refused",
//                                  ("server", server)("port", port)("path", path) ),
//                  FC_LOG_MESSAGE( error, e.what())
//               });
               return "error";
            }
         }

         // Form the request. We specify the "Connection: close" header so that the
         // server will close the socket after transmitting the response. This will
         // allow us to treat all data up until the EOF as the content.
         asio::streambuf request;
         std::ostream request_stream(&request);
         request_stream << "POST " << path << " HTTP/1.0\r\n";
         request_stream << "Host: " << server << "\r\n";
         request_stream << "content-length: " << postjson.size() << "\r\n";
         request_stream << "Accept: */*\r\n";
         request_stream << "Connection: close\r\n\r\n";
         request_stream << postjson;

         // Send the request.
         asio::write(socket, request);

         // Read the response status line. The response streambuf will automatically
         // grow to accommodate the entire line. The growth may be limited by passing
         // a maximum size to the streambuf constructor.
         asio::streambuf response;
         asio::read_until(socket, response, "\r\n");

         // Check that response is OK.
         std::istream response_stream(&response);
         std::string http_version;
         response_stream >> http_version;
         unsigned int status_code;
         response_stream >> status_code;
         std::string status_message;
         std::getline(response_stream, status_message);
//         FC_ASSERT( !(!response_stream || http_version.substr(0, 5) != "HTTP/"), "Invalid Response" );
         if(!response_stream || http_version.substr(0, 5) != "HTTP/")
         {
            return "error";
         }
         // Read the response headers, which are terminated by a blank line.
         asio::read_until(socket, response, "\r\n\r\n");

         // Process the response headers.
         std::string header;
         while (std::getline(response_stream, header) && header != "\r")
         {
         //      std::cout << header << "\n";
         }
         //      std::cout << "\n";

         std::stringstream re;
         // Write whatever content we already have to output.
         if (response.size() > 0)
            //   std::cout << &response;
            re << &response;

         // Read until EOF, writing data to output as we go.
         asio::error_code error;
         while (asio::read(socket, response,
                                  asio::transfer_at_least(1), error))
            re << &response;

         if (error != asio::error::eof)
//            throw asio::error_code(error);
            return "error";

         //  std::cout << re.str() <<"\n";
//         const auto response_result = fc::json::from_string(re.str());
         if( status_code == 200 || status_code == 201 || status_code == 202 ) {
            return re.str();//response_result;
         } else if( status_code == 404 ) {
            // Unknown endpoint
//            if (path.compare(0, chain_func_base.size(), chain_func_base) == 0) {
//               throw chain::missing_chain_api_plugin_exception(FC_LOG_MESSAGE(error, "Chain API plugin is not enabled"));
//            } else if (path.compare(0, wallet_func_base.size(), wallet_func_base) == 0) {
//               throw chain::missing_wallet_api_plugin_exception(FC_LOG_MESSAGE(error, "Wallet is not available"));
//            } else if (path.compare(0, account_history_func_base.size(), account_history_func_base) == 0) {
//               throw chain::missing_account_history_api_plugin_exception(FC_LOG_MESSAGE(error, "Account History API plugin is not enabled"));
//            } else if (path.compare(0, net_func_base.size(), net_func_base) == 0) {
//               throw chain::missing_net_api_plugin_exception(FC_LOG_MESSAGE(error, "Net API plugin is not enabled"));
//            }
            return "error";
         } else {
//            auto &&error_info = response_result.as<eosio::error_results>().error;
//            // Construct fc exception from error
//            const auto &error_details = error_info.details;
//
//            fc::log_messages logs;
//            for (auto itr = error_details.begin(); itr != error_details.end(); itr++) {
//               const auto& context = fc::log_context(fc::log_level::error, itr->file.data(), itr->line_number, itr->method.data());
//               logs.emplace_back(fc::log_message(context, itr->message));
//            }
//
//            throw fc::exception(logs, error_info.code, error_info.name, error_info.what);
            return "error";
         }

//         FC_ASSERT( status_code == 200, "Error code ${c}\n: ${msg}\n", ("c", status_code)("msg", re.str()) );
      }

//      FC_ASSERT( !"unable to connect" );
   }catch (exception e)
   {
      return "error";
   }
   // FC_CAPTURE_AND_RETHROW()  // error, "Request Path: ${server}:${port}${path}\nRequest Post Data: ${postdata}" ,
                           // ("server", server)("port", port)("path", path)("postdata", postdata) )
   }
}}}
