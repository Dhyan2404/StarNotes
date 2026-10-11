package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.rtsp.RtspMessageChannel;
import com.google.android.exoplayer2.upstream.BaseDataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* renamed from: com.google.android.exoplayer2.source.rtsp.f */
/* loaded from: classes5.dex */
public final class C4922f extends BaseDataSource implements RtpDataChannel, RtspMessageChannel.InterleavedBinaryDataListener {

    /* renamed from: i */
    public static final String f26542i = "RTP/AVP/TCP;unicast;interleaved=%d-%d";

    /* renamed from: e */
    public final LinkedBlockingQueue<byte[]> f26543e;

    /* renamed from: f */
    public final long f26544f;

    /* renamed from: g */
    public byte[] f26545g;

    /* renamed from: h */
    public int f26546h;

    public C4922f(long j) {
        super(true);
        this.f26544f = j;
        this.f26543e = new LinkedBlockingQueue<>();
        this.f26545g = new byte[0];
        this.f26546h = -1;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.RtpDataChannel
    /* renamed from: c */
    public RtspMessageChannel.InterleavedBinaryDataListener mo20273c() {
        return this;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
    }

    @Override // com.google.android.exoplayer2.source.rtsp.RtpDataChannel
    public int getLocalPort() {
        return this.f26546h;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.RtpDataChannel
    public String getTransport() {
        Assertions.checkState(this.f26546h != -1);
        return Util.formatInvariant(f26542i, Integer.valueOf(this.f26546h), Integer.valueOf(this.f26546h + 1));
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return null;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.RtspMessageChannel.InterleavedBinaryDataListener
    public void onInterleavedBinaryDataReceived(byte[] bArr) {
        this.f26543e.add(bArr);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) {
        this.f26546h = dataSpec.uri.getPort();
        return -1L;
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int min = Math.min(i2, this.f26545g.length);
        System.arraycopy(this.f26545g, 0, bArr, i, min);
        int i3 = min + 0;
        byte[] bArr2 = this.f26545g;
        this.f26545g = Arrays.copyOfRange(bArr2, min, bArr2.length);
        if (i3 == i2) {
            return i3;
        }
        try {
            byte[] poll = this.f26543e.poll(this.f26544f, TimeUnit.MILLISECONDS);
            if (poll == null) {
                return -1;
            }
            int min2 = Math.min(i2 - i3, poll.length);
            System.arraycopy(poll, 0, bArr, i + i3, min2);
            if (min2 < poll.length) {
                this.f26545g = Arrays.copyOfRange(poll, min2, poll.length);
            }
            return i3 + min2;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return -1;
        }
    }
}
