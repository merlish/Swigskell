/*
 * haskell.swg
 *
 * merlyn's attempt at a brand new haskell typemap, because the csharp one
 *  is mindnumbing. */

/* intermediate class: primitive types -> Foreign.C.* */
%typemap(imtype) char "CChar"
%typemap(imtype) signed char "CSChar"
%typemap(imtype) unsigned char "CUChar"
%typemap(imtype) short "CShort"
%typemap(imtype) unsigned short "CUShort"
%typemap(imtype) int "CInt"
%typemap(imtype) unsigned int "CUInt"
%typemap(imtype) long "CLong"
%typemap(imtype) unsigned long "CULong"
%typemap(imtype) long long "CLLong"
%typemap(imtype) unsigned long long "CULLong"
%typemap(imtype) float "CFloat"
%typemap(imtype) double "CDouble"
%typemap(imtype) long double "CLDouble"
/* TODO: http://www.haskell.org/ghc/docs/5.00/set/sec-ctypesiso.html onwards */

//%typemap(imtype) void "()"

%typemap(imtype) char*, char[] "CString"

/* intermediate class: any non-primitive type -> Foreign.Ptr.Ptr */
%typemap(imtype) SWIGTYPE "Ptr"

/* intermediate class: a non-pointer void is just a pair of empty brackets. :) */
%typemap(imtype) void "()"


%typemap(hstype) char*, char[] "String"
%typemap(hstype) void "()"

