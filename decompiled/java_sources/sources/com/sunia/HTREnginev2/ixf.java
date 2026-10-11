package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.metadata.emsg.EventMessageEncoder;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.dash.manifest.EventStream;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class ixf implements SampleStream {

    /* renamed from: e */
    public final Format f73699e;

    /* renamed from: g */
    public long[] f73701g;

    /* renamed from: h */
    public boolean f73702h;

    /* renamed from: i */
    public EventStream f73703i;

    /* renamed from: j */
    public boolean f73704j;

    /* renamed from: k */
    public int f73705k;

    /* renamed from: f */
    public final EventMessageEncoder f73700f = new EventMessageEncoder();

    /* renamed from: l */
    public long f73706l = C4649C.TIME_UNSET;

    public ixf(EventStream eventStream, Format format, boolean z) {
        this.f73699e = format;
        this.f73703i = eventStream;
        this.f73701g = eventStream.presentationTimesUs;
        m54809c(eventStream, z);
    }

    /* renamed from: a */
    public String m54807a() {
        return this.f73703i.m20033id();
    }

    /* renamed from: b */
    public void m54808b(long j) {
        int binarySearchCeil = Util.binarySearchCeil(this.f73701g, j, true, false);
        this.f73705k = binarySearchCeil;
        if (!(this.f73702h && binarySearchCeil == this.f73701g.length)) {
            j = C4649C.TIME_UNSET;
        }
        this.f73706l = j;
    }

    /* renamed from: c */
    public void m54809c(EventStream eventStream, boolean z) {
        int i = this.f73705k;
        long j = i == 0 ? -9223372036854775807L : this.f73701g[i - 1];
        this.f73702h = z;
        this.f73703i = eventStream;
        long[] jArr = eventStream.presentationTimesUs;
        this.f73701g = jArr;
        long j2 = this.f73706l;
        if (j2 != C4649C.TIME_UNSET) {
            m54808b(j2);
        } else if (j != C4649C.TIME_UNSET) {
            this.f73705k = Util.binarySearchCeil(jArr, j, false, false);
        }
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public void maybeThrowError() throws IOException {
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
        int i2 = this.f73705k;
        boolean z = i2 == this.f73701g.length;
        if (z && !this.f73702h) {
            decoderInputBuffer.setFlags(4);
            return -4;
        }
        if ((i & 2) != 0 || !this.f73704j) {
            formatHolder.format = this.f73699e;
            this.f73704j = true;
            return -5;
        }
        if (z) {
            return -3;
        }
        if ((i & 1) == 0) {
            this.f73705k = i2 + 1;
        }
        if ((i & 4) == 0) {
            byte[] encode = this.f73700f.encode(this.f73703i.events[i2]);
            decoderInputBuffer.ensureSpaceForWrite(encode.length);
            decoderInputBuffer.data.put(encode);
        }
        decoderInputBuffer.timeUs = this.f73701g[i2];
        decoderInputBuffer.setFlags(1);
        return -4;
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int skipData(long j) {
        int max = Math.max(this.f73705k, Util.binarySearchCeil(this.f73701g, j, true, false));
        int i = max - this.f73705k;
        this.f73705k = max;
        return i;
    }
}
