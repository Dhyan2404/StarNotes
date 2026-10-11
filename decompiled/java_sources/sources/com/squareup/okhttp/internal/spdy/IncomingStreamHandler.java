package com.squareup.okhttp.internal.spdy;

import java.io.IOException;

/* loaded from: classes9.dex */
public interface IncomingStreamHandler {
    public static final IncomingStreamHandler REFUSE_INCOMING_STREAMS = new C13192a();

    /* renamed from: com.squareup.okhttp.internal.spdy.IncomingStreamHandler$a */
    /* loaded from: classes9.dex */
    public static class C13192a implements IncomingStreamHandler {
        @Override // com.squareup.okhttp.internal.spdy.IncomingStreamHandler
        public void receive(SpdyStream spdyStream) throws IOException {
            spdyStream.close(ErrorCode.REFUSED_STREAM);
        }
    }

    void receive(SpdyStream spdyStream) throws IOException;
}
