// Generated by gencpp from file vector_map_server/GetWall.msg
// DO NOT EDIT!


#ifndef VECTOR_MAP_SERVER_MESSAGE_GETWALL_H
#define VECTOR_MAP_SERVER_MESSAGE_GETWALL_H

#include <ros/service_traits.h>


#include <vector_map_server/GetWallRequest.h>
#include <vector_map_server/GetWallResponse.h>


namespace vector_map_server
{

struct GetWall
{

typedef GetWallRequest Request;
typedef GetWallResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetWall
} // namespace vector_map_server


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vector_map_server::GetWall > {
  static const char* value()
  {
    return "1fc9a5709cc91620e4594fff27c94e9f";
  }

  static const char* value(const ::vector_map_server::GetWall&) { return value(); }
};

template<>
struct DataType< ::vector_map_server::GetWall > {
  static const char* value()
  {
    return "vector_map_server/GetWall";
  }

  static const char* value(const ::vector_map_server::GetWall&) { return value(); }
};


// service_traits::MD5Sum< ::vector_map_server::GetWallRequest> should match 
// service_traits::MD5Sum< ::vector_map_server::GetWall > 
template<>
struct MD5Sum< ::vector_map_server::GetWallRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vector_map_server::GetWall >::value();
  }
  static const char* value(const ::vector_map_server::GetWallRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vector_map_server::GetWallRequest> should match 
// service_traits::DataType< ::vector_map_server::GetWall > 
template<>
struct DataType< ::vector_map_server::GetWallRequest>
{
  static const char* value()
  {
    return DataType< ::vector_map_server::GetWall >::value();
  }
  static const char* value(const ::vector_map_server::GetWallRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vector_map_server::GetWallResponse> should match 
// service_traits::MD5Sum< ::vector_map_server::GetWall > 
template<>
struct MD5Sum< ::vector_map_server::GetWallResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vector_map_server::GetWall >::value();
  }
  static const char* value(const ::vector_map_server::GetWallResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vector_map_server::GetWallResponse> should match 
// service_traits::DataType< ::vector_map_server::GetWall > 
template<>
struct DataType< ::vector_map_server::GetWallResponse>
{
  static const char* value()
  {
    return DataType< ::vector_map_server::GetWall >::value();
  }
  static const char* value(const ::vector_map_server::GetWallResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VECTOR_MAP_SERVER_MESSAGE_GETWALL_H
