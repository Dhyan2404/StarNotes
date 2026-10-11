package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.MpegAudioUtil;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import java.nio.ByteBuffer;

/* renamed from: com.sunia.HTREnginev2.uv */
/* loaded from: classes5.dex */
public final class C14522uv {

    /* renamed from: d */
    public static final long f86859d = 529;

    /* renamed from: e */
    public static final String f86860e = "C2Mp3TimestampTracker";

    /* renamed from: a */
    public long f86861a;

    /* renamed from: b */
    public long f86862b;

    /* renamed from: c */
    public boolean f86863c;

    /* renamed from: a */
    public final long m57659a(long j) {
        return this.f86861a + Math.max(0L, ((this.f86862b - 529) * 1000000) / j);
    }

    /* renamed from: b */
    public long m57660b(Format format) {
        return m57659a(format.sampleRate);
    }

    /* renamed from: c */
    public void m57661c() {
        this.f86861a = 0L;
        this.f86862b = 0L;
        this.f86863c = false;
    }

    /* renamed from: d */
    public long m57662d(Format format, DecoderInputBuffer decoderInputBuffer) {
        if (this.f86862b == 0) {
            this.f86861a = decoderInputBuffer.timeUs;
        }
        if (this.f86863c) {
            return decoderInputBuffer.timeUs;
        }
        ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(decoderInputBuffer.data);
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get(i2) & 255);
        }
        int parseMpegAudioFrameSampleCount = MpegAudioUtil.parseMpegAudioFrameSampleCount(i);
        if (parseMpegAudioFrameSampleCount != -1) {
            long m57659a = m57659a(format.sampleRate);
            this.f86862b += parseMpegAudioFrameSampleCount;
            return m57659a;
        }
        this.f86863c = true;
        this.f86862b = 0L;
        this.f86861a = decoderInputBuffer.timeUs;
        Log.m21493w(f86860e, "MPEG audio header is invalid.");
        return decoderInputBuffer.timeUs;
    }
}
