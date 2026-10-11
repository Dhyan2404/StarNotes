package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import com.google.android.exoplayer2.source.rtsp.RtpPayloadFormat;
import com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class ntl implements RtpPayloadReader {

    /* renamed from: j */
    public static final String f79009j = "RtpH264Reader";

    /* renamed from: k */
    public static final long f79010k = 90000;

    /* renamed from: l */
    public static final int f79011l = 2;

    /* renamed from: m */
    public static final int f79012m = 24;

    /* renamed from: n */
    public static final int f79013n = 28;

    /* renamed from: o */
    public static final int f79014o = 5;

    /* renamed from: c */
    public final RtpPayloadFormat f79017c;

    /* renamed from: d */
    public TrackOutput f79018d;

    /* renamed from: e */
    public int f79019e;

    /* renamed from: h */
    public int f79022h;

    /* renamed from: i */
    public long f79023i;

    /* renamed from: b */
    public final ParsableByteArray f79016b = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);

    /* renamed from: a */
    public final ParsableByteArray f79015a = new ParsableByteArray();

    /* renamed from: f */
    public long f79020f = C4649C.TIME_UNSET;

    /* renamed from: g */
    public int f79021g = -1;

    public ntl(RtpPayloadFormat rtpPayloadFormat) {
        this.f79017c = rtpPayloadFormat;
    }

    /* renamed from: a */
    public static int m55792a(int i) {
        return i == 5 ? 1 : 0;
    }

    /* renamed from: e */
    public static long m55793e(long j, long j2, long j3) {
        return j + Util.scaleLargeTimestamp(j2 - j3, 1000000L, f79010k);
    }

    @RequiresNonNull({"trackOutput"})
    /* renamed from: b */
    public final void m55794b(ParsableByteArray parsableByteArray, int i) {
        byte b = parsableByteArray.getData()[0];
        byte b2 = parsableByteArray.getData()[1];
        int i2 = (b & 224) | (b2 & 31);
        boolean z = (b2 & 128) > 0;
        boolean z2 = (b2 & 64) > 0;
        if (z) {
            this.f79022h += m55797f();
            parsableByteArray.getData()[1] = (byte) i2;
            this.f79015a.reset(parsableByteArray.getData());
            this.f79015a.setPosition(1);
        } else {
            int nextSequenceNumber = RtpPacket.getNextSequenceNumber(this.f79021g);
            if (i != nextSequenceNumber) {
                Log.m21493w(f79009j, Util.formatInvariant("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(nextSequenceNumber), Integer.valueOf(i)));
                return;
            } else {
                this.f79015a.reset(parsableByteArray.getData());
                this.f79015a.setPosition(2);
            }
        }
        int bytesLeft = this.f79015a.bytesLeft();
        this.f79018d.sampleData(this.f79015a, bytesLeft);
        this.f79022h += bytesLeft;
        if (z2) {
            this.f79019e = m55792a(i2 & 31);
        }
    }

    @RequiresNonNull({"trackOutput"})
    /* renamed from: c */
    public final void m55795c(ParsableByteArray parsableByteArray) {
        int bytesLeft = parsableByteArray.bytesLeft();
        this.f79022h += m55797f();
        this.f79018d.sampleData(parsableByteArray, bytesLeft);
        this.f79022h += bytesLeft;
        this.f79019e = m55792a(parsableByteArray.getData()[0] & 31);
    }

    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader
    public void consume(ParsableByteArray parsableByteArray, long j, int i, boolean z) throws ParserException {
        try {
            int i2 = parsableByteArray.getData()[0] & 31;
            Assertions.checkStateNotNull(this.f79018d);
            if (i2 > 0 && i2 < 24) {
                m55795c(parsableByteArray);
            } else if (i2 == 24) {
                m55796d(parsableByteArray);
            } else {
                if (i2 != 28) {
                    throw ParserException.createForMalformedManifest(String.format("RTP H264 packetization mode [%d] not supported.", Integer.valueOf(i2)), null);
                }
                m55794b(parsableByteArray, i);
            }
            if (z) {
                if (this.f79020f == C4649C.TIME_UNSET) {
                    this.f79020f = j;
                }
                this.f79018d.sampleMetadata(m55793e(this.f79023i, j, this.f79020f), this.f79019e, this.f79022h, 0, null);
                this.f79022h = 0;
            }
            this.f79021g = i;
        } catch (IndexOutOfBoundsException e) {
            throw ParserException.createForMalformedManifest(null, e);
        }
    }

    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader
    public void createTracks(ExtractorOutput extractorOutput, int i) {
        TrackOutput track = extractorOutput.track(i, 2);
        this.f79018d = track;
        ((TrackOutput) Util.castNonNull(track)).format(this.f79017c.format);
    }

    @RequiresNonNull({"trackOutput"})
    /* renamed from: d */
    public final void m55796d(ParsableByteArray parsableByteArray) {
        parsableByteArray.readUnsignedByte();
        while (parsableByteArray.bytesLeft() > 4) {
            int readUnsignedShort = parsableByteArray.readUnsignedShort();
            this.f79022h += m55797f();
            this.f79018d.sampleData(parsableByteArray, readUnsignedShort);
            this.f79022h += readUnsignedShort;
        }
        this.f79019e = 0;
    }

    /* renamed from: f */
    public final int m55797f() {
        this.f79016b.setPosition(0);
        int bytesLeft = this.f79016b.bytesLeft();
        ((TrackOutput) Assertions.checkNotNull(this.f79018d)).sampleData(this.f79016b, bytesLeft);
        return bytesLeft;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader
    public void onReceivingFirstPacket(long j, int i) {
    }

    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader
    public void seek(long j, long j2) {
        this.f79020f = j;
        this.f79022h = 0;
        this.f79023i = j2;
    }
}
