package com.google.android.exoplayer2.extractor.p007ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class PesReader implements TsPayloadReader {

    /* renamed from: m */
    public static final String f24583m = "PesReader";

    /* renamed from: n */
    public static final int f24584n = 0;

    /* renamed from: o */
    public static final int f24585o = 1;

    /* renamed from: p */
    public static final int f24586p = 2;

    /* renamed from: q */
    public static final int f24587q = 3;

    /* renamed from: r */
    public static final int f24588r = 9;

    /* renamed from: s */
    public static final int f24589s = 10;

    /* renamed from: t */
    public static final int f24590t = 10;

    /* renamed from: a */
    public final ElementaryStreamReader f24591a;

    /* renamed from: b */
    public final ParsableBitArray f24592b = new ParsableBitArray(new byte[10]);

    /* renamed from: c */
    public int f24593c = 0;

    /* renamed from: d */
    public int f24594d;

    /* renamed from: e */
    public TimestampAdjuster f24595e;

    /* renamed from: f */
    public boolean f24596f;

    /* renamed from: g */
    public boolean f24597g;

    /* renamed from: h */
    public boolean f24598h;

    /* renamed from: i */
    public int f24599i;

    /* renamed from: j */
    public int f24600j;

    /* renamed from: k */
    public boolean f24601k;

    /* renamed from: l */
    public long f24602l;

    public PesReader(ElementaryStreamReader elementaryStreamReader) {
        this.f24591a = elementaryStreamReader;
    }

    /* renamed from: a */
    public final boolean m19154a(ParsableByteArray parsableByteArray, @Nullable byte[] bArr, int i) {
        int min = Math.min(parsableByteArray.bytesLeft(), i - this.f24594d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            parsableByteArray.skipBytes(min);
        } else {
            parsableByteArray.readBytes(bArr, this.f24594d, min);
        }
        int i2 = this.f24594d + min;
        this.f24594d = i2;
        return i2 == i;
    }

    /* renamed from: b */
    public final boolean m19155b() {
        this.f24592b.setPosition(0);
        int readBits = this.f24592b.readBits(24);
        if (readBits != 1) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Unexpected start code prefix: ");
            sb.append(readBits);
            Log.m21493w(f24583m, sb.toString());
            this.f24600j = -1;
            return false;
        }
        this.f24592b.skipBits(8);
        int readBits2 = this.f24592b.readBits(16);
        this.f24592b.skipBits(5);
        this.f24601k = this.f24592b.readBit();
        this.f24592b.skipBits(2);
        this.f24596f = this.f24592b.readBit();
        this.f24597g = this.f24592b.readBit();
        this.f24592b.skipBits(6);
        int readBits3 = this.f24592b.readBits(8);
        this.f24599i = readBits3;
        if (readBits2 == 0) {
            this.f24600j = -1;
        } else {
            int i = ((readBits2 + 6) - 9) - readBits3;
            this.f24600j = i;
            if (i < 0) {
                StringBuilder sb2 = new StringBuilder(47);
                sb2.append("Found negative packet payload size: ");
                sb2.append(i);
                Log.m21493w(f24583m, sb2.toString());
                this.f24600j = -1;
            }
        }
        return true;
    }

    @RequiresNonNull({"timestampAdjuster"})
    /* renamed from: c */
    public final void m19156c() {
        this.f24592b.setPosition(0);
        this.f24602l = C4649C.TIME_UNSET;
        if (this.f24596f) {
            this.f24592b.skipBits(4);
            this.f24592b.skipBits(1);
            this.f24592b.skipBits(1);
            long readBits = (this.f24592b.readBits(3) << 30) | (this.f24592b.readBits(15) << 15) | this.f24592b.readBits(15);
            this.f24592b.skipBits(1);
            if (!this.f24598h && this.f24597g) {
                this.f24592b.skipBits(4);
                this.f24592b.skipBits(1);
                this.f24592b.skipBits(1);
                this.f24592b.skipBits(1);
                this.f24595e.adjustTsTimestamp((this.f24592b.readBits(3) << 30) | (this.f24592b.readBits(15) << 15) | this.f24592b.readBits(15));
                this.f24598h = true;
            }
            this.f24602l = this.f24595e.adjustTsTimestamp(readBits);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader
    public final void consume(ParsableByteArray parsableByteArray, int i) throws ParserException {
        Assertions.checkStateNotNull(this.f24595e);
        if ((i & 1) != 0) {
            int i2 = this.f24593c;
            if (i2 != 0 && i2 != 1) {
                if (i2 == 2) {
                    Log.m21493w(f24583m, "Unexpected start indicator reading extended header");
                } else {
                    if (i2 != 3) {
                        throw new IllegalStateException();
                    }
                    int i3 = this.f24600j;
                    if (i3 != -1) {
                        StringBuilder sb = new StringBuilder(59);
                        sb.append("Unexpected start indicator: expected ");
                        sb.append(i3);
                        sb.append(" more bytes");
                        Log.m21493w(f24583m, sb.toString());
                    }
                    this.f24591a.packetFinished();
                }
            }
            m19157d(1);
        }
        while (parsableByteArray.bytesLeft() > 0) {
            int i4 = this.f24593c;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 == 2) {
                        if (m19154a(parsableByteArray, this.f24592b.data, Math.min(10, this.f24599i)) && m19154a(parsableByteArray, null, this.f24599i)) {
                            m19156c();
                            i |= this.f24601k ? 4 : 0;
                            this.f24591a.packetStarted(this.f24602l, i);
                            m19157d(3);
                        }
                    } else {
                        if (i4 != 3) {
                            throw new IllegalStateException();
                        }
                        int bytesLeft = parsableByteArray.bytesLeft();
                        int i5 = this.f24600j;
                        int i6 = i5 != -1 ? bytesLeft - i5 : 0;
                        if (i6 > 0) {
                            bytesLeft -= i6;
                            parsableByteArray.setLimit(parsableByteArray.getPosition() + bytesLeft);
                        }
                        this.f24591a.consume(parsableByteArray);
                        int i7 = this.f24600j;
                        if (i7 != -1) {
                            int i8 = i7 - bytesLeft;
                            this.f24600j = i8;
                            if (i8 == 0) {
                                this.f24591a.packetFinished();
                                m19157d(1);
                            }
                        }
                    }
                } else if (m19154a(parsableByteArray, this.f24592b.data, 9)) {
                    m19157d(m19155b() ? 2 : 0);
                }
            } else {
                parsableByteArray.skipBytes(parsableByteArray.bytesLeft());
            }
        }
    }

    /* renamed from: d */
    public final void m19157d(int i) {
        this.f24593c = i;
        this.f24594d = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader
    public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.f24595e = timestampAdjuster;
        this.f24591a.createTracks(extractorOutput, trackIdGenerator);
    }

    @Override // com.google.android.exoplayer2.extractor.p007ts.TsPayloadReader
    public final void seek() {
        this.f24593c = 0;
        this.f24594d = 0;
        this.f24598h = false;
        this.f24591a.seek();
    }
}
