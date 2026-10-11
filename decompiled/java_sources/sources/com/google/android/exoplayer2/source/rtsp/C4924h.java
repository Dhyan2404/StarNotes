package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.rtsp.RtspMessageChannel;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.upstream.UdpDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.primitives.Ints;
import java.io.IOException;

/* renamed from: com.google.android.exoplayer2.source.rtsp.h */
/* loaded from: classes5.dex */
public final class C4924h implements RtpDataChannel {

    /* renamed from: c */
    public static final String f26549c = "RTP/AVP;unicast;client_port=%d-%d";

    /* renamed from: a */
    public final UdpDataSource f26550a;

    /* renamed from: b */
    @Nullable
    public C4924h f26551b;

    public C4924h(long j) {
        this.f26550a = new UdpDataSource(2000, Ints.checkedCast(j));
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        this.f26550a.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.source.rtsp.RtpDataChannel
    @Nullable
    /* renamed from: c */
    public RtspMessageChannel.InterleavedBinaryDataListener mo20273c() {
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        this.f26550a.close();
        C4924h c4924h = this.f26551b;
        if (c4924h != null) {
            c4924h.close();
        }
    }

    /* renamed from: d */
    public void m20495d(C4924h c4924h) {
        Assertions.checkArgument(this != c4924h);
        this.f26551b = c4924h;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.RtpDataChannel
    public int getLocalPort() {
        int localPort = this.f26550a.getLocalPort();
        if (localPort == -1) {
            return -1;
        }
        return localPort;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.RtpDataChannel
    public String getTransport() {
        int localPort = getLocalPort();
        Assertions.checkState(localPort != -1);
        return Util.formatInvariant(f26549c, Integer.valueOf(localPort), Integer.valueOf(localPort + 1));
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.f26550a.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        return this.f26550a.open(dataSpec);
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            return this.f26550a.read(bArr, i, i2);
        } catch (UdpDataSource.UdpDataSourceException e) {
            if (e.reason == 2002) {
                return -1;
            }
            throw e;
        }
    }
}
