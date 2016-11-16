module derelict.blas.loader;

import derelict.blas.functions;
import derelict.blas.types;

private{
  import std.algorithm;
  import std.conv;

  import derelict.util.loader;
  import derelict.util.exception;
  import derelict.util.system;

  static if(Derelict_OS_Posix){
    enum libNames = "libcblas.so";
  }else{
    static assert(0, "Need to implement CBLAS libNames for this operating system.");
  }
}


__gshared DerelictBLASLoader DerelictBLAS;

shared static this(){
  DerelictBLAS = new DerelictBLASLoader;
}


class DerelictBLASLoader : SharedLibLoader{

  public this(){
    super(libNames);
  }

  protected override void loadSymbols(){
    
    bindFunc(cast(void**)&cblas_sdsdot, "cblas_sdsdot");
    
    bindFunc(cast(void**)&cblas_dsdot, "cblas_dsdot");
    
    bindFunc(cast(void**)&cblas_sdot, "cblas_sdot");
    
    bindFunc(cast(void**)&cblas_ddot, "cblas_ddot");

    //BUG:Failed to find symbol
    //bindFunc(cast(void**)&cblas_cdotu, "cblas_cdotu");
    
    //bindFunc(cast(void**)&cblas_cdotc, "cblas_cdotc");
    
    //bindFunc(cast(void**)&cblas_zdotu, "cblas_zdotu");
    
    //bindFunc(cast(void**)&cblas_zdotc, "cblas_zdotc");

    
    bindFunc(cast(void**)&cblas_cdotu_sub, "cblas_cdotu_sub");
    
    bindFunc(cast(void**)&cblas_cdotc_sub, "cblas_cdotc_sub");
    
    bindFunc(cast(void**)&cblas_zdotu_sub, "cblas_zdotu_sub");
    
    bindFunc(cast(void**)&cblas_zdotc_sub, "cblas_zdotc_sub");

    
    bindFunc(cast(void**)&cblas_sasum, "cblas_sasum");
    
    bindFunc(cast(void**)&cblas_dasum, "cblas_dasum");
    
    bindFunc(cast(void**)&cblas_scasum, "cblas_scasum");
    
    bindFunc(cast(void**)&cblas_dzasum, "cblas_dzasum");

    
    bindFunc(cast(void**)&cblas_snrm2, "cblas_snrm2");
    
    bindFunc(cast(void**)&cblas_dnrm2, "cblas_dnrm2");
    
    bindFunc(cast(void**)&cblas_scnrm2, "cblas_scnrm2");
    
    bindFunc(cast(void**)&cblas_dznrm2, "cblas_dznrm2");

    
    bindFunc(cast(void**)&cblas_isamax, "cblas_isamax");
    
    bindFunc(cast(void**)&cblas_idamax, "cblas_idamax");
    
    bindFunc(cast(void**)&cblas_icamax, "cblas_icamax");
    
    bindFunc(cast(void**)&cblas_izamax, "cblas_izamax");

    
    bindFunc(cast(void**)&cblas_saxpy, "cblas_saxpy");
    
    bindFunc(cast(void**)&cblas_daxpy, "cblas_daxpy");
    
    bindFunc(cast(void**)&cblas_caxpy, "cblas_caxpy");
    
    bindFunc(cast(void**)&cblas_zaxpy, "cblas_zaxpy");

    
    bindFunc(cast(void**)&cblas_scopy, "cblas_scopy");
    
    bindFunc(cast(void**)&cblas_dcopy, "cblas_dcopy");
    
    bindFunc(cast(void**)&cblas_ccopy, "cblas_ccopy");
    
    bindFunc(cast(void**)&cblas_zcopy, "cblas_zcopy");

    
    bindFunc(cast(void**)&cblas_sswap, "cblas_sswap");
    
    bindFunc(cast(void**)&cblas_dswap, "cblas_dswap");
    
    bindFunc(cast(void**)&cblas_cswap, "cblas_cswap");
    
    bindFunc(cast(void**)&cblas_zswap, "cblas_zswap");

    
    bindFunc(cast(void**)&cblas_srot, "cblas_srot");
    
    bindFunc(cast(void**)&cblas_drot, "cblas_drot");

    bindFunc(cast(void**)&cblas_srotg, "cblas_srotg");
    bindFunc(cast(void**)&cblas_drotg, "cblas_drotg");

    
    bindFunc(cast(void**)&cblas_srotm, "cblas_srotm");
    
    bindFunc(cast(void**)&cblas_drotm, "cblas_drotm");

    bindFunc(cast(void**)&cblas_srotmg, "cblas_srotmg");
    bindFunc(cast(void**)&cblas_drotmg, "cblas_drotmg");

    
    bindFunc(cast(void**)&cblas_sscal, "cblas_sscal");
    
    bindFunc(cast(void**)&cblas_dscal, "cblas_dscal");
    
    bindFunc(cast(void**)&cblas_cscal, "cblas_cscal");
    
    bindFunc(cast(void**)&cblas_zscal, "cblas_zscal");
    
    bindFunc(cast(void**)&cblas_csscal, "cblas_csscal");
    
    bindFunc(cast(void**)&cblas_zdscal, "cblas_zdscal");

    
    bindFunc(cast(void**)&cblas_sgemv, "cblas_sgemv");
    
    bindFunc(cast(void**)&cblas_dgemv, "cblas_dgemv");
    
    bindFunc(cast(void**)&cblas_cgemv, "cblas_cgemv");
    
    bindFunc(cast(void**)&cblas_zgemv, "cblas_zgemv");

    
    bindFunc(cast(void**)&cblas_sger, "cblas_sger");
    
    bindFunc(cast(void**)&cblas_dger, "cblas_dger");
    
    bindFunc(cast(void**)&cblas_cgeru, "cblas_cgeru");
    
    bindFunc(cast(void**)&cblas_cgerc, "cblas_cgerc");
    
    bindFunc(cast(void**)&cblas_zgeru, "cblas_zgeru");
    
    bindFunc(cast(void**)&cblas_zgerc, "cblas_zgerc");

    
    bindFunc(cast(void**)&cblas_strsv, "cblas_strsv");
    
    bindFunc(cast(void**)&cblas_dtrsv, "cblas_dtrsv");
    
    bindFunc(cast(void**)&cblas_ctrsv, "cblas_ctrsv");
    
    bindFunc(cast(void**)&cblas_ztrsv, "cblas_ztrsv");

    
    bindFunc(cast(void**)&cblas_strmv, "cblas_strmv");
    
    bindFunc(cast(void**)&cblas_dtrmv, "cblas_dtrmv");
    
    bindFunc(cast(void**)&cblas_ctrmv, "cblas_ctrmv");
    
    bindFunc(cast(void**)&cblas_ztrmv, "cblas_ztrmv");

    
    bindFunc(cast(void**)&cblas_ssyr, "cblas_ssyr");
    
    bindFunc(cast(void**)&cblas_dsyr, "cblas_dsyr");
    
    bindFunc(cast(void**)&cblas_cher, "cblas_cher");
    
    bindFunc(cast(void**)&cblas_zher, "cblas_zher");

    
    bindFunc(cast(void**)&cblas_ssyr2, "cblas_ssyr2");
    
    bindFunc(cast(void**)&cblas_dsyr2, "cblas_dsyr2");
    
    bindFunc(cast(void**)&cblas_cher2, "cblas_cher2");
    
    bindFunc(cast(void**)&cblas_zher2, "cblas_zher2");

    
    bindFunc(cast(void**)&cblas_sgbmv, "cblas_sgbmv");
    
    bindFunc(cast(void**)&cblas_dgbmv, "cblas_dgbmv");
    
    bindFunc(cast(void**)&cblas_cgbmv, "cblas_cgbmv");
    
    bindFunc(cast(void**)&cblas_zgbmv, "cblas_zgbmv");

    
    bindFunc(cast(void**)&cblas_ssbmv, "cblas_ssbmv");
    
    bindFunc(cast(void**)&cblas_dsbmv, "cblas_dsbmv");


    
    bindFunc(cast(void**)&cblas_stbmv, "cblas_stbmv");
    
    bindFunc(cast(void**)&cblas_dtbmv, "cblas_dtbmv");
    
    bindFunc(cast(void**)&cblas_ctbmv, "cblas_ctbmv");
    
    bindFunc(cast(void**)&cblas_ztbmv, "cblas_ztbmv");

    
    bindFunc(cast(void**)&cblas_stbsv, "cblas_stbsv");
    
    bindFunc(cast(void**)&cblas_dtbsv, "cblas_dtbsv");
    
    bindFunc(cast(void**)&cblas_ctbsv, "cblas_ctbsv");
    
    bindFunc(cast(void**)&cblas_ztbsv, "cblas_ztbsv");

    
    bindFunc(cast(void**)&cblas_stpmv, "cblas_stpmv");
    
    bindFunc(cast(void**)&cblas_dtpmv, "cblas_dtpmv");
    
    bindFunc(cast(void**)&cblas_ctpmv, "cblas_ctpmv");
    
    bindFunc(cast(void**)&cblas_ztpmv, "cblas_ztpmv");

    
    bindFunc(cast(void**)&cblas_stpsv, "cblas_stpsv");
    
    bindFunc(cast(void**)&cblas_dtpsv, "cblas_dtpsv");
    
    bindFunc(cast(void**)&cblas_ctpsv, "cblas_ctpsv");
    
    bindFunc(cast(void**)&cblas_ztpsv, "cblas_ztpsv");

    
    bindFunc(cast(void**)&cblas_ssymv, "cblas_ssymv");
    
    bindFunc(cast(void**)&cblas_dsymv, "cblas_dsymv");
    
    bindFunc(cast(void**)&cblas_chemv, "cblas_chemv");
    
    bindFunc(cast(void**)&cblas_zhemv, "cblas_zhemv");


    
    bindFunc(cast(void**)&cblas_sspmv, "cblas_sspmv");
    
    bindFunc(cast(void**)&cblas_dspmv, "cblas_dspmv");

    
    bindFunc(cast(void**)&cblas_sspr, "cblas_sspr");
    
    bindFunc(cast(void**)&cblas_dspr, "cblas_dspr");

    
    bindFunc(cast(void**)&cblas_chpr, "cblas_chpr");
    
    bindFunc(cast(void**)&cblas_zhpr, "cblas_zhpr");

    
    bindFunc(cast(void**)&cblas_sspr2, "cblas_sspr2");
    
    bindFunc(cast(void**)&cblas_dspr2, "cblas_dspr2");
    
    bindFunc(cast(void**)&cblas_chpr2, "cblas_chpr2");
    
    bindFunc(cast(void**)&cblas_zhpr2, "cblas_zhpr2");

    
    bindFunc(cast(void**)&cblas_chbmv, "cblas_chbmv");
    
    bindFunc(cast(void**)&cblas_zhbmv, "cblas_zhbmv");

    
    bindFunc(cast(void**)&cblas_chpmv, "cblas_chpmv");
    
    bindFunc(cast(void**)&cblas_zhpmv, "cblas_zhpmv");

    
    bindFunc(cast(void**)&cblas_sgemm, "cblas_sgemm");
    
    bindFunc(cast(void**)&cblas_dgemm, "cblas_dgemm");
    
    bindFunc(cast(void**)&cblas_cgemm, "cblas_cgemm");
    
    bindFunc(cast(void**)&cblas_zgemm, "cblas_zgemm");

    
    bindFunc(cast(void**)&cblas_ssymm, "cblas_ssymm");
    
    bindFunc(cast(void**)&cblas_dsymm, "cblas_dsymm");
    
    bindFunc(cast(void**)&cblas_csymm, "cblas_csymm");
    
    bindFunc(cast(void**)&cblas_zsymm, "cblas_zsymm");

    
    bindFunc(cast(void**)&cblas_ssyrk, "cblas_ssyrk");
    
    bindFunc(cast(void**)&cblas_dsyrk, "cblas_dsyrk");
    
    bindFunc(cast(void**)&cblas_csyrk, "cblas_csyrk");
    
    bindFunc(cast(void**)&cblas_zsyrk, "cblas_zsyrk");

    
    bindFunc(cast(void**)&cblas_ssyr2k, "cblas_ssyr2k");
    
    bindFunc(cast(void**)&cblas_dsyr2k, "cblas_dsyr2k");
    
    bindFunc(cast(void**)&cblas_csyr2k, "cblas_csyr2k");
    
    bindFunc(cast(void**)&cblas_zsyr2k, "cblas_zsyr2k");

    
    bindFunc(cast(void**)&cblas_strmm, "cblas_strmm");
    
    bindFunc(cast(void**)&cblas_dtrmm, "cblas_dtrmm");
    
    bindFunc(cast(void**)&cblas_ctrmm, "cblas_ctrmm");
    
    bindFunc(cast(void**)&cblas_ztrmm, "cblas_ztrmm");

    
    bindFunc(cast(void**)&cblas_strsm, "cblas_strsm");
    
    bindFunc(cast(void**)&cblas_dtrsm, "cblas_dtrsm");
    
    bindFunc(cast(void**)&cblas_ctrsm, "cblas_ctrsm");
    
    bindFunc(cast(void**)&cblas_ztrsm, "cblas_ztrsm");

    
    bindFunc(cast(void**)&cblas_chemm, "cblas_chemm");
    
    bindFunc(cast(void**)&cblas_zhemm, "cblas_zhemm");

    
    bindFunc(cast(void**)&cblas_cherk, "cblas_cherk");
    
    bindFunc(cast(void**)&cblas_zherk, "cblas_zherk");

    
    bindFunc(cast(void**)&cblas_cher2k, "cblas_cher2k");
    
    bindFunc(cast(void**)&cblas_zher2k, "cblas_zher2k");

    
    bindFunc(cast(void**)&cblas_xerbla, "cblas_xerbla");
  }
}