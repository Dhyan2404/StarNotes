package com.google.android.exoplayer2.source.rtsp.reader;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.rtsp.RtpPayloadFormat;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes5.dex */
public final class RtpAc3Reader implements RtpPayloadReader {

    /* renamed from: h */
    public static final int f26553h = 0;

    /* renamed from: i */
    public static final int f26554i = 1;

    /* renamed from: j */
    public static final int f26555j = 2;

    /* renamed from: k */
    public static final int f26556k = 3;

    /* renamed from: l */
    public static final int f26557l = 2;

    /* renamed from: a */
    public final RtpPayloadFormat f26558a;

    /* renamed from: c */
    public TrackOutput f26560c;

    /* renamed from: d */
    public int f26561d;

    /* renamed from: f */
    public long f26563f;

    /* renamed from: g */
    public long f26564g;

    /* renamed from: b */
    public final ParsableBitArray f26559b = new ParsableBitArray();

    /* renamed from: e */
    public long f26562e = C4649C.TIME_UNSET;

    public RtpAc3Reader(RtpPayloadFormat rtpPayloadFormat) {
        this.f26558a = rtpPayloadFormat;
    }

    /* renamed from: f */
    public static long m20496f(long j, long j2, long j3, int i) {
        return j + Util.scaleLargeTimestamp(j2 - j3, 1000000L, i);
    }

    /* renamed from: a */
    public final void m20497a() {
        if (this.f26561d > 0) {
            m20498b();
        }
    }

    /* renamed from: b */
    public final void m20498b() {
        ((TrackOutput) Util.castNonNull(this.f26560c)).sampleMetadata(this.f26563f, 1, this.f26561d, 0, null);
        this.f26561d = 0;
    }

    /* renamed from: c */
    public final void m20499c(ParsableByteArray parsableByteArray, boolean z, int i, long j) {
        int bytesLeft = parsableByteArray.bytesLeft();
        ((TrackOutput) Assertions.checkNotNull(this.f26560c)).sampleData(parsableByteArray, bytesLeft);
        this.f26561d += bytesLeft;
        this.f26563f = j;
        if (z && i == 3) {
            m20498b();
        }
    }

    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader
    public void consume(ParsableByteArray parsableByteArray, long j, int i, boolean z) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte() & 3;
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte() & 255;
        long m20496f = m20496f(this.f26564g, j, this.f26562e, this.f26558a.clockRate);
        if (readUnsignedByte == 0) {
            m20497a();
            if (readUnsignedByte2 == 1) {
                m20501e(parsableByteArray, m20496f);
                return;
            } else {
                m20500d(parsableByteArray, readUnsignedByte2, m20496f);
                return;
            }
        }
        if (readUnsignedByte == 1 || readUnsignedByte == 2) {
            m20497a();
        } else if (readUnsignedByte != 3) {
            throw new IllegalArgumentException(String.valueOf(readUnsignedByte));
        }
        m20499c(parsableByteArray, z, readUnsignedByte, m20496f);
    }

    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader
    public void createTracks(ExtractorOutput extractorOutput, int i) {
        TrackOutput track = extractorOutput.track(i, 1);
        this.f26560c = track;
        track.format(this.f26558a.format);
    }

    /* renamed from: d */
    public final void m20500d(ParsableByteArray parsableByteArray, int i, long j) {
        this.f26559b.reset(parsableByteArray.getData());
        this.f26559b.skipBytes(2);
        for (int i2 = 0; i2 < i; i2++) {
            Ac3Util.SyncFrameInfo parseAc3SyncframeInfo = Ac3Util.parseAc3SyncframeInfo(this.f26559b);
            ((TrackOutput) Assertions.checkNotNull(this.f26560c)).sampleData(parsableByteArray, parseAc3SyncframeInfo.frameSize);
            ((TrackOutput) Util.castNonNull(this.f26560c)).sampleMetadata(j, 1, parseAc3SyncframeInfo.frameSize, 0, null);
            j += (parseAc3SyncframeInfo.sampleCount / parseAc3SyncframeInfo.sampleRate) * 1000000;
            this.f26559b.skipBytes(parseAc3SyncframeInfo.frameSize);
        }
    }

    /* renamed from: e */
    public final void m20501e(ParsableByteArray parsableByteArray, long j) {
        int bytesLeft = parsableByteArray.bytesLeft();
        ((TrackOutput) Assertions.checkNotNull(this.f26560c)).sampleData(parsableByteArray, bytesLeft);
        ((TrackOutput) Util.castNonNull(this.f26560c)).sampleMetadata(j, 1, bytesLeft, 0, null);
    }

    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader
    public void onReceivingFirstPacket(long j, int i) {
        Assertions.checkState(this.f26562e == C4649C.TIME_UNSET);
        this.f26562e = j;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader
    public void seek(long j, long j2) {
        this.f26562e = j;
        this.f26564g = j2;
    }
}
