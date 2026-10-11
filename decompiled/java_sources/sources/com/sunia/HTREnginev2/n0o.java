package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.MpegAudioUtil;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.mp3.Seeker;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class n0o implements Seeker {

    /* renamed from: e */
    public static final String f78195e = "VbriSeeker";

    /* renamed from: a */
    public final long[] f78196a;

    /* renamed from: b */
    public final long[] f78197b;

    /* renamed from: c */
    public final long f78198c;

    /* renamed from: d */
    public final long f78199d;

    public n0o(long[] jArr, long[] jArr2, long j, long j2) {
        this.f78196a = jArr;
        this.f78197b = jArr2;
        this.f78198c = j;
        this.f78199d = j2;
    }

    @Nullable
    /* renamed from: a */
    public static n0o m55702a(long j, long j2, MpegAudioUtil.Header header, ParsableByteArray parsableByteArray) {
        int readUnsignedByte;
        parsableByteArray.skipBytes(10);
        int readInt = parsableByteArray.readInt();
        if (readInt <= 0) {
            return null;
        }
        int i = header.sampleRate;
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(readInt, (i >= 32000 ? 1152 : 576) * 1000000, i);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        int readUnsignedShort3 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        long j3 = j2 + header.frameSize;
        long[] jArr = new long[readUnsignedShort];
        long[] jArr2 = new long[readUnsignedShort];
        int i2 = 0;
        long j4 = j2;
        while (i2 < readUnsignedShort) {
            int i3 = readUnsignedShort2;
            long j5 = j3;
            jArr[i2] = (i2 * scaleLargeTimestamp) / readUnsignedShort;
            jArr2[i2] = Math.max(j4, j5);
            if (readUnsignedShort3 == 1) {
                readUnsignedByte = parsableByteArray.readUnsignedByte();
            } else if (readUnsignedShort3 == 2) {
                readUnsignedByte = parsableByteArray.readUnsignedShort();
            } else if (readUnsignedShort3 == 3) {
                readUnsignedByte = parsableByteArray.readUnsignedInt24();
            } else {
                if (readUnsignedShort3 != 4) {
                    return null;
                }
                readUnsignedByte = parsableByteArray.readUnsignedIntToInt();
            }
            j4 += readUnsignedByte * i3;
            i2++;
            j3 = j5;
            readUnsignedShort2 = i3;
        }
        if (j != -1 && j != j4) {
            StringBuilder sb = new StringBuilder(67);
            sb.append("VBRI data size mismatch: ");
            sb.append(j);
            sb.append(", ");
            sb.append(j4);
            Log.m21493w(f78195e, sb.toString());
        }
        return new n0o(jArr, jArr2, scaleLargeTimestamp, j4);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.f78199d;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.f78198c;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        int binarySearchFloor = Util.binarySearchFloor(this.f78196a, j, true, true);
        SeekPoint seekPoint = new SeekPoint(this.f78196a[binarySearchFloor], this.f78197b[binarySearchFloor]);
        if (seekPoint.timeUs >= j || binarySearchFloor == this.f78196a.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i = binarySearchFloor + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.f78196a[i], this.f78197b[i]));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        return this.f78196a[Util.binarySearchFloor(this.f78197b, j, true, true)];
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
