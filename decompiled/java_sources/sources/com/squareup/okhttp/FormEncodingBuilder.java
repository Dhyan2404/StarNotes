package com.squareup.okhttp;

import okio.Buffer;

/* loaded from: classes9.dex */
public final class FormEncodingBuilder {

    /* renamed from: b */
    public static final MediaType f63520b = MediaType.parse("application/x-www-form-urlencoded");

    /* renamed from: a */
    public final Buffer f63521a = new Buffer();

    public FormEncodingBuilder add(String str, String str2) {
        if (this.f63521a.size() > 0) {
            this.f63521a.writeByte(38);
        }
        HttpUrl.m52528g(this.f63521a, str, 0, str.length(), " \"'<>#&=", false, true);
        this.f63521a.writeByte(61);
        HttpUrl.m52528g(this.f63521a, str2, 0, str2.length(), " \"'<>#&=", false, true);
        return this;
    }

    public FormEncodingBuilder addEncoded(String str, String str2) {
        if (this.f63521a.size() > 0) {
            this.f63521a.writeByte(38);
        }
        HttpUrl.m52528g(this.f63521a, str, 0, str.length(), " \"'<>#&=", true, true);
        this.f63521a.writeByte(61);
        HttpUrl.m52528g(this.f63521a, str2, 0, str2.length(), " \"'<>#&=", true, true);
        return this;
    }

    public RequestBody build() {
        if (this.f63521a.size() != 0) {
            return RequestBody.create(f63520b, this.f63521a.snapshot());
        }
        throw new IllegalStateException("Form encoded body must have at least one part.");
    }
}
