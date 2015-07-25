// Generated by gencpp from file pid_ctrl/VelOut.msg
// DO NOT EDIT!


#ifndef PID_CTRL_MESSAGE_VELOUT_H
#define PID_CTRL_MESSAGE_VELOUT_H


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
struct VelOut_
{
  typedef VelOut_<ContainerAllocator> Type;

  VelOut_()
    : x(0.0)
    , y(0.0)
    , theta(0.0)
    , linear_velocity(0.0)
    , angular_velocity(0.0)  {
    }
  VelOut_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , theta(0.0)
    , linear_velocity(0.0)
    , angular_velocity(0.0)  {
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _theta_type;
  _theta_type theta;

   typedef float _linear_velocity_type;
  _linear_velocity_type linear_velocity;

   typedef float _angular_velocity_type;
  _angular_velocity_type angular_velocity;




  typedef boost::shared_ptr< ::pid_ctrl::VelOut_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pid_ctrl::VelOut_<ContainerAllocator> const> ConstPtr;

}; // struct VelOut_

typedef ::pid_ctrl::VelOut_<std::allocator<void> > VelOut;

typedef boost::shared_ptr< ::pid_ctrl::VelOut > VelOutPtr;
typedef boost::shared_ptr< ::pid_ctrl::VelOut const> VelOutConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pid_ctrl::VelOut_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pid_ctrl::VelOut_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::pid_ctrl::VelOut_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pid_ctrl::VelOut_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pid_ctrl::VelOut_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pid_ctrl::VelOut_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pid_ctrl::VelOut_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pid_ctrl::VelOut_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pid_ctrl::VelOut_<ContainerAllocator> >
{
  static const char* value()
  {
    return "863b248d5016ca62ea2e895ae5265cf9";
  }

  static const char* value(const ::pid_ctrl::VelOut_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x863b248d5016ca62ULL;
  static const uint64_t static_value2 = 0xea2e895ae5265cf9ULL;
};

template<class ContainerAllocator>
struct DataType< ::pid_ctrl::VelOut_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pid_ctrl/VelOut";
  }

  static const char* value(const ::pid_ctrl::VelOut_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pid_ctrl::VelOut_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n\
float32 y\n\
float32 theta\n\
\n\
float32 linear_velocity\n\
float32 angular_velocity\n\
";
  }

  static const char* value(const ::pid_ctrl::VelOut_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pid_ctrl::VelOut_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.theta);
      stream.next(m.linear_velocity);
      stream.next(m.angular_velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct VelOut_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pid_ctrl::VelOut_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pid_ctrl::VelOut_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "theta: ";
    Printer<float>::stream(s, indent + "  ", v.theta);
    s << indent << "linear_velocity: ";
    Printer<float>::stream(s, indent + "  ", v.linear_velocity);
    s << indent << "angular_velocity: ";
    Printer<float>::stream(s, indent + "  ", v.angular_velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PID_CTRL_MESSAGE_VELOUT_H
