package com.google.android.exoplayer2.source.rtsp;

import com.google.android.exoplayer2.source.rtsp.RtpDataChannel;
import com.google.android.exoplayer2.upstream.DataSourceUtil;
import java.io.IOException;

/* renamed from: com.google.android.exoplayer2.source.rtsp.i */
/* loaded from: classes5.dex */
public final class C4925i implements RtpDataChannel.Factory {

    /* renamed from: a */
    public final long f26552a;

    public C4925i(long j) {
        this.f26552a = j;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.RtpDataChannel.Factory
    public RtpDataChannel createAndOpenDataChannel(int i) throws IOException {
        C4924h c4924h = new C4924h(this.f26552a);
        C4924h c4924h2 = new C4924h(this.f26552a);
        try {
            c4924h.open(RtpUtils.getIncomingRtpDataSpec(0));
            int localPort = c4924h.getLocalPort();
            boolean z = localPort % 2 == 0;
            c4924h2.open(RtpUtils.getIncomingRtpDataSpec(z ? localPort + 1 : localPort - 1));
            if (z) {
                c4924h.m20495d(c4924h2);
                return c4924h;
            }
            c4924h2.m20495d(c4924h);
            return c4924h2;
        } catch (IOException e) {
            DataSourceUtil.closeQuietly(c4924h);
            DataSourceUtil.closeQuietly(c4924h2);
            throw e;
        }
    }

    @Override // com.google.android.exoplayer2.source.rtsp.RtpDataChannel.Factory
    public RtpDataChannel.Factory createFallbackDataChannelFactory() {
        return new C4923g(this.f26552a);
    }
}
