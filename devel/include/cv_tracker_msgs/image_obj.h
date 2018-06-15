// Generated by gencpp from file cv_tracker_msgs/image_obj.msg
// DO NOT EDIT!


#ifndef CV_TRACKER_MSGS_MESSAGE_IMAGE_OBJ_H
#define CV_TRACKER_MSGS_MESSAGE_IMAGE_OBJ_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <cv_tracker_msgs/image_rect.h>

namespace cv_tracker_msgs
{
template <class ContainerAllocator>
struct image_obj_
{
  typedef image_obj_<ContainerAllocator> Type;

  image_obj_()
    : header()
    , type()
    , obj()  {
    }
  image_obj_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , type(_alloc)
    , obj(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _type_type;
  _type_type type;

   typedef std::vector< ::cv_tracker_msgs::image_rect_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cv_tracker_msgs::image_rect_<ContainerAllocator> >::other >  _obj_type;
  _obj_type obj;




  typedef boost::shared_ptr< ::cv_tracker_msgs::image_obj_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cv_tracker_msgs::image_obj_<ContainerAllocator> const> ConstPtr;

}; // struct image_obj_

typedef ::cv_tracker_msgs::image_obj_<std::allocator<void> > image_obj;

typedef boost::shared_ptr< ::cv_tracker_msgs::image_obj > image_objPtr;
typedef boost::shared_ptr< ::cv_tracker_msgs::image_obj const> image_objConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cv_tracker_msgs::image_obj_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cv_tracker_msgs::image_obj_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cv_tracker_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'cv_tracker_msgs': ['/home/wenws/10_NLOS_Correction_/src/cv_tracker_msgs/msg'], 'geometry_msgs': ['/opt/ros/jade/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cv_tracker_msgs::image_obj_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cv_tracker_msgs::image_obj_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cv_tracker_msgs::image_obj_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cv_tracker_msgs::image_obj_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cv_tracker_msgs::image_obj_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cv_tracker_msgs::image_obj_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cv_tracker_msgs::image_obj_<ContainerAllocator> >
{
  static const char* value()
  {
    return "07ef08924af0932bcdf48f6ca49c8c23";
  }

  static const char* value(const ::cv_tracker_msgs::image_obj_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x07ef08924af0932bULL;
  static const uint64_t static_value2 = 0xcdf48f6ca49c8c23ULL;
};

template<class ContainerAllocator>
struct DataType< ::cv_tracker_msgs::image_obj_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cv_tracker_msgs/image_obj";
  }

  static const char* value(const ::cv_tracker_msgs::image_obj_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cv_tracker_msgs::image_obj_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
string type\n\
image_rect[] obj\n\
# XXX Should this message have 'score' ?\n\
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
MSG: cv_tracker_msgs/image_rect\n\
int32 x\n\
int32 y\n\
int32 height\n\
int32 width\n\
float32 score\n\
";
  }

  static const char* value(const ::cv_tracker_msgs::image_obj_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cv_tracker_msgs::image_obj_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.type);
      stream.next(m.obj);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct image_obj_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cv_tracker_msgs::image_obj_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cv_tracker_msgs::image_obj_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type);
    s << indent << "obj[]" << std::endl;
    for (size_t i = 0; i < v.obj.size(); ++i)
    {
      s << indent << "  obj[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::cv_tracker_msgs::image_rect_<ContainerAllocator> >::stream(s, indent + "    ", v.obj[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CV_TRACKER_MSGS_MESSAGE_IMAGE_OBJ_H
