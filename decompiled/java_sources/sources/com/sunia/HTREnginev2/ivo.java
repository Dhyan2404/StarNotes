package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.MpegAudioUtil;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.mp3.Seeker;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class ivo implements Seeker {

    /* renamed from: g */
    public static final String f73636g = "XingSeeker";

    /* renamed from: a */
    public final long f73637a;

    /* renamed from: b */
    public final int f73638b;

    /* renamed from: c */
    public final long f73639c;

    /* renamed from: d */
    public final long f73640d;

    /* renamed from: e */
    public final long f73641e;

    /* renamed from: f */
    @Nullable
    public final long[] f73642f;

    public ivo(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    @Nullable
    /* renamed from: a */
    public static ivo m54805a(long j, long j2, MpegAudioUtil.Header header, ParsableByteArray parsableByteArray) {
        int readUnsignedIntToInt;
        int i = header.samplesPerFrame;
        int i2 = header.sampleRate;
        int readInt = parsableByteArray.readInt();
        if ((readInt & 1) != 1 || (readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt()) == 0) {
            return null;
        }
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(readUnsignedIntToInt, i * 1000000, i2);
        if ((readInt & 6) != 6) {
            return new ivo(j2, header.frameSize, scaleLargeTimestamp);
        }
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = parsableByteArray.readUnsignedByte();
        }
        if (j != -1) {
            long j3 = j2 + readUnsignedInt;
            if (j != j3) {
                StringBuilder sb = new StringBuilder(67);
                sb.append("XING data size mismatch: ");
                sb.append(j);
                sb.append(", ");
                sb.append(j3);
                Log.m21493w(f73636g, sb.toString());
            }
        }
        return new ivo(j2, header.frameSize, scaleLargeTimestamp, readUnsignedInt, jArr);
    }

    /* renamed from: b */
    public final long m54806b(int i) {
        return (this.f73639c * i) / 100;
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.f73641e;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.f73639c;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        if (!isSeekable()) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.f73637a + this.f73638b));
        }
        long constrainValue = Util.constrainValue(j, 0L, this.f73639c);
        double d = (constrainValue * 100.0d) / this.f73639c;
        double d2 = 0.0d;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                d2 = 256.0d;
            } else {
                int i = (int) d;
                double d3 = ((long[]) Assertions.checkStateNotNull(this.f73642f))[i];
                d2 = d3 + ((d - i) * ((i == 99 ? 256.0d : r3[i + 1]) - d3));
            }
        }
        return new SeekMap.SeekPoints(new SeekPoint(constrainValue, this.f73637a + Util.constrainValue(Math.round((d2 / 256.0d) * this.f73640d), this.f73638b, this.f73640d - 1)));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        long j2 = j - this.f73637a;
        if (!isSeekable() || j2 <= this.f73638b) {
            return 0L;
        }
        long[] jArr = (long[]) Assertions.checkStateNotNull(this.f73642f);
        double d = (j2 * 256.0d) / this.f73640d;
        int binarySearchFloor = Util.binarySearchFloor(jArr, (long) d, true, true);
        long m54806b = m54806b(binarySearchFloor);
        long j3 = jArr[binarySearchFloor];
        int i = binarySearchFloor + 1;
        long m54806b2 = m54806b(i);
        return m54806b + Math.round((j3 == (binarySearchFloor == 99 ? 256L : jArr[i]) ? 0.0d : (d - j3) / (r0 - j3)) * (m54806b2 - m54806b));
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return this.f73642f != null;
    }

    public ivo(long j, int i, long j2, long j3, @Nullable long[] jArr) {
        this.f73637a = j;
        this.f73638b = i;
        this.f73639c = j2;
        this.f73642f = jArr;
        this.f73640d = j3;
        this.f73641e = j3 != -1 ? j + j3 : -1L;
    }
}
