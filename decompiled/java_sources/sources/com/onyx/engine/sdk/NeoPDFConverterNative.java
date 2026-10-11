package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public class NeoPDFConverterNative {
    private int bookSize;
    private long formatHandle;
    private long handle;

    public NeoPDFConverterNative(long j, int i) {
        this.formatHandle = j;
        this.bookSize = i;
    }

    private native void nativeClose(long j);

    private native boolean nativeConvertPage(long j, String str);

    private native boolean nativeHasNextPage(long j, String str);

    private native String nativeNextPage(long j, String str);

    private native long nativeStartConvert(long j, String str);

    private native boolean nativeWritePDF(long j);

    public void close() {
        long j = this.handle;
        if (j != 0) {
            nativeClose(j);
            this.handle = 0L;
        }
    }

    public boolean convertPage(PageInfo pageInfo) {
        return nativeConvertPage(this.handle, pageInfo.toJson());
    }

    public boolean hasNextPage(PageInfo pageInfo) {
        if (pageInfo.getStartPositionInt() < 0 || pageInfo.getEndPositionInt() >= this.bookSize) {
            return nativeHasNextPage(this.handle, pageInfo.toJson());
        }
        return true;
    }

    public PageInfo nextPage(PageInfo pageInfo) {
        return PageInfo.fromJson(nativeNextPage(this.handle, pageInfo.toJson()));
    }

    public boolean startConvert(String str, String str2) {
        return startConvert(new PDFConvertParameter(str, str2));
    }

    public boolean writePDF() {
        return nativeWritePDF(this.handle);
    }

    public boolean startConvert(PDFConvertParameter pDFConvertParameter) {
        long nativeStartConvert = nativeStartConvert(this.formatHandle, pDFConvertParameter.toJson());
        this.handle = nativeStartConvert;
        return nativeStartConvert != 0;
    }
}
