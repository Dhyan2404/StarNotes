package org.jsoup;

import java.io.IOException;

/* loaded from: classes13.dex */
public class UnsupportedMimeTypeException extends IOException {

    /* renamed from: a */
    private String f113973a;

    /* renamed from: b */
    private String f113974b;

    public UnsupportedMimeTypeException(String str, String str2, String str3) {
        super(str);
        this.f113973a = str2;
        this.f113974b = str3;
    }

    public String getMimeType() {
        return this.f113973a;
    }

    public String getUrl() {
        return this.f113974b;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ". Mimetype=" + this.f113973a + ", URL=" + this.f113974b;
    }
}
