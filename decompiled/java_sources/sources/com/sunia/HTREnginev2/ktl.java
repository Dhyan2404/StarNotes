package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.rtsp.RtpPayloadFormat;
import com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Ascii;
import com.sun.org.apache.xalan.internal.templates.Constants;

/* loaded from: classes5.dex */
public final class ktl implements RtpPayloadReader {

    /* renamed from: j */
    public static final String f75829j = "AAC-lbr";

    /* renamed from: k */
    public static final String f75830k = "AAC-hbr";

    /* renamed from: l */
    public static final String f75831l = "RtpAacReader";

    /* renamed from: a */
    public final RtpPayloadFormat f75832a;

    /* renamed from: b */
    public final ParsableBitArray f75833b = new ParsableBitArray();

    /* renamed from: c */
    public final int f75834c;

    /* renamed from: d */
    public final int f75835d;

    /* renamed from: e */
    public final int f75836e;

    /* renamed from: f */
    public final int f75837f;

    /* renamed from: g */
    public long f75838g;

    /* renamed from: h */
    public TrackOutput f75839h;

    /* renamed from: i */
    public long f75840i;

    public ktl(RtpPayloadFormat rtpPayloadFormat) {
        this.f75832a = rtpPayloadFormat;
        this.f75834c = rtpPayloadFormat.clockRate;
        String str = (String) Assertions.checkNotNull(rtpPayloadFormat.fmtpParameters.get(Constants.ATTRNAME_MODE));
        if (Ascii.equalsIgnoreCase(str, f75830k)) {
            this.f75835d = 13;
            this.f75836e = 3;
        } else {
            if (!Ascii.equalsIgnoreCase(str, f75829j)) {
                throw new UnsupportedOperationException("AAC mode not supported");
            }
            this.f75835d = 6;
            this.f75836e = 2;
        }
        this.f75837f = this.f75836e + this.f75835d;
    }

    /* renamed from: a */
    public static void m55319a(TrackOutput trackOutput, long j, int i) {
        trackOutput.sampleMetadata(j, 1, i, 0, null);
    }

    /* renamed from: b */
    public static long m55320b(long j, long j2, long j3, int i) {
        return j + Util.scaleLargeTimestamp(j2 - j3, 1000000L, i);
    }

    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader
    public void consume(ParsableByteArray parsableByteArray, long j, int i, boolean z) {
        Assertions.checkNotNull(this.f75839h);
        short readShort = parsableByteArray.readShort();
        int i2 = readShort / this.f75837f;
        long m55320b = m55320b(this.f75840i, j, this.f75838g, this.f75834c);
        this.f75833b.reset(parsableByteArray);
        if (i2 == 1) {
            int readBits = this.f75833b.readBits(this.f75835d);
            this.f75833b.skipBits(this.f75836e);
            this.f75839h.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
            if (z) {
                m55319a(this.f75839h, m55320b, readBits);
                return;
            }
            return;
        }
        parsableByteArray.skipBytes((readShort + 7) / 8);
        for (int i3 = 0; i3 < i2; i3++) {
            int readBits2 = this.f75833b.readBits(this.f75835d);
            this.f75833b.skipBits(this.f75836e);
            this.f75839h.sampleData(parsableByteArray, readBits2);
            m55319a(this.f75839h, m55320b, readBits2);
            m55320b += Util.scaleLargeTimestamp(i2, 1000000L, this.f75834c);
        }
    }

    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader
    public void createTracks(ExtractorOutput extractorOutput, int i) {
        TrackOutput track = extractorOutput.track(i, 1);
        this.f75839h = track;
        track.format(this.f75832a.format);
    }

    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader
    public void onReceivingFirstPacket(long j, int i) {
        this.f75838g = j;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader
    public void seek(long j, long j2) {
        this.f75838g = j;
        this.f75840i = j2;
    }
}
