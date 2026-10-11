package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONB;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class t9l {

    /* renamed from: i */
    public static final String f85016i = "PsDurationReader";

    /* renamed from: j */
    public static final int f85017j = 20000;

    /* renamed from: c */
    public boolean f85020c;

    /* renamed from: d */
    public boolean f85021d;

    /* renamed from: e */
    public boolean f85022e;

    /* renamed from: a */
    public final TimestampAdjuster f85018a = new TimestampAdjuster(0);

    /* renamed from: f */
    public long f85023f = C4649C.TIME_UNSET;

    /* renamed from: g */
    public long f85024g = C4649C.TIME_UNSET;

    /* renamed from: h */
    public long f85025h = C4649C.TIME_UNSET;

    /* renamed from: b */
    public final ParsableByteArray f85019b = new ParsableByteArray();

    /* renamed from: a */
    public static boolean m57322a(byte[] bArr) {
        return (bArr[0] & JSONB.Constants.BC_INT64_SHORT_ZERO) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    /* renamed from: l */
    public static long m57323l(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        if (parsableByteArray.bytesLeft() < 9) {
            return C4649C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        parsableByteArray.readBytes(bArr, 0, 9);
        parsableByteArray.setPosition(position);
        return !m57322a(bArr) ? C4649C.TIME_UNSET : m57324m(bArr);
    }

    /* renamed from: m */
    public static long m57324m(byte[] bArr) {
        byte b = bArr[0];
        long j = (((b & 56) >> 3) << 30) | ((b & 3) << 28) | ((bArr[1] & 255) << 20);
        byte b2 = bArr[2];
        return j | (((b2 & 248) >> 3) << 15) | ((b2 & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    /* renamed from: b */
    public final int m57325b(ExtractorInput extractorInput) {
        this.f85019b.reset(Util.EMPTY_BYTE_ARRAY);
        this.f85020c = true;
        extractorInput.resetPeekPosition();
        return 0;
    }

    /* renamed from: c */
    public long m57326c() {
        return this.f85025h;
    }

    /* renamed from: d */
    public TimestampAdjuster m57327d() {
        return this.f85018a;
    }

    /* renamed from: e */
    public boolean m57328e() {
        return this.f85020c;
    }

    /* renamed from: f */
    public final int m57329f(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8) | (bArr[i + 3] & 255);
    }

    /* renamed from: g */
    public int m57330g(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        if (!this.f85022e) {
            return m57333j(extractorInput, positionHolder);
        }
        if (this.f85024g == C4649C.TIME_UNSET) {
            return m57325b(extractorInput);
        }
        if (!this.f85021d) {
            return m57331h(extractorInput, positionHolder);
        }
        long j = this.f85023f;
        if (j == C4649C.TIME_UNSET) {
            return m57325b(extractorInput);
        }
        long adjustTsTimestamp = this.f85018a.adjustTsTimestamp(this.f85024g) - this.f85018a.adjustTsTimestamp(j);
        this.f85025h = adjustTsTimestamp;
        if (adjustTsTimestamp < 0) {
            StringBuilder sb = new StringBuilder(65);
            sb.append("Invalid duration: ");
            sb.append(adjustTsTimestamp);
            sb.append(". Using TIME_UNSET instead.");
            Log.m21493w(f85016i, sb.toString());
            this.f85025h = C4649C.TIME_UNSET;
        }
        return m57325b(extractorInput);
    }

    /* renamed from: h */
    public final int m57331h(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        int min = (int) Math.min(SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US, extractorInput.getLength());
        long j = 0;
        if (extractorInput.getPosition() != j) {
            positionHolder.position = j;
            return 1;
        }
        this.f85019b.reset(min);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.f85019b.getData(), 0, min);
        this.f85023f = m57332i(this.f85019b);
        this.f85021d = true;
        return 0;
    }

    /* renamed from: i */
    public final long m57332i(ParsableByteArray parsableByteArray) {
        int limit = parsableByteArray.limit();
        for (int position = parsableByteArray.getPosition(); position < limit - 3; position++) {
            if (m57329f(parsableByteArray.getData(), position) == 442) {
                parsableByteArray.setPosition(position + 4);
                long m57323l = m57323l(parsableByteArray);
                if (m57323l != C4649C.TIME_UNSET) {
                    return m57323l;
                }
            }
        }
        return C4649C.TIME_UNSET;
    }

    /* renamed from: j */
    public final int m57333j(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        long length = extractorInput.getLength();
        int min = (int) Math.min(SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US, length);
        long j = length - min;
        if (extractorInput.getPosition() != j) {
            positionHolder.position = j;
            return 1;
        }
        this.f85019b.reset(min);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.f85019b.getData(), 0, min);
        this.f85024g = m57334k(this.f85019b);
        this.f85022e = true;
        return 0;
    }

    /* renamed from: k */
    public final long m57334k(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        for (int limit = parsableByteArray.limit() - 4; limit >= position; limit--) {
            if (m57329f(parsableByteArray.getData(), limit) == 442) {
                parsableByteArray.setPosition(limit + 4);
                long m57323l = m57323l(parsableByteArray);
                if (m57323l != C4649C.TIME_UNSET) {
                    return m57323l;
                }
            }
        }
        return C4649C.TIME_UNSET;
    }
}
