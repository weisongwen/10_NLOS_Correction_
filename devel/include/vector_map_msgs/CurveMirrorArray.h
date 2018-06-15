// Generated by gencpp from file vector_map_msgs/CurveMirrorArray.msg
// DO NOT EDIT!


#ifndef VECTOR_MAP_MSGS_MESSAGE_CURVEMIRRORARRAY_H
#define VECTOR_MAP_MSGS_MESSAGE_CURVEMIRRORARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <vector_map_msgs/CurveMirror.h>

namespace vector_map_msgs
{
template <class ContainerAllocator>
struct CurveMirrorArray_
{
  typedef CurveMirrorArray_<ContainerAllocator> Type;

  CurveMirrorArray_()
    : header()
    , data()  {
    }
  CurveMirrorArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::vector_map_msgs::CurveMirror_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::vector_map_msgs::CurveMirror_<ContainerAllocator> >::other >  _data_type;
  _data_type data;




  typedef boost::shared_ptr< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> const> ConstPtr;

}; // struct CurveMirrorArray_

typedef ::vector_map_msgs::CurveMirrorArray_<std::allocator<void> > CurveMirrorArray;

typedef boost::shared_ptr< ::vector_map_msgs::CurveMirrorArray > CurveMirrorArrayPtr;
typedef boost::shared_ptr< ::vector_map_msgs::CurveMirrorArray const> CurveMirrorArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vector_map_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'vector_map_msgs': ['/home/wenws/10_NLOS_Correction_/src/vector_map_msgs/msg'], 'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "31106e63cff6b60b47e17bc42c91a294";
  }

  static const char* value(const ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x31106e63cff6b60bULL;
  static const uint64_t static_value2 = 0x47e17bc42c91a294ULL;
};

template<class ContainerAllocator>
struct DataType< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vector_map_msgs/CurveMirrorArray";
  }

  static const char* value(const ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
CurveMirror[] data\n\
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
MSG: vector_map_msgs/CurveMirror\n\
# Ver 1.10\n\
int32 id\n\
int32 vid\n\
int32 plid\n\
int32 type # differ from specification\n\
int32 linkid\n\
";
  }

  static const char* value(const ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CurveMirrorArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vector_map_msgs::CurveMirrorArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::vector_map_msgs::CurveMirror_<ContainerAllocator> >::stream(s, indent + "    ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // VECTOR_MAP_MSGS_MESSAGE_CURVEMIRRORARRAY_H
