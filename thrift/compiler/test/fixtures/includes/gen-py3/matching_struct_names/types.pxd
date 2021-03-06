#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap, pair as cpair
from thrift.py3.exceptions cimport cTException
cimport folly.iobuf as __iobuf
cimport thrift.py3.exceptions
cimport thrift.py3.types
from thrift.py3.types cimport bstring, move
from folly.optional cimport cOptional
cimport module.types as _module_types





cdef extern from "src/gen-cpp2/matching_struct_names_types_custom_protocol.h" namespace "cpp2":
    # Forward Declaration
    cdef cppclass cMyStruct "cpp2::MyStruct"
    # Forward Declaration
    cdef cppclass cCombo "cpp2::Combo"

cdef extern from "src/gen-cpp2/matching_struct_names_types.h" namespace "cpp2":
    cdef cppclass cMyStruct__isset "cpp2::MyStruct::__isset":
        bint field

    cdef cppclass cMyStruct "cpp2::MyStruct":
        cMyStruct() except +
        cMyStruct(const cMyStruct&) except +
        bint operator==(cMyStruct&)
        string field
        cMyStruct__isset __isset

    cdef cppclass cCombo__isset "cpp2::Combo::__isset":
        bint listOfOurMyStructLists
        bint theirMyStructList
        bint ourMyStructList
        bint listOfTheirMyStructList

    cdef cppclass cCombo "cpp2::Combo":
        cCombo() except +
        cCombo(const cCombo&) except +
        bint operator==(cCombo&)
        vector[vector[cMyStruct]] listOfOurMyStructLists
        vector[_module_types.cMyStruct] theirMyStructList
        vector[cMyStruct] ourMyStructList
        vector[vector[_module_types.cMyStruct]] listOfTheirMyStructList
        cCombo__isset __isset


cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cMyStruct] move(unique_ptr[cMyStruct])
    cdef shared_ptr[cMyStruct] move_shared "std::move"(shared_ptr[cMyStruct])
    cdef unique_ptr[cMyStruct] move_unique "std::move"(unique_ptr[cMyStruct])
    cdef shared_ptr[cCombo] move(unique_ptr[cCombo])
    cdef shared_ptr[cCombo] move_shared "std::move"(shared_ptr[cCombo])
    cdef unique_ptr[cCombo] move_unique "std::move"(unique_ptr[cCombo])

cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const cMyStruct] const_pointer_cast "std::const_pointer_cast<const cpp2::MyStruct>"(shared_ptr[cMyStruct])
    cdef shared_ptr[const cCombo] const_pointer_cast "std::const_pointer_cast<const cpp2::Combo>"(shared_ptr[cCombo])

# Forward Definition of the cython struct
cdef class MyStruct(thrift.py3.types.Struct)


cdef class MyStruct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cMyStruct] _cpp_obj

    @staticmethod
    cdef unique_ptr[cMyStruct] _make_instance(
        cMyStruct* base_instance,
        object field
    ) except *

    @staticmethod
    cdef create(shared_ptr[cMyStruct])

# Forward Definition of the cython struct
cdef class Combo(thrift.py3.types.Struct)


cdef class Combo(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cCombo] _cpp_obj
    cdef List__List__MyStruct __listOfOurMyStructLists
    cdef List__module_MyStruct __theirMyStructList
    cdef List__MyStruct __ourMyStructList
    cdef List__List__module_MyStruct __listOfTheirMyStructList

    @staticmethod
    cdef unique_ptr[cCombo] _make_instance(
        cCombo* base_instance,
        object listOfOurMyStructLists,
        object theirMyStructList,
        object ourMyStructList,
        object listOfTheirMyStructList
    ) except *

    @staticmethod
    cdef create(shared_ptr[cCombo])


cdef class List__MyStruct:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[cMyStruct]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cMyStruct]])
    @staticmethod
    cdef unique_ptr[vector[cMyStruct]] _make_instance(object items) except *

cdef class List__List__MyStruct:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[vector[cMyStruct]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[vector[cMyStruct]]])
    @staticmethod
    cdef unique_ptr[vector[vector[cMyStruct]]] _make_instance(object items) except *

cdef class List__module_MyStruct:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[_module_types.cMyStruct]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[_module_types.cMyStruct]])
    @staticmethod
    cdef unique_ptr[vector[_module_types.cMyStruct]] _make_instance(object items) except *

cdef class List__List__module_MyStruct:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[vector[_module_types.cMyStruct]]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[vector[_module_types.cMyStruct]]])
    @staticmethod
    cdef unique_ptr[vector[vector[_module_types.cMyStruct]]] _make_instance(object items) except *

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[vector[cMyStruct]] move(unique_ptr[vector[cMyStruct]])
    cdef unique_ptr[vector[cMyStruct]] move_unique "std::move"(unique_ptr[vector[cMyStruct]])
    cdef shared_ptr[vector[vector[cMyStruct]]] move(unique_ptr[vector[vector[cMyStruct]]])
    cdef unique_ptr[vector[vector[cMyStruct]]] move_unique "std::move"(unique_ptr[vector[vector[cMyStruct]]])
    cdef shared_ptr[vector[_module_types.cMyStruct]] move(unique_ptr[vector[_module_types.cMyStruct]])
    cdef unique_ptr[vector[_module_types.cMyStruct]] move_unique "std::move"(unique_ptr[vector[_module_types.cMyStruct]])
    cdef shared_ptr[vector[vector[_module_types.cMyStruct]]] move(unique_ptr[vector[vector[_module_types.cMyStruct]]])
    cdef unique_ptr[vector[vector[_module_types.cMyStruct]]] move_unique "std::move"(unique_ptr[vector[vector[_module_types.cMyStruct]]])
cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const vector[cMyStruct]] const_pointer_cast "std::const_pointer_cast<const std::vector<cpp2::MyStruct>>"(shared_ptr[vector[cMyStruct]])

    cdef shared_ptr[const vector[vector[cMyStruct]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::vector<cpp2::MyStruct>>>"(shared_ptr[vector[vector[cMyStruct]]])

    cdef shared_ptr[const vector[_module_types.cMyStruct]] const_pointer_cast "std::const_pointer_cast<const std::vector<cpp2::MyStruct>>"(shared_ptr[vector[_module_types.cMyStruct]])

    cdef shared_ptr[const vector[vector[_module_types.cMyStruct]]] const_pointer_cast "std::const_pointer_cast<const std::vector<std::vector<cpp2::MyStruct>>>"(shared_ptr[vector[vector[_module_types.cMyStruct]]])

