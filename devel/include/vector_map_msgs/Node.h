// Generated by gencpp from file vector_map_msgs/Node.msg
// DO NOT EDIT!


#ifndef VECTOR_MAP_MSGS_MESSAGE_NODE_H
#define VECTOR_MAP_MSGS_MESSAGE_NODE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace vector_map_msgs
{
template <class ContainerAllocator>
struct Node_
{
  typedef Node_<ContainerAllocator> Type;

  Node_()
    : nid(0)
    , pid(0)  {
    }
  Node_(const ContainerAllocator& _alloc)
    : nid(0)
    , pid(0)  {
  (void)_alloc;
    }



   typedef int32_t _nid_type;
  _nid_type nid;

   typedef int32_t _pid_type;
  _pid_type pid;




  typedef boost::shared_ptr< ::vector_map_msgs::Node_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vector_map_msgs::Node_<ContainerAllocator> const> ConstPtr;

}; // struct Node_

typedef ::vector_map_msgs::Node_<std::allocator<void> > Node;

typedef boost::shared_ptr< ::vector_map_msgs::Node > NodePtr;
typedef boost::shared_ptr< ::vector_map_msgs::Node const> NodeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vector_map_msgs::Node_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vector_map_msgs::Node_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vector_map_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'vector_map_msgs': ['/home/wenws/10_NLOS_Correction_/src/vector_map_msgs/msg'], 'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vector_map_msgs::Node_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vector_map_msgs::Node_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vector_map_msgs::Node_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vector_map_msgs::Node_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vector_map_msgs::Node_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vector_map_msgs::Node_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vector_map_msgs::Node_<ContainerAllocator> >
{
  static const char* value()
  {
    return "94c8d91d18880679a8ed9b4a81985380";
  }

  static const char* value(const ::vector_map_msgs::Node_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x94c8d91d18880679ULL;
  static const uint64_t static_value2 = 0xa8ed9b4a81985380ULL;
};

template<class ContainerAllocator>
struct DataType< ::vector_map_msgs::Node_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vector_map_msgs/Node";
  }

  static const char* value(const ::vector_map_msgs::Node_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vector_map_msgs::Node_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Ver 1.00\n\
int32 nid\n\
int32 pid\n\
";
  }

  static const char* value(const ::vector_map_msgs::Node_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vector_map_msgs::Node_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.nid);
      stream.next(m.pid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Node_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vector_map_msgs::Node_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vector_map_msgs::Node_<ContainerAllocator>& v)
  {
    s << indent << "nid: ";
    Printer<int32_t>::stream(s, indent + "  ", v.nid);
    s << indent << "pid: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VECTOR_MAP_MSGS_MESSAGE_NODE_H
