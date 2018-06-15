# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from waypoint_follower_msgs/dtlane.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class dtlane(genpy.Message):
  _md5sum = "1e60021b42021278e47be71f881d31aa"
  _type = "waypoint_follower_msgs/dtlane"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64 dist
float64 dir
float64 apara
float64 r
float64 slope
float64 cant
float64 lw
float64 rw
"""
  __slots__ = ['dist','dir','apara','r','slope','cant','lw','rw']
  _slot_types = ['float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       dist,dir,apara,r,slope,cant,lw,rw

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(dtlane, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.dist is None:
        self.dist = 0.
      if self.dir is None:
        self.dir = 0.
      if self.apara is None:
        self.apara = 0.
      if self.r is None:
        self.r = 0.
      if self.slope is None:
        self.slope = 0.
      if self.cant is None:
        self.cant = 0.
      if self.lw is None:
        self.lw = 0.
      if self.rw is None:
        self.rw = 0.
    else:
      self.dist = 0.
      self.dir = 0.
      self.apara = 0.
      self.r = 0.
      self.slope = 0.
      self.cant = 0.
      self.lw = 0.
      self.rw = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_8d.pack(_x.dist, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 64
      (_x.dist, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw,) = _struct_8d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_8d.pack(_x.dist, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 64
      (_x.dist, _x.dir, _x.apara, _x.r, _x.slope, _x.cant, _x.lw, _x.rw,) = _struct_8d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_8d = struct.Struct("<8d")
