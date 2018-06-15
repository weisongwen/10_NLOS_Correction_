// Generated by gencpp from file vector_map_server/GetNodeResponse.msg
// DO NOT EDIT!


#ifndef VECTOR_MAP_SERVER_MESSAGE_GETNODERESPONSE_H
#define VECTOR_MAP_SERVER_MESSAGE_GETNODERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <vector_map_msgs/NodeArray.h>

namespace vector_map_server
{
template <class ContainerAllocator>
struct GetNodeResponse_
{
  typedef GetNodeResponse_<ContainerAllocator> Type;

  GetNodeResponse_()
    : objects()  {
    }
  GetNodeResponse_(const ContainerAllocator& _alloc)
    : objects(_alloc)  {
  (void)_alloc;
    }



   typedef  ::vector_map_msgs::NodeArray_<ContainerAllocator>  _objects_type;
  _objects_type objects;




  typedef boost::shared_ptr< ::vector_map_server::GetNodeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vector_map_server::GetNodeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetNodeResponse_

typedef ::vector_map_server::GetNodeResponse_<std::allocator<void> > GetNodeResponse;

typedef boost::shared_ptr< ::vector_map_server::GetNodeResponse > GetNodeResponsePtr;
typedef boost::shared_ptr< ::vector_map_server::GetNodeResponse const> GetNodeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vector_map_server::GetNodeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vector_map_server::GetNodeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vector_map_server

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'vector_map_msgs': ['/home/wenws/10_NLOS_Correction_/src/vector_map_msgs/msg'], 'waypoint_follower_msgs': ['/home/wenws/10_NLOS_Correction_/src/waypoint_follower_msgs/msg'], 'geometry_msgs': ['/opt/ros/jade/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vector_map_server::GetNodeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vector_map_server::GetNodeResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vector_map_server::GetNodeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vector_map_server::GetNodeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vector_map_server::GetNodeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vector_map_server::GetNodeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vector_map_server::GetNodeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8948a4f88cd78eafaa373398537426d7";
  }

  static const char* value(const ::vector_map_server::GetNodeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8948a4f88cd78eafULL;
  static const uint64_t static_value2 = 0xaa373398537426d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::vector_map_server::GetNodeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vector_map_server/GetNodeResponse";
  }

  static const char* value(const ::vector_map_server::GetNodeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vector_map_server::GetNodeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vector_map_msgs/NodeArray objects\n\
\n\
\n\
================================================================================\n\
MSG: vector_map_msgs/NodeArray\n\
Header header\n\
Node[] data\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: vector_map_msgs/Node\n\
# Ver 1.00\n\
int32 nid\n\
int32 pid\n\
";
  }

  static const char* value(const ::vector_map_server::GetNodeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vector_map_server::GetNodeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.objects);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetNodeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vector_map_server::GetNodeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vector_map_server::GetNodeResponse_<ContainerAllocator>& v)
  {
    s << indent << "objects: ";
    s << std::endl;
    Printer< ::vector_map_msgs::NodeArray_<ContainerAllocator> >::stream(s, indent + "  ", v.objects);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VECTOR_MAP_SERVER_MESSAGE_GETNODERESPONSE_H
