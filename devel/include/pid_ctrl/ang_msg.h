// Generated by gencpp from file pid_ctrl/ang_msg.msg
// DO NOT EDIT!


#ifndef PID_CTRL_MESSAGE_ANG_MSG_H
#define PID_CTRL_MESSAGE_ANG_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pid_ctrl
{
template <class ContainerAllocator>
struct ang_msg_
{
  typedef ang_msg_<ContainerAllocator> Type;

  ang_msg_()
    : x(0.0)
    , t(0.0)
    , setpoint(0.0)  {
    }
  ang_msg_(const ContainerAllocator& _alloc)
    : x(0.0)
    , t(0.0)
    , setpoint(0.0)  {
    }



   typedef double _x_type;
  _x_type x;

   typedef double _t_type;
  _t_type t;

   typedef double _setpoint_type;
  _setpoint_type setpoint;




  typedef boost::shared_ptr< ::pid_ctrl::ang_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pid_ctrl::ang_msg_<ContainerAllocator> const> ConstPtr;

}; // struct ang_msg_

typedef ::pid_ctrl::ang_msg_<std::allocator<void> > ang_msg;

typedef boost::shared_ptr< ::pid_ctrl::ang_msg > ang_msgPtr;
typedef boost::shared_ptr< ::pid_ctrl::ang_msg const> ang_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pid_ctrl::ang_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pid_ctrl::ang_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pid_ctrl

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'pid_ctrl': ['/home/muaz/catkin_ws/src/pid_ctrl/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pid_ctrl::ang_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pid_ctrl::ang_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pid_ctrl::ang_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pid_ctrl::ang_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pid_ctrl::ang_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pid_ctrl::ang_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pid_ctrl::ang_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "292a905e671af67a6c65822b0e898330";
  }

  static const char* value(const ::pid_ctrl::ang_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x292a905e671af67aULL;
  static const uint64_t static_value2 = 0x6c65822b0e898330ULL;
};

template<class ContainerAllocator>
struct DataType< ::pid_ctrl::ang_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pid_ctrl/ang_msg";
  }

  static const char* value(const ::pid_ctrl::ang_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pid_ctrl::ang_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n\
float64 t\n\
float64 setpoint\n\
";
  }

  static const char* value(const ::pid_ctrl::ang_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pid_ctrl::ang_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.t);
      stream.next(m.setpoint);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct ang_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pid_ctrl::ang_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pid_ctrl::ang_msg_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "t: ";
    Printer<double>::stream(s, indent + "  ", v.t);
    s << indent << "setpoint: ";
    Printer<double>::stream(s, indent + "  ", v.setpoint);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PID_CTRL_MESSAGE_ANG_MSG_H