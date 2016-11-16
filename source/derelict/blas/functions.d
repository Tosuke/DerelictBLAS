module derelict.blas.functions;

import derelict.blas.types;

extern(C) @system @nogc nothrow{
  
  alias da_cblas_sdsdot = float function(in blasint n, in float alpha, in float *x, in blasint incx, in float *y, in blasint incy);
  
  alias da_cblas_dsdot = double function(in blasint n, in float *x, in blasint incx, in float *y, in blasint incy);
  
  alias da_cblas_sdot = float function(in blasint n, in float  *x, in blasint incx, in float  *y, in blasint incy);
  
  alias da_cblas_ddot = double function(in blasint n, in double *x, in blasint incx, in double *y, in blasint incy);

  
  alias da_cblas_cdotu = _cfloat function(in blasint n, in _cfloat  *x, in blasint incx, in _cfloat  *y, in blasint incy);
  
  alias da_cblas_cdotc = _cfloat function(in blasint n, in _cfloat  *x, in blasint incx, in _cfloat  *y, in blasint incy);
  
  alias da_cblas_zdotu = _cdouble function(in blasint n, in _cdouble *x, in blasint incx, in _cdouble *y, in blasint incy);
  
  alias da_cblas_zdotc = _cdouble function(in blasint n, in _cdouble *x, in blasint incx, in _cdouble *y, in blasint incy);

  
  alias da_cblas_cdotu_sub = void function(in blasint n, in _cfloat  *x, in blasint incx, in _cfloat  *y, in blasint incy, _cfloat  *ret);
  
  alias da_cblas_cdotc_sub = void function(in blasint n, in _cfloat  *x, in blasint incx, in _cfloat  *y, in blasint incy, _cfloat  *ret);
  
  alias da_cblas_zdotu_sub = void function(in blasint n, in _cdouble *x, in blasint incx, in _cdouble *y, in blasint incy, _cdouble *ret);
  
  alias da_cblas_zdotc_sub = void function(in blasint n, in _cdouble *x, in blasint incx, in _cdouble *y, in blasint incy, _cdouble *ret);

  
  alias da_cblas_sasum = float function(in blasint n, in float  *x, in blasint incx);
  
  alias da_cblas_dasum = double function(in blasint n, in double *x, in blasint incx);
  
  alias da_cblas_scasum = float function(in blasint n, in _cfloat  *x, in blasint incx);
  
  alias da_cblas_dzasum = double function(in blasint n, in _cdouble *x, in blasint incx);

  
  alias da_cblas_snrm2 = float function(in blasint N, in float  *X, in blasint incX);
  
  alias da_cblas_dnrm2 = double function(in blasint N, in double *X, in blasint incX);
  
  alias da_cblas_scnrm2 = float function(in blasint N, in _cfloat  *X, in blasint incX);
  
  alias da_cblas_dznrm2 = double function(in blasint N, in _cdouble *X, in blasint incX);

  
  alias da_cblas_isamax = CBLAS_INDEX function(in blasint n, in float  *x, in blasint incx);
  
  alias da_cblas_idamax = CBLAS_INDEX function(in blasint n, in double *x, in blasint incx);
  
  alias da_cblas_icamax = CBLAS_INDEX function(in blasint n, in _cfloat  *x, in blasint incx);
  
  alias da_cblas_izamax = CBLAS_INDEX function(in blasint n, in _cdouble *x, in blasint incx);

  
  alias da_cblas_saxpy = void function(in blasint n, in float alpha, in float *x, in blasint incx, float *y, in blasint incy);
  
  alias da_cblas_daxpy = void function(in blasint n, in double alpha, in double *x, in blasint incx, double *y, in blasint incy);
  
  alias da_cblas_caxpy = void function(in blasint n, in _cfloat *alpha, in _cfloat *x, in blasint incx, _cfloat *y, in blasint incy);
  
  alias da_cblas_zaxpy = void function(in blasint n, in _cdouble *alpha, in _cdouble *x, in blasint incx, _cdouble *y, in blasint incy);

  
  alias da_cblas_scopy = void function(in blasint n, in float *x, in blasint incx, float *y, in blasint incy);
  
  alias da_cblas_dcopy = void function(in blasint n, in double *x, in blasint incx, double *y, in blasint incy);
  
  alias da_cblas_ccopy = void function(in blasint n, in _cfloat *x, in blasint incx, _cfloat *y, in blasint incy);
  
  alias da_cblas_zcopy = void function(in blasint n, in _cdouble *x, in blasint incx, _cdouble *y, in blasint incy);

  
  alias da_cblas_sswap = void function(in blasint n, float *x, in blasint incx, float *y, in blasint incy);
  
  alias da_cblas_dswap = void function(in blasint n, double *x, in blasint incx, double *y, in blasint incy);
  
  alias da_cblas_cswap = void function(in blasint n, _cfloat *x, in blasint incx, _cfloat *y, in blasint incy);
  
  alias da_cblas_zswap = void function(in blasint n, _cdouble *x, in blasint incx, _cdouble *y, in blasint incy);

  
  alias da_cblas_srot = void function(in blasint N, float *X, in blasint incX, float *Y, in blasint incY, in float c, in float s);
  
  alias da_cblas_drot = void function(in blasint N, double *X, in blasint incX, double *Y, in blasint incY, in double c, in double  s);

  alias da_cblas_srotg = void function(float *a, float *b, float *c, float *s);
  alias da_cblas_drotg = void function(double *a, double *b, double *c, double *s);

  
  alias da_cblas_srotm = void function(in blasint N, float *X, in blasint incX, float *Y, in blasint incY, in float *P);
  
  alias da_cblas_drotm = void function(in blasint N, double *X, in blasint incX, double *Y, in blasint incY, in double *P);

  alias da_cblas_srotmg = void function(float *d1, float *d2, float *b1, in float b2, float *P);
  alias da_cblas_drotmg = void function(double *d1, double *d2, double *b1, in double b2, double *P);

  
  alias da_cblas_sscal = void function(in blasint N, in float alpha, float *X, in blasint incX);
  
  alias da_cblas_dscal = void function(in blasint N, in double alpha, double *X, in blasint incX);
  
  alias da_cblas_cscal = void function(in blasint N, in _cfloat *alpha, _cfloat *X, in blasint incX);
  
  alias da_cblas_zscal = void function(in blasint N, in _cdouble *alpha, _cdouble *X, in blasint incX);
  
  alias da_cblas_csscal = void function(in blasint N, in _cfloat alpha, _cfloat *X, in blasint incX);
  
  alias da_cblas_zdscal = void function(in blasint N, in _cdouble alpha, _cdouble *X, in blasint incX);

  
  alias da_cblas_sgemv = void function(in CBLAS_ORDER order,  in CBLAS_TRANSPOSE trans,  in blasint m, in blasint n, in float alpha, in float  *a, in blasint lda,  in float  *x, in blasint incx,  in float beta,  float  *y, in blasint incy);
  
  alias da_cblas_dgemv = void function(in CBLAS_ORDER order,  in CBLAS_TRANSPOSE trans,  in blasint m, in blasint n, in double alpha, in double  *a, in blasint lda,  in double  *x, in blasint incx,  in double beta,  double  *y, in blasint incy);
  
  alias da_cblas_cgemv = void function(in CBLAS_ORDER order,  in CBLAS_TRANSPOSE trans,  in blasint m, in blasint n, in _cfloat *alpha, in _cfloat  *a, in blasint lda,  in _cfloat  *x, in blasint incx,  in _cfloat *beta,  _cfloat  *y, in blasint incy);
  
  alias da_cblas_zgemv = void function(in CBLAS_ORDER order,  in CBLAS_TRANSPOSE trans,  in blasint m, in blasint n, in _cdouble *alpha, in _cdouble  *a, in blasint lda,  in _cdouble  *x, in blasint incx,  in _cdouble *beta,  _cdouble  *y, in blasint incy);

  
  alias da_cblas_sger = void function(in CBLAS_ORDER order, in blasint M, in blasint N, in float   alpha, in float  *X, in blasint incX, in float  *Y, in blasint incY, float  *A, in blasint lda);
  
  alias da_cblas_dger = void function(in CBLAS_ORDER order, in blasint M, in blasint N, in double  alpha, in double *X, in blasint incX, in double *Y, in blasint incY, double *A, in blasint lda);
  
  alias da_cblas_cgeru = void function(in CBLAS_ORDER order, in blasint M, in blasint N, in _cfloat  *alpha, in _cfloat  *X, in blasint incX, in _cfloat  *Y, in blasint incY, _cfloat  *A, in blasint lda);
  
  alias da_cblas_cgerc = void function(in CBLAS_ORDER order, in blasint M, in blasint N, in _cfloat  *alpha, in _cfloat  *X, in blasint incX, in _cfloat  *Y, in blasint incY, _cfloat  *A, in blasint lda);
  
  alias da_cblas_zgeru = void function(in CBLAS_ORDER order, in blasint M, in blasint N, in _cdouble *alpha, in _cdouble *X, in blasint incX, in _cdouble *Y, in blasint incY, _cdouble *A, in blasint lda);
  
  alias da_cblas_zgerc = void function(in CBLAS_ORDER order, in blasint M, in blasint N, in _cdouble *alpha, in _cdouble *X, in blasint incX, in _cdouble *Y, in blasint incY, _cdouble *A, in blasint lda);

  
  alias da_cblas_strsv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in float *A, in blasint lda, float *X, in blasint incX);
  
  alias da_cblas_dtrsv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in double *A, in blasint lda, double *X, in blasint incX);
  
  alias da_cblas_ctrsv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in _cfloat *A, in blasint lda, _cfloat *X, in blasint incX);
  
  alias da_cblas_ztrsv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in _cdouble *A, in blasint lda, _cdouble *X, in blasint incX);

  
  alias da_cblas_strmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in float *A, in blasint lda, float *X, in blasint incX);
  
  alias da_cblas_dtrmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in double *A, in blasint lda, double *X, in blasint incX);
  
  alias da_cblas_ctrmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in _cfloat *A, in blasint lda, _cfloat *X, in blasint incX);
  
  alias da_cblas_ztrmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in _cdouble *A, in blasint lda, _cdouble *X, in blasint incX);

  
  alias da_cblas_ssyr = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *X, in blasint incX, float *A, in blasint lda);
  
  alias da_cblas_dsyr = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *X, in blasint incX, double *A, in blasint lda);
  
  alias da_cblas_cher = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in _cfloat alpha, in _cfloat *X, in blasint incX, _cfloat *A, in blasint lda);
  
  alias da_cblas_zher = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in _cdouble alpha, in _cdouble *X, in blasint incX, _cdouble *A, in blasint lda);

  
  alias da_cblas_ssyr2 = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *X, in blasint incX, in float *Y, in blasint incY, float *A, in blasint lda);
  
  alias da_cblas_dsyr2 = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *X, in blasint incX, in double *Y, in blasint incY, double *A, in blasint lda);
  
  alias da_cblas_cher2 = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in _cfloat *alpha, in _cfloat *X, in blasint incX, in _cfloat *Y, in blasint incY, _cfloat *A, in blasint lda);
  
  alias da_cblas_zher2 = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in _cdouble *alpha, in _cdouble *X, in blasint incX, in _cdouble *Y, in blasint incY, _cdouble *A, in blasint lda);

  
  alias da_cblas_sgbmv = void function(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in blasint M, in blasint N, in blasint KL, in blasint KU, in float alpha, in float *A, in blasint lda, in float *X, in blasint incX, in float beta, float *Y, in blasint incY);
  
  alias da_cblas_dgbmv = void function(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in blasint M, in blasint N, in blasint KL, in blasint KU, in double alpha, in double *A, in blasint lda, in double *X, in blasint incX, in double beta, double *Y, in blasint incY);
  
  alias da_cblas_cgbmv = void function(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in blasint M, in blasint N, in blasint KL, in blasint KU, in _cfloat *alpha, in _cfloat *A, in blasint lda, in _cfloat *X, in blasint incX, in _cfloat *beta, _cfloat *Y, in blasint incY);
  
  alias da_cblas_zgbmv = void function(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in blasint M, in blasint N, in blasint KL, in blasint KU, in _cdouble *alpha, in _cdouble *A, in blasint lda, in _cdouble *X, in blasint incX, in _cdouble *beta, _cdouble *Y, in blasint incY);

  
  alias da_cblas_ssbmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in blasint K, in float alpha, in float *A, in blasint lda, in float *X, in blasint incX, in float beta, float *Y, in blasint incY);
  
  alias da_cblas_dsbmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in blasint K, in double alpha, in double *A, in blasint lda, in double *X, in blasint incX, in double beta, double *Y, in blasint incY);


  
  alias da_cblas_stbmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in float *A, in blasint lda, float *X, in blasint incX);
  
  alias da_cblas_dtbmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in double *A, in blasint lda, double *X, in blasint incX);
  
  alias da_cblas_ctbmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in _cfloat *A, in blasint lda, _cfloat *X, in blasint incX);
  
  alias da_cblas_ztbmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in _cdouble *A, in blasint lda, _cdouble *X, in blasint incX);

  
  alias da_cblas_stbsv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in float *A, in blasint lda, float *X, in blasint incX);
  
  alias da_cblas_dtbsv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in double *A, in blasint lda, double *X, in blasint incX);
  
  alias da_cblas_ctbsv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in _cfloat *A, in blasint lda, _cfloat *X, in blasint incX);
  
  alias da_cblas_ztbsv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in blasint K, in _cdouble *A, in blasint lda, _cdouble *X, in blasint incX);

  
  alias da_cblas_stpmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in float *Ap, float *X, in blasint incX);
  
  alias da_cblas_dtpmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in double *Ap, double *X, in blasint incX);
  
  alias da_cblas_ctpmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in _cfloat *Ap, _cfloat *X, in blasint incX);
  
  alias da_cblas_ztpmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in _cdouble *Ap, _cdouble *X, in blasint incX);

  
  alias da_cblas_stpsv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in float *Ap, float *X, in blasint incX);
  
  alias da_cblas_dtpsv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in double *Ap, double *X, in blasint incX);
  
  alias da_cblas_ctpsv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in _cfloat *Ap, _cfloat *X, in blasint incX);
  
  alias da_cblas_ztpsv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint N, in _cdouble *Ap, _cdouble *X, in blasint incX);

  
  alias da_cblas_ssymv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *A, in blasint lda, in float *X, in blasint incX, in float beta, float *Y, in blasint incY);
  
  alias da_cblas_dsymv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *A, in blasint lda, in double *X, in blasint incX, in double beta, double *Y, in blasint incY);
  
  alias da_cblas_chemv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in _cfloat *alpha, in _cfloat *A, in blasint lda, in _cfloat *X, in blasint incX, in _cfloat *beta, _cfloat *Y, in blasint incY);
  
  alias da_cblas_zhemv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in _cdouble *alpha, in _cdouble *A, in blasint lda, in _cdouble *X, in blasint incX, in _cdouble *beta, _cdouble *Y, in blasint incY);


  
  alias da_cblas_sspmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *Ap, in float *X, in blasint incX, in float beta, float *Y, in blasint incY);
  
  alias da_cblas_dspmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *Ap, in double *X, in blasint incX, in double beta, double *Y, in blasint incY);

  
  alias da_cblas_sspr = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *X, in blasint incX, float *Ap);
  
  alias da_cblas_dspr = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *X, in blasint incX, double *Ap);

  
  alias da_cblas_chpr = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *X, in blasint incX, float *A);
  
  alias da_cblas_zhpr = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *X, in blasint incX, double *A);

  
  alias da_cblas_sspr2 = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float alpha, in float *X, in blasint incX, in float *Y, in blasint incY, float *A);
  
  alias da_cblas_dspr2 = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double alpha, in double *X, in blasint incX, in double *Y, in blasint incY, double *A);
  
  alias da_cblas_chpr2 = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in _cfloat *alpha, in _cfloat *X, in blasint incX, in _cfloat *Y, in blasint incY, _cfloat *Ap);
  
  alias da_cblas_zhpr2 = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in _cdouble *alpha, in _cdouble *X, in blasint incX, in _cdouble *Y, in blasint incY, _cdouble *Ap);

  
  alias da_cblas_chbmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in blasint K, in float *alpha, in float *A, in blasint lda, in float *X, in blasint incX, in float *beta, float *Y, in blasint incY);
  
  alias da_cblas_zhbmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in blasint K, in double *alpha, in double *A, in blasint lda, in double *X, in blasint incX, in double *beta, double *Y, in blasint incY);

  
  alias da_cblas_chpmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in float *alpha, in float *Ap, in float *X, in blasint incX, in float *beta, float *Y, in blasint incY);
  
  alias da_cblas_zhpmv = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in blasint N, in double *alpha, in double *Ap, in double *X, in blasint incX, in double *beta, double *Y, in blasint incY);

  
  alias da_cblas_sgemm = void function(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in CBLAS_TRANSPOSE TransB, in blasint M, in blasint N, in blasint K, in float alpha, in float *A, in blasint lda, in float *B, in blasint ldb, in float beta, float *C, in blasint ldc);
  
  alias da_cblas_dgemm = void function(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in CBLAS_TRANSPOSE TransB, in blasint M, in blasint N, in blasint K, in double alpha, in double *A, in blasint lda, in double *B, in blasint ldb, in double beta, double *C, in blasint ldc);
  
  alias da_cblas_cgemm = void function(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in CBLAS_TRANSPOSE TransB, in blasint M, in blasint N, in blasint K, in _cfloat *alpha, in _cfloat *A, in blasint lda, in _cfloat *B, in blasint ldb, in _cfloat *beta, _cfloat *C, in blasint ldc);
  
  alias da_cblas_zgemm = void function(in CBLAS_ORDER order, in CBLAS_TRANSPOSE TransA, in CBLAS_TRANSPOSE TransB, in blasint M, in blasint N, in blasint K, in _cdouble *alpha, in _cdouble *A, in blasint lda, in _cdouble *B, in blasint ldb, in _cdouble *beta, _cdouble *C, in blasint ldc);

  
  alias da_cblas_ssymm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in blasint M, in blasint N, in float alpha, in float *A, in blasint lda, in float *B, in blasint ldb, in float beta, float *C, in blasint ldc);
  
  alias da_cblas_dsymm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in blasint M, in blasint N, in double alpha, in double *A, in blasint lda, in double *B, in blasint ldb, in double beta, double *C, in blasint ldc);
  
  alias da_cblas_csymm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in blasint M, in blasint N, in _cfloat *alpha, in _cfloat *A, in blasint lda, in _cfloat *B, in blasint ldb, in _cfloat *beta, _cfloat *C, in blasint ldc);
  
  alias da_cblas_zsymm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in blasint M, in blasint N, in _cdouble *alpha, in _cdouble *A, in blasint lda, in _cdouble *B, in blasint ldb, in _cdouble *beta, _cdouble *C, in blasint ldc);

  
  alias da_cblas_ssyrk = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in float alpha, in float *A, in blasint lda, in float beta, float *C, in blasint ldc);
  
  alias da_cblas_dsyrk = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in double alpha, in double *A, in blasint lda, in double beta, double *C, in blasint ldc); 
  
  alias da_cblas_csyrk = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in _cfloat *alpha, in _cfloat *A, in blasint lda, in _cfloat *beta, _cfloat *C, in blasint ldc);
  
  alias da_cblas_zsyrk = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in _cdouble *alpha, in _cdouble *A, in blasint lda, in _cdouble *beta, _cdouble *C, in blasint ldc);

  
  alias da_cblas_ssyr2k = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in float alpha, in float *A, in blasint lda, in float *B, in blasint ldb, in float beta, float *C, in blasint ldc);
  
  alias da_cblas_dsyr2k = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in double alpha, in double *A, in blasint lda, in double *B, in blasint ldb, in double beta, double *C, in blasint ldc);
  
  alias da_cblas_csyr2k = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in _cfloat *alpha, in _cfloat *A, in blasint lda, in _cfloat *B, in blasint ldb, in _cfloat *beta, _cfloat *C, in blasint ldc);
  
  alias da_cblas_zsyr2k = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in _cdouble *alpha, in _cdouble *A, in blasint lda, in _cdouble *B, in blasint ldb, in _cdouble *beta, _cdouble *C, in blasint ldc);

  
  alias da_cblas_strmm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in float alpha, in float *A, in blasint lda, float *B, in blasint ldb);
  
  alias da_cblas_dtrmm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in double alpha, in double *A, in blasint lda, double *B, in blasint ldb);
  
  alias da_cblas_ctrmm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in _cfloat *alpha, in _cfloat *A, in blasint lda, _cfloat *B, in blasint ldb);
  
  alias da_cblas_ztrmm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in _cdouble *alpha, in _cdouble *A, in blasint lda, _cdouble *B, in blasint ldb);

  
  alias da_cblas_strsm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in float alpha, in float *A, in blasint lda, float *B, in blasint ldb);
  
  alias da_cblas_dtrsm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in double alpha, in double *A, in blasint lda, double *B, in blasint ldb);
  
  alias da_cblas_ctrsm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in _cfloat *alpha, in _cfloat *A, in blasint lda, _cfloat *B, in blasint ldb);
  
  alias da_cblas_ztrsm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE TransA, in CBLAS_DIAG Diag, in blasint M, in blasint N, in _cdouble *alpha, in _cdouble *A, in blasint lda, _cdouble *B, in blasint ldb);

  
  alias da_cblas_chemm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in blasint M, in blasint N, in float *alpha, in float *A, in blasint lda, in float *B, in blasint ldb, in float *beta, float *C, in blasint ldc);
  
  alias da_cblas_zhemm = void function(in CBLAS_ORDER order, in CBLAS_SIDE Side, in CBLAS_UPLO Uplo, in blasint M, in blasint N, in double *alpha, in double *A, in blasint lda, in double *B, in blasint ldb, in double *beta, double *C, in blasint ldc);

  
  alias da_cblas_cherk = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in float alpha, in float *A, in blasint lda, in float beta, float *C, in blasint ldc);
  
  alias da_cblas_zherk = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in double alpha, in double *A, in blasint lda, in double beta, double *C, in blasint ldc);

  
  alias da_cblas_cher2k = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in float *alpha, in float *A, in blasint lda, in float *B, in blasint ldb, in float beta, float *C, in blasint ldc);
  
  alias da_cblas_zher2k = void function(in CBLAS_ORDER order, in CBLAS_UPLO Uplo, in CBLAS_TRANSPOSE Trans, in blasint N, in blasint K, in double *alpha, in double *A, in blasint lda, in double *B, in blasint ldb, in double beta, double *C, in blasint ldc);

  
  alias da_cblas_xerbla = void function(blasint p, char *rout, char *form, ...);
}

__gshared{
  da_cblas_sdsdot cblas_sdsdot;
  
  da_cblas_dsdot cblas_dsdot;
  
  da_cblas_sdot cblas_sdot;
  
  da_cblas_ddot cblas_ddot;

  
  da_cblas_cdotu cblas_cdotu;
  
  da_cblas_cdotc cblas_cdotc;
  
  da_cblas_zdotu cblas_zdotu;
  
  da_cblas_zdotc cblas_zdotc;

  
  da_cblas_cdotu_sub cblas_cdotu_sub;
  
  da_cblas_cdotc_sub cblas_cdotc_sub;
  
  da_cblas_zdotu_sub cblas_zdotu_sub;
  
  da_cblas_zdotc_sub cblas_zdotc_sub;

  
  da_cblas_sasum cblas_sasum;
  
  da_cblas_dasum cblas_dasum;
  
  da_cblas_scasum cblas_scasum;
  
  da_cblas_dzasum cblas_dzasum;

  
  da_cblas_snrm2 cblas_snrm2;
  
  da_cblas_dnrm2 cblas_dnrm2;
  
  da_cblas_scnrm2 cblas_scnrm2;
  
  da_cblas_dznrm2 cblas_dznrm2;

  
  da_cblas_isamax cblas_isamax;
  
  da_cblas_idamax cblas_idamax;
  
  da_cblas_icamax cblas_icamax;
  
  da_cblas_izamax cblas_izamax;

  
  da_cblas_saxpy cblas_saxpy;
  
  da_cblas_daxpy cblas_daxpy;
  
  da_cblas_caxpy cblas_caxpy;
  
  da_cblas_zaxpy cblas_zaxpy;

  
  da_cblas_scopy cblas_scopy;
  
  da_cblas_dcopy cblas_dcopy;
  
  da_cblas_ccopy cblas_ccopy;
  
  da_cblas_zcopy cblas_zcopy;

  
  da_cblas_sswap cblas_sswap;
  
  da_cblas_dswap cblas_dswap;
  
  da_cblas_cswap cblas_cswap;
  
  da_cblas_zswap cblas_zswap;

  
  da_cblas_srot cblas_srot;
  
  da_cblas_drot cblas_drot;

  da_cblas_srotg cblas_srotg;
  da_cblas_drotg cblas_drotg;

  
  da_cblas_srotm cblas_srotm;
  
  da_cblas_drotm cblas_drotm;

  da_cblas_srotmg cblas_srotmg;
  da_cblas_drotmg cblas_drotmg;

  
  da_cblas_sscal cblas_sscal;
  
  da_cblas_dscal cblas_dscal;
  
  da_cblas_cscal cblas_cscal;
  
  da_cblas_zscal cblas_zscal;
  
  da_cblas_csscal cblas_csscal;
  
  da_cblas_zdscal cblas_zdscal;

  
  da_cblas_sgemv cblas_sgemv;
  
  da_cblas_dgemv cblas_dgemv;
  
  da_cblas_cgemv cblas_cgemv;
  
  da_cblas_zgemv cblas_zgemv;

  
  da_cblas_sger cblas_sger;
  
  da_cblas_dger cblas_dger;
  
  da_cblas_cgeru cblas_cgeru;
  
  da_cblas_cgerc cblas_cgerc;
  
  da_cblas_zgeru cblas_zgeru;
  
  da_cblas_zgerc cblas_zgerc;

  
  da_cblas_strsv cblas_strsv;
  
  da_cblas_dtrsv cblas_dtrsv;
  
  da_cblas_ctrsv cblas_ctrsv;
  
  da_cblas_ztrsv cblas_ztrsv;

  
  da_cblas_strmv cblas_strmv;
  
  da_cblas_dtrmv cblas_dtrmv;
  
  da_cblas_ctrmv cblas_ctrmv;
  
  da_cblas_ztrmv cblas_ztrmv;

  
  da_cblas_ssyr cblas_ssyr;
  
  da_cblas_dsyr cblas_dsyr;
  
  da_cblas_cher cblas_cher;
  
  da_cblas_zher cblas_zher;

  
  da_cblas_ssyr2 cblas_ssyr2;
  
  da_cblas_dsyr2 cblas_dsyr2;
  
  da_cblas_cher2 cblas_cher2;
  
  da_cblas_zher2 cblas_zher2;

  
  da_cblas_sgbmv cblas_sgbmv;
  
  da_cblas_dgbmv cblas_dgbmv;
  
  da_cblas_cgbmv cblas_cgbmv;
  
  da_cblas_zgbmv cblas_zgbmv;

  
  da_cblas_ssbmv cblas_ssbmv;
  
  da_cblas_dsbmv cblas_dsbmv;


  
  da_cblas_stbmv cblas_stbmv;
  
  da_cblas_dtbmv cblas_dtbmv;
  
  da_cblas_ctbmv cblas_ctbmv;
  
  da_cblas_ztbmv cblas_ztbmv;

  
  da_cblas_stbsv cblas_stbsv;
  
  da_cblas_dtbsv cblas_dtbsv;
  
  da_cblas_ctbsv cblas_ctbsv;
  
  da_cblas_ztbsv cblas_ztbsv;

  
  da_cblas_stpmv cblas_stpmv;
  
  da_cblas_dtpmv cblas_dtpmv;
  
  da_cblas_ctpmv cblas_ctpmv;
  
  da_cblas_ztpmv cblas_ztpmv;

  
  da_cblas_stpsv cblas_stpsv;
  
  da_cblas_dtpsv cblas_dtpsv;
  
  da_cblas_ctpsv cblas_ctpsv;
  
  da_cblas_ztpsv cblas_ztpsv;

  
  da_cblas_ssymv cblas_ssymv;
  
  da_cblas_dsymv cblas_dsymv;
  
  da_cblas_chemv cblas_chemv;
  
  da_cblas_zhemv cblas_zhemv;


  
  da_cblas_sspmv cblas_sspmv;
  
  da_cblas_dspmv cblas_dspmv;

  
  da_cblas_sspr cblas_sspr;
  
  da_cblas_dspr cblas_dspr;

  
  da_cblas_chpr cblas_chpr;
  
  da_cblas_zhpr cblas_zhpr;

  
  da_cblas_sspr2 cblas_sspr2;
  
  da_cblas_dspr2 cblas_dspr2;
  
  da_cblas_chpr2 cblas_chpr2;
  
  da_cblas_zhpr2 cblas_zhpr2;

  
  da_cblas_chbmv cblas_chbmv;
  
  da_cblas_zhbmv cblas_zhbmv;

  
  da_cblas_chpmv cblas_chpmv;
  
  da_cblas_zhpmv cblas_zhpmv;

  
  da_cblas_sgemm cblas_sgemm;
  
  da_cblas_dgemm cblas_dgemm;
  
  da_cblas_cgemm cblas_cgemm;
  
  da_cblas_zgemm cblas_zgemm;

  
  da_cblas_ssymm cblas_ssymm;
  
  da_cblas_dsymm cblas_dsymm;
  
  da_cblas_csymm cblas_csymm;
  
  da_cblas_zsymm cblas_zsymm;

  
  da_cblas_ssyrk cblas_ssyrk;
  
  da_cblas_dsyrk cblas_dsyrk;
  
  da_cblas_csyrk cblas_csyrk;
  
  da_cblas_zsyrk cblas_zsyrk;

  
  da_cblas_ssyr2k cblas_ssyr2k;
  
  da_cblas_dsyr2k cblas_dsyr2k;
  
  da_cblas_csyr2k cblas_csyr2k;
  
  da_cblas_zsyr2k cblas_zsyr2k;

  
  da_cblas_strmm cblas_strmm;
  
  da_cblas_dtrmm cblas_dtrmm;
  
  da_cblas_ctrmm cblas_ctrmm;
  
  da_cblas_ztrmm cblas_ztrmm;

  
  da_cblas_strsm cblas_strsm;
  
  da_cblas_dtrsm cblas_dtrsm;
  
  da_cblas_ctrsm cblas_ctrsm;
  
  da_cblas_ztrsm cblas_ztrsm;

  
  da_cblas_chemm cblas_chemm;
  
  da_cblas_zhemm cblas_zhemm;

  
  da_cblas_cherk cblas_cherk;
  
  da_cblas_zherk cblas_zherk;

  
  da_cblas_cher2k cblas_cher2k;
  
  da_cblas_zher2k cblas_zher2k;

  
  da_cblas_xerbla cblas_xerbla;
}