package com.alibaba.sdk.android.oss.network;

import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.BufferedSink;
import okio.Okio;
import okio.Source;

/* loaded from: classes3.dex */
public class ProgressTouchableRequestBody<T extends OSSRequest> extends RequestBody {

    /* renamed from: j */
    public static final int f13349j = 2048;

    /* renamed from: e */
    public InputStream f13350e;

    /* renamed from: f */
    public String f13351f;

    /* renamed from: g */
    public long f13352g;

    /* renamed from: h */
    public OSSProgressCallback f13353h;

    /* renamed from: i */
    public T f13354i;

    public ProgressTouchableRequestBody(InputStream inputStream, long j, String str, ExecutionContext executionContext) {
        this.f13350e = inputStream;
        this.f13351f = str;
        this.f13352g = j;
        this.f13353h = executionContext.getProgressCallback();
        this.f13354i = (T) executionContext.getRequest();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        return this.f13352g;
    }

    @Override // okhttp3.RequestBody
    /* renamed from: contentType */
    public MediaType getContentType() {
        return MediaType.parse(this.f13351f);
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        Source source = Okio.source(this.f13350e);
        long j = 0;
        while (true) {
            long j2 = this.f13352g;
            if (j >= j2) {
                break;
            }
            long read = source.read(bufferedSink.getBufferField(), Math.min(j2 - j, 2048L));
            if (read == -1) {
                break;
            }
            j += read;
            bufferedSink.flush();
            OSSProgressCallback oSSProgressCallback = this.f13353h;
            if (oSSProgressCallback != null && j != 0) {
                oSSProgressCallback.onProgress(this.f13354i, j, this.f13352g);
            }
        }
        if (source != null) {
            source.close();
        }
    }
}
