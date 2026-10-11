package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.ResponseBody;
import okio.BufferedSource;

/* loaded from: classes9.dex */
public final class RealResponseBody extends ResponseBody {

    /* renamed from: f */
    public final Headers f63811f;

    /* renamed from: g */
    public final BufferedSource f63812g;

    public RealResponseBody(Headers headers, BufferedSource bufferedSource) {
        this.f63811f = headers;
        this.f63812g = bufferedSource;
    }

    @Override // com.squareup.okhttp.ResponseBody
    public long contentLength() {
        return OkHeaders.contentLength(this.f63811f);
    }

    @Override // com.squareup.okhttp.ResponseBody
    public MediaType contentType() {
        String str = this.f63811f.get("Content-Type");
        if (str != null) {
            return MediaType.parse(str);
        }
        return null;
    }

    @Override // com.squareup.okhttp.ResponseBody
    public BufferedSource source() {
        return this.f63812g;
    }
}
