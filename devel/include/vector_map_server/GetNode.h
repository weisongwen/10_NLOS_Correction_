// Generated by gencpp from file vector_map_server/GetNode.msg
// DO NOT EDIT!


#ifndef VECTOR_MAP_SERVER_MESSAGE_GETNODE_H
#define VECTOR_MAP_SERVER_MESSAGE_GETNODE_H

#include <ros/service_traits.h>


#include <vector_map_server/GetNodeRequest.h>
#include <vector_map_server/GetNodeResponse.h>


namespace vector_map_server
{

struct GetNode
{

typedef GetNodeRequest Request;
typedef GetNodeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetNode
} // namespace vector_map_server


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vector_map_server::GetNode > {
  static const char* value()
  {
    return "040b6030f7bbb864cf20e6a758a8921b";
  }

  static const char* value(const ::vector_map_server::GetNode&) { return value(); }
};

template<>
struct DataType< ::vector_map_server::GetNode > {
  static const char* value()
  {
    return "vector_map_server/GetNode";
  }

  static const char* value(const ::vector_map_server::GetNode&) { return value(); }
};


// service_traits::MD5Sum< ::vector_map_server::GetNodeRequest> should match 
// service_traits::MD5Sum< ::vector_map_server::GetNode > 
template<>
struct MD5Sum< ::vector_map_server::GetNodeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vector_map_server::GetNode >::value();
  }
  static const char* value(const ::vector_map_server::GetNodeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vector_map_server::GetNodeRequest> should match 
// service_traits::DataType< ::vector_map_server::GetNode > 
template<>
struct DataType< ::vector_map_server::GetNodeRequest>
{
  static const char* value()
  {
    return DataType< ::vector_map_server::GetNode >::value();
  }
  static const char* value(const ::vector_map_server::GetNodeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vector_map_server::GetNodeResponse> should match 
// service_traits::MD5Sum< ::vector_map_server::GetNode > 
template<>
struct MD5Sum< ::vector_map_server::GetNodeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vector_map_server::GetNode >::value();
  }
  static const char* value(const ::vector_map_server::GetNodeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vector_map_server::GetNodeResponse> should match 
// service_traits::DataType< ::vector_map_server::GetNode > 
template<>
struct DataType< ::vector_map_server::GetNodeResponse>
{
  static const char* value()
  {
    return DataType< ::vector_map_server::GetNode >::value();
  }
  static const char* value(const ::vector_map_server::GetNodeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VECTOR_MAP_SERVER_MESSAGE_GETNODE_H
