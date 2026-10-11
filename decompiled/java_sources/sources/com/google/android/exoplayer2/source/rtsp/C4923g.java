package com.google.android.exoplayer2.source.rtsp;

import com.google.android.exoplayer2.source.rtsp.RtpDataChannel;

/* renamed from: com.google.android.exoplayer2.source.rtsp.g */
/* loaded from: classes5.dex */
public final class C4923g implements RtpDataChannel.Factory {

    /* renamed from: b */
    public static final int f26547b = 2;

    /* renamed from: a */
    public final long f26548a;

    public C4923g(long j) {
        this.f26548a = j;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.RtpDataChannel.Factory
    public RtpDataChannel createAndOpenDataChannel(int i) {
        C4922f c4922f = new C4922f(this.f26548a);
        c4922f.open(RtpUtils.getIncomingRtpDataSpec(i * 2));
        return c4922f;
    }
}
