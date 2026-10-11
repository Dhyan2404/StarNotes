package com.sunia.HTREnginev2;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.mkv.EbmlProcessor;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.ArrayDeque;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes5.dex */
public final class hze implements mkf {

    /* renamed from: h */
    public static final int f72703h = 0;

    /* renamed from: i */
    public static final int f72704i = 1;

    /* renamed from: j */
    public static final int f72705j = 2;

    /* renamed from: k */
    public static final int f72706k = 4;

    /* renamed from: l */
    public static final int f72707l = 8;

    /* renamed from: m */
    public static final int f72708m = 8;

    /* renamed from: n */
    public static final int f72709n = 4;

    /* renamed from: o */
    public static final int f72710o = 8;

    /* renamed from: a */
    public final byte[] f72711a = new byte[8];

    /* renamed from: b */
    public final ArrayDeque<C13855b> f72712b = new ArrayDeque<>();

    /* renamed from: c */
    public final m0o f72713c = new m0o();

    /* renamed from: d */
    public EbmlProcessor f72714d;

    /* renamed from: e */
    public int f72715e;

    /* renamed from: f */
    public int f72716f;

    /* renamed from: g */
    public long f72717g;

    /* renamed from: com.sunia.HTREnginev2.hze$b */
    /* loaded from: classes5.dex */
    public static final class C13855b {

        /* renamed from: a */
        public final int f72718a;

        /* renamed from: b */
        public final long f72719b;

        public C13855b(int i, long j) {
            this.f72718a = i;
            this.f72719b = j;
        }
    }

    /* renamed from: e */
    public static String m54652e(ExtractorInput extractorInput, int i) throws IOException {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        extractorInput.readFully(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    @Override // com.sunia.HTREnginev2.mkf
    /* renamed from: a */
    public void mo54653a(EbmlProcessor ebmlProcessor) {
        this.f72714d = ebmlProcessor;
    }

    @RequiresNonNull({"processor"})
    /* renamed from: b */
    public final long m54654b(ExtractorInput extractorInput) throws IOException {
        extractorInput.resetPeekPosition();
        while (true) {
            extractorInput.peekFully(this.f72711a, 0, 4);
            int m55538c = m0o.m55538c(this.f72711a[0]);
            if (m55538c != -1 && m55538c <= 4) {
                int m55537a = (int) m0o.m55537a(this.f72711a, m55538c, false);
                if (this.f72714d.isLevel1Element(m55537a)) {
                    extractorInput.skipFully(m55538c);
                    return m55537a;
                }
            }
            extractorInput.skipFully(1);
        }
    }

    /* renamed from: c */
    public final double m54655c(ExtractorInput extractorInput, int i) throws IOException {
        return i == 4 ? Float.intBitsToFloat((int) r1) : Double.longBitsToDouble(m54656d(extractorInput, i));
    }

    /* renamed from: d */
    public final long m54656d(ExtractorInput extractorInput, int i) throws IOException {
        extractorInput.readFully(this.f72711a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.f72711a[i2] & 255);
        }
        return j;
    }

    @Override // com.sunia.HTREnginev2.mkf
    public boolean read(ExtractorInput extractorInput) throws IOException {
        Assertions.checkStateNotNull(this.f72714d);
        while (true) {
            C13855b peek = this.f72712b.peek();
            if (peek != null && extractorInput.getPosition() >= peek.f72719b) {
                this.f72714d.endMasterElement(this.f72712b.pop().f72718a);
                return true;
            }
            if (this.f72715e == 0) {
                long m55540d = this.f72713c.m55540d(extractorInput, true, false, 4);
                if (m55540d == -2) {
                    m55540d = m54654b(extractorInput);
                }
                if (m55540d == -1) {
                    return false;
                }
                this.f72716f = (int) m55540d;
                this.f72715e = 1;
            }
            if (this.f72715e == 1) {
                this.f72717g = this.f72713c.m55540d(extractorInput, false, true, 8);
                this.f72715e = 2;
            }
            int elementType = this.f72714d.getElementType(this.f72716f);
            if (elementType != 0) {
                if (elementType == 1) {
                    long position = extractorInput.getPosition();
                    this.f72712b.push(new C13855b(this.f72716f, this.f72717g + position));
                    this.f72714d.startMasterElement(this.f72716f, position, this.f72717g);
                    this.f72715e = 0;
                    return true;
                }
                if (elementType == 2) {
                    long j = this.f72717g;
                    if (j <= 8) {
                        this.f72714d.integerElement(this.f72716f, m54656d(extractorInput, (int) j));
                        this.f72715e = 0;
                        return true;
                    }
                    StringBuilder sb = new StringBuilder(42);
                    sb.append("Invalid integer size: ");
                    sb.append(j);
                    throw ParserException.createForMalformedContainer(sb.toString(), null);
                }
                if (elementType == 3) {
                    long j2 = this.f72717g;
                    if (j2 <= 2147483647L) {
                        this.f72714d.stringElement(this.f72716f, m54652e(extractorInput, (int) j2));
                        this.f72715e = 0;
                        return true;
                    }
                    StringBuilder sb2 = new StringBuilder(41);
                    sb2.append("String element size: ");
                    sb2.append(j2);
                    throw ParserException.createForMalformedContainer(sb2.toString(), null);
                }
                if (elementType == 4) {
                    this.f72714d.binaryElement(this.f72716f, (int) this.f72717g, extractorInput);
                    this.f72715e = 0;
                    return true;
                }
                if (elementType != 5) {
                    StringBuilder sb3 = new StringBuilder(32);
                    sb3.append("Invalid element type ");
                    sb3.append(elementType);
                    throw ParserException.createForMalformedContainer(sb3.toString(), null);
                }
                long j3 = this.f72717g;
                if (j3 == 4 || j3 == 8) {
                    this.f72714d.floatElement(this.f72716f, m54655c(extractorInput, (int) j3));
                    this.f72715e = 0;
                    return true;
                }
                StringBuilder sb4 = new StringBuilder(40);
                sb4.append("Invalid float size: ");
                sb4.append(j3);
                throw ParserException.createForMalformedContainer(sb4.toString(), null);
            }
            extractorInput.skipFully((int) this.f72717g);
            this.f72715e = 0;
        }
    }

    @Override // com.sunia.HTREnginev2.mkf
    public void reset() {
        this.f72715e = 0;
        this.f72712b.clear();
        this.f72713c.m55541e();
    }
}
