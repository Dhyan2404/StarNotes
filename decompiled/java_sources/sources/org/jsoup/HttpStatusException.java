package org.jsoup;

import java.io.IOException;

/* loaded from: classes13.dex */
public class HttpStatusException extends IOException {

    /* renamed from: a */
    private int f113971a;

    /* renamed from: b */
    private String f113972b;

    public HttpStatusException(String str, int i, String str2) {
        super(str);
        this.f113971a = i;
        this.f113972b = str2;
    }

    public int getStatusCode() {
        return this.f113971a;
    }

    public String getUrl() {
        return this.f113972b;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ". Status=" + this.f113971a + ", URL=" + this.f113972b;
    }
}
