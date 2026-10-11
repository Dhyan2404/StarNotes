package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper;
import com.google.android.exoplayer2.source.hls.SampleQueueMappingException;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class izh implements SampleStream {

    /* renamed from: e */
    public final int f73790e;

    /* renamed from: f */
    public final HlsSampleStreamWrapper f73791f;

    /* renamed from: g */
    public int f73792g = -1;

    public izh(HlsSampleStreamWrapper hlsSampleStreamWrapper, int i) {
        this.f73791f = hlsSampleStreamWrapper;
        this.f73790e = i;
    }

    /* renamed from: a */
    public void m54841a() {
        Assertions.checkArgument(this.f73792g == -1);
        this.f73792g = this.f73791f.m20120d(this.f73790e);
    }

    /* renamed from: b */
    public final boolean m54842b() {
        int i = this.f73792g;
        return (i == -1 || i == -3 || i == -2) ? false : true;
    }

    /* renamed from: c */
    public void m54843c() {
        if (this.f73792g != -1) {
            this.f73791f.m20117V(this.f73790e);
            this.f73792g = -1;
        }
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public boolean isReady() {
        return this.f73792g == -3 || (m54842b() && this.f73791f.m20134w(this.f73792g));
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public void maybeThrowError() throws IOException {
        int i = this.f73792g;
        if (i == -2) {
            throw new SampleQueueMappingException(this.f73791f.getTrackGroups().get(this.f73790e).getFormat(0).sampleMimeType);
        }
        if (i == -1) {
            this.f73791f.m20096A();
        } else if (i != -3) {
            this.f73791f.m20097B(i);
        }
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
        if (this.f73792g == -3) {
            decoderInputBuffer.addFlag(4);
            return -4;
        }
        if (m54842b()) {
            return this.f73791f.m20106K(this.f73792g, formatHolder, decoderInputBuffer, i);
        }
        return -3;
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int skipData(long j) {
        if (m54842b()) {
            return this.f73791f.m20116U(this.f73792g, j);
        }
        return 0;
    }
}
