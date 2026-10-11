package com.alibaba.sdk.android.oss.network;

import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

/* loaded from: classes3.dex */
public class ProgressTouchableResponseBody<T extends OSSRequest> extends ResponseBody {

    /* renamed from: f */
    public final ResponseBody f13355f;

    /* renamed from: g */
    public OSSProgressCallback f13356g;

    /* renamed from: h */
    public BufferedSource f13357h;

    /* renamed from: i */
    public T f13358i;

    /* renamed from: com.alibaba.sdk.android.oss.network.ProgressTouchableResponseBody$a */
    /* loaded from: classes3.dex */
    public class C1780a extends ForwardingSource {

        /* renamed from: f */
        public long f13359f;

        public C1780a(Source source) {
            super(source);
            this.f13359f = 0L;
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            long read = super.read(buffer, j);
            this.f13359f += read != -1 ? read : 0L;
            if (ProgressTouchableResponseBody.this.f13356g != null && read != -1 && this.f13359f != 0) {
                ProgressTouchableResponseBody.this.f13356g.onProgress(ProgressTouchableResponseBody.this.f13358i, this.f13359f, ProgressTouchableResponseBody.this.f13355f.getContentLength());
            }
            return read;
        }
    }

    public ProgressTouchableResponseBody(ResponseBody responseBody, ExecutionContext executionContext) {
        this.f13355f = responseBody;
        this.f13356g = executionContext.getProgressCallback();
        this.f13358i = (T) executionContext.getRequest();
    }

    /* renamed from: M */
    public final Source m7739M(Source source) {
        return new C1780a(source);
    }

    @Override // okhttp3.ResponseBody
    /* renamed from: contentLength */
    public long getContentLength() {
        return this.f13355f.getContentLength();
    }

    @Override // okhttp3.ResponseBody
    /* renamed from: contentType */
    public MediaType getF103417f() {
        return this.f13355f.getF103417f();
    }

    @Override // okhttp3.ResponseBody
    /* renamed from: source */
    public BufferedSource getSource() {
        if (this.f13357h == null) {
            this.f13357h = Okio.buffer(m7739M(this.f13355f.getSource()));
        }
        return this.f13357h;
    }
}
