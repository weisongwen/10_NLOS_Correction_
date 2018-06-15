// Generated by gencpp from file vector_map_server/GetFence.msg
// DO NOT EDIT!


#ifndef VECTOR_MAP_SERVER_MESSAGE_GETFENCE_H
#define VECTOR_MAP_SERVER_MESSAGE_GETFENCE_H

#include <ros/service_traits.h>


#include <vector_map_server/GetFenceRequest.h>
#include <vector_map_server/GetFenceResponse.h>


namespace vector_map_server
{

struct GetFence
{

typedef GetFenceRequest Request;
typedef GetFenceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetFence
} // namespace vector_map_server


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vector_map_server::GetFence > {
  static const char* value()
  {
    return "1fc9a5709cc91620e4594fff27c94e9f";
  }

  static const char* value(const ::vector_map_server::GetFence&) { return value(); }
};

template<>
struct DataType< ::vector_map_server::GetFence > {
  static const char* value()
  {
    return "vector_map_server/GetFence";
  }

  static const char* value(const ::vector_map_server::GetFence&) { return value(); }
};


// service_traits::MD5Sum< ::vector_map_server::GetFenceRequest> should match 
// service_traits::MD5Sum< ::vector_map_server::GetFence > 
template<>
struct MD5Sum< ::vector_map_server::GetFenceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vector_map_server::GetFence >::value();
  }
  static const char* value(const ::vector_map_server::GetFenceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vector_map_server::GetFenceRequest> should match 
// service_traits::DataType< ::vector_map_server::GetFence > 
template<>
struct DataType< ::vector_map_server::GetFenceRequest>
{
  static const char* value()
  {
    return DataType< ::vector_map_server::GetFence >::value();
  }
  static const char* value(const ::vector_map_server::GetFenceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vector_map_server::GetFenceResponse> should match 
// service_traits::MD5Sum< ::vector_map_server::GetFence > 
template<>
struct MD5Sum< ::vector_map_server::GetFenceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vector_map_server::GetFence >::value();
  }
  static const char* value(const ::vector_map_server::GetFenceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vector_map_server::GetFenceResponse> should match 
// service_traits::DataType< ::vector_map_server::GetFence > 
template<>
struct DataType< ::vector_map_server::GetFenceResponse>
{
  static const char* value()
  {
    return DataType< ::vector_map_server::GetFence >::value();
  }
  static const char* value(const ::vector_map_server::GetFenceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VECTOR_MAP_SERVER_MESSAGE_GETFENCE_H
