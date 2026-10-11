package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.p007ts.TsUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class eon {

    /* renamed from: j */
    public static final String f69162j = "TsDurationReader";

    /* renamed from: a */
    public final int f69163a;

    /* renamed from: d */
    public boolean f69166d;

    /* renamed from: e */
    public boolean f69167e;

    /* renamed from: f */
    public boolean f69168f;

    /* renamed from: b */
    public final TimestampAdjuster f69164b = new TimestampAdjuster(0);

    /* renamed from: g */
    public long f69169g = C4649C.TIME_UNSET;

    /* renamed from: h */
    public long f69170h = C4649C.TIME_UNSET;

    /* renamed from: i */
    public long f69171i = C4649C.TIME_UNSET;

    /* renamed from: c */
    public final ParsableByteArray f69165c = new ParsableByteArray();

    public eon(int i) {
        this.f69163a = i;
    }

    /* renamed from: a */
    public final int m53990a(ExtractorInput extractorInput) {
        this.f69165c.reset(Util.EMPTY_BYTE_ARRAY);
        this.f69166d = true;
        extractorInput.resetPeekPosition();
        return 0;
    }

    /* renamed from: b */
    public long m53991b() {
        return this.f69171i;
    }

    /* renamed from: c */
    public TimestampAdjuster m53992c() {
        return this.f69164b;
    }

    /* renamed from: d */
    public boolean m53993d() {
        return this.f69166d;
    }

    /* renamed from: e */
    public int m53994e(ExtractorInput extractorInput, PositionHolder positionHolder, int i) throws IOException {
        if (i <= 0) {
            return m53990a(extractorInput);
        }
        if (!this.f69168f) {
            return m53997h(extractorInput, positionHolder, i);
        }
        if (this.f69170h == C4649C.TIME_UNSET) {
            return m53990a(extractorInput);
        }
        if (!this.f69167e) {
            return m53995f(extractorInput, positionHolder, i);
        }
        long j = this.f69169g;
        if (j == C4649C.TIME_UNSET) {
            return m53990a(extractorInput);
        }
        long adjustTsTimestamp = this.f69164b.adjustTsTimestamp(this.f69170h) - this.f69164b.adjustTsTimestamp(j);
        this.f69171i = adjustTsTimestamp;
        if (adjustTsTimestamp < 0) {
            StringBuilder sb = new StringBuilder(65);
            sb.append("Invalid duration: ");
            sb.append(adjustTsTimestamp);
            sb.append(". Using TIME_UNSET instead.");
            Log.m21493w(f69162j, sb.toString());
            this.f69171i = C4649C.TIME_UNSET;
        }
        return m53990a(extractorInput);
    }

    /* renamed from: f */
    public final int m53995f(ExtractorInput extractorInput, PositionHolder positionHolder, int i) throws IOException {
        int min = (int) Math.min(this.f69163a, extractorInput.getLength());
        long j = 0;
        if (extractorInput.getPosition() != j) {
            positionHolder.position = j;
            return 1;
        }
        this.f69165c.reset(min);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.f69165c.getData(), 0, min);
        this.f69169g = m53996g(this.f69165c, i);
        this.f69167e = true;
        return 0;
    }

    /* renamed from: g */
    public final long m53996g(ParsableByteArray parsableByteArray, int i) {
        int limit = parsableByteArray.limit();
        for (int position = parsableByteArray.getPosition(); position < limit; position++) {
            if (parsableByteArray.getData()[position] == 71) {
                long readPcrFromPacket = TsUtil.readPcrFromPacket(parsableByteArray, position, i);
                if (readPcrFromPacket != C4649C.TIME_UNSET) {
                    return readPcrFromPacket;
                }
            }
        }
        return C4649C.TIME_UNSET;
    }

    /* renamed from: h */
    public final int m53997h(ExtractorInput extractorInput, PositionHolder positionHolder, int i) throws IOException {
        long length = extractorInput.getLength();
        int min = (int) Math.min(this.f69163a, length);
        long j = length - min;
        if (extractorInput.getPosition() != j) {
            positionHolder.position = j;
            return 1;
        }
        this.f69165c.reset(min);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.f69165c.getData(), 0, min);
        this.f69170h = m53998i(this.f69165c, i);
        this.f69168f = true;
        return 0;
    }

    /* renamed from: i */
    public final long m53998i(ParsableByteArray parsableByteArray, int i) {
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        for (int i2 = limit - 188; i2 >= position; i2--) {
            if (TsUtil.isStartOfTsPacket(parsableByteArray.getData(), position, limit, i2)) {
                long readPcrFromPacket = TsUtil.readPcrFromPacket(parsableByteArray, i2, i);
                if (readPcrFromPacket != C4649C.TIME_UNSET) {
                    return readPcrFromPacket;
                }
            }
        }
        return C4649C.TIME_UNSET;
    }
}
