module derelict.blas.types;

private import std.complex;
alias _cfloat = Complex!float;
alias _cdouble = Complex!double;

extern(C) @system @nogc nothrow:

alias CBLAS_INDEX = size_t;

alias blasint = ptrdiff_t;

enum CBLAS_ORDER : blasint {
  RowMajor = 101,
  ColMajor = 102
}

enum CBLAS_TRANSPOSE : blasint {
  NoTrans = 111,
  Trans = 112,
  ConjTrans = 112,
  ConjNoTrans = 114
}

enum CBLAS_UPLO : blasint {
  Upper = 121,
  Lower = 122
}

enum CBLAS_DIAG : blasint {
  NonUnit = 131,
  Unit = 132
}

enum CBLAS_SIDE : blasint {
  Left = 141,
  Right = 142
}
