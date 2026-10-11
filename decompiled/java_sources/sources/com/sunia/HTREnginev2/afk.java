package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.IOException;

/* loaded from: classes5.dex */
public final class afk {

    /* renamed from: l */
    public static final int f64640l = 27;

    /* renamed from: m */
    public static final int f64641m = 255;

    /* renamed from: n */
    public static final int f64642n = 65025;

    /* renamed from: o */
    public static final int f64643o = 65307;

    /* renamed from: p */
    public static final int f64644p = 1332176723;

    /* renamed from: q */
    public static final int f64645q = 4;

    /* renamed from: a */
    public int f64646a;

    /* renamed from: b */
    public int f64647b;

    /* renamed from: c */
    public long f64648c;

    /* renamed from: d */
    public long f64649d;

    /* renamed from: e */
    public long f64650e;

    /* renamed from: f */
    public long f64651f;

    /* renamed from: g */
    public int f64652g;

    /* renamed from: h */
    public int f64653h;

    /* renamed from: i */
    public int f64654i;

    /* renamed from: j */
    public final int[] f64655j = new int[255];

    /* renamed from: k */
    public final ParsableByteArray f64656k = new ParsableByteArray(255);

    /* renamed from: a */
    public boolean m53010a(ExtractorInput extractorInput, boolean z) throws IOException {
        m53011b();
        this.f64656k.reset(27);
        if (!ExtractorUtil.peekFullyQuietly(extractorInput, this.f64656k.getData(), 0, 27, z) || this.f64656k.readUnsignedInt() != 1332176723) {
            return false;
        }
        int readUnsignedByte = this.f64656k.readUnsignedByte();
        this.f64646a = readUnsignedByte;
        if (readUnsignedByte != 0) {
            if (z) {
                return false;
            }
            throw ParserException.createForUnsupportedContainerFeature("unsupported bit stream revision");
        }
        this.f64647b = this.f64656k.readUnsignedByte();
        this.f64648c = this.f64656k.readLittleEndianLong();
        this.f64649d = this.f64656k.readLittleEndianUnsignedInt();
        this.f64650e = this.f64656k.readLittleEndianUnsignedInt();
        this.f64651f = this.f64656k.readLittleEndianUnsignedInt();
        int readUnsignedByte2 = this.f64656k.readUnsignedByte();
        this.f64652g = readUnsignedByte2;
        this.f64653h = readUnsignedByte2 + 27;
        this.f64656k.reset(readUnsignedByte2);
        if (!ExtractorUtil.peekFullyQuietly(extractorInput, this.f64656k.getData(), 0, this.f64652g, z)) {
            return false;
        }
        for (int i = 0; i < this.f64652g; i++) {
            this.f64655j[i] = this.f64656k.readUnsignedByte();
            this.f64654i += this.f64655j[i];
        }
        return true;
    }

    /* renamed from: b */
    public void m53011b() {
        this.f64646a = 0;
        this.f64647b = 0;
        this.f64648c = 0L;
        this.f64649d = 0L;
        this.f64650e = 0L;
        this.f64651f = 0L;
        this.f64652g = 0;
        this.f64653h = 0;
        this.f64654i = 0;
    }

    /* renamed from: c */
    public boolean m53012c(ExtractorInput extractorInput) throws IOException {
        return m53013d(extractorInput, -1L);
    }

    /* renamed from: d */
    public boolean m53013d(ExtractorInput extractorInput, long j) throws IOException {
        Assertions.checkArgument(extractorInput.getPosition() == extractorInput.getPeekPosition());
        this.f64656k.reset(4);
        while (true) {
            if ((j == -1 || extractorInput.getPosition() + 4 < j) && ExtractorUtil.peekFullyQuietly(extractorInput, this.f64656k.getData(), 0, 4, true)) {
                this.f64656k.setPosition(0);
                if (this.f64656k.readUnsignedInt() == 1332176723) {
                    extractorInput.resetPeekPosition();
                    return true;
                }
                extractorInput.skipFully(1);
            }
        }
        do {
            if (j != -1 && extractorInput.getPosition() >= j) {
                break;
            }
        } while (extractorInput.skip(1) != -1);
        return false;
    }
}
