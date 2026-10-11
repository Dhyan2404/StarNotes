package org.apache.commons.compress.compressors.deflate;

/* loaded from: classes12.dex */
public class DeflateParameters {

    /* renamed from: c */
    public static final int f106104c = 9;

    /* renamed from: d */
    public static final int f106105d = 0;

    /* renamed from: a */
    public boolean f106106a = true;

    /* renamed from: b */
    public int f106107b = -1;

    public int getCompressionLevel() {
        return this.f106107b;
    }

    public void setCompressionLevel(int i) {
        if (i >= 0 && i <= 9) {
            this.f106107b = i;
            return;
        }
        throw new IllegalArgumentException("Invalid Deflate compression level: " + i);
    }

    public void setWithZlibHeader(boolean z) {
        this.f106106a = z;
    }

    public boolean withZlibHeader() {
        return this.f106106a;
    }
}
