package org.apache.commons.compress.harmony.pack200;

import com.fasterxml.jackson.core.base.ParserBase;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.function.IntToLongFunction;
import org.apache.commons.compress.harmony.pack200.BHSDCodec;
import org.apache.commons.compress.utils.ExactMath;

/* loaded from: classes12.dex */
public final class BHSDCodec extends Codec {

    /* renamed from: a */
    public final int f106423a;

    /* renamed from: b */
    public final int f106424b;

    /* renamed from: c */
    public final int f106425c;

    /* renamed from: d */
    public final int f106426d;

    /* renamed from: e */
    public final int f106427e;

    /* renamed from: f */
    public long f106428f;

    /* renamed from: g */
    public final long f106429g;

    /* renamed from: h */
    public final long f106430h;

    /* renamed from: i */
    public final long[] f106431i;

    public BHSDCodec(int i, int i2) {
        this(i, i2, 0, 0);
    }

    /* renamed from: d */
    public static /* synthetic */ long m66865d(int i, int i2) {
        return (long) Math.pow(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m66866b() {
        /*
            r6 = this;
            int r0 = r6.f106424b
            r1 = 1
            if (r0 != r1) goto L13
            org.apache.commons.compress.harmony.pack200.BHSDCodec r0 = new org.apache.commons.compress.harmony.pack200.BHSDCodec
            int r1 = r6.f106423a
            int r6 = r6.f106425c
            r0.<init>(r1, r6)
            long r0 = r0.largest()
            return r0
        L13:
            int r0 = r6.f106427e
            r2 = 1
            if (r0 != 0) goto L1f
            long r0 = r6.cardinality()
        L1d:
            long r0 = r0 - r2
            goto L38
        L1f:
            if (r0 != r1) goto L29
            long r0 = r6.cardinality()
            r4 = 2
            long r0 = r0 / r4
            goto L1d
        L29:
            r1 = 2
            if (r0 != r1) goto L4b
            r0 = 3
            long r4 = r6.cardinality()
            long r4 = r4 * r0
            r0 = 4
            long r4 = r4 / r0
            long r0 = r4 - r2
        L38:
            int r6 = r6.f106427e
            if (r6 != 0) goto L42
            r4 = 4294967294(0xfffffffe, double:2.12199579E-314)
            goto L45
        L42:
            r4 = 2147483647(0x7fffffff, double:1.060997895E-314)
        L45:
            long r4 = r4 - r2
            long r0 = java.lang.Math.min(r4, r0)
            return r0
        L4b:
            java.lang.Error r6 = new java.lang.Error
            java.lang.String r0 = "Unknown s value"
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.harmony.pack200.BHSDCodec.m66866b():long");
    }

    /* renamed from: c */
    public final long m66867c() {
        if (this.f106424b != 1 && isSigned()) {
            return Math.max(ParserBase.f21225q, (-cardinality()) / (1 << this.f106427e));
        }
        if (this.f106428f >= 4294967296L) {
            return ParserBase.f21225q;
        }
        return 0L;
    }

    public long cardinality() {
        return this.f106428f;
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int decode(InputStream inputStream) throws IOException, Pack200Exception {
        if (this.f106424b == 0) {
            return decode(inputStream, 0L);
        }
        throw new Pack200Exception("Delta encoding used without passing in last value; this is a coding error");
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int[] decodeInts(int i, InputStream inputStream) throws IOException, Pack200Exception {
        int[] decodeInts = super.decodeInts(i, inputStream);
        if (isDelta()) {
            for (int i2 = 0; i2 < decodeInts.length; i2++) {
                while (true) {
                    int i3 = decodeInts[i2];
                    if (i3 <= this.f106430h) {
                        break;
                    }
                    decodeInts[i2] = (int) (i3 - this.f106428f);
                }
                while (true) {
                    int i4 = decodeInts[i2];
                    if (i4 < this.f106429g) {
                        decodeInts[i2] = ExactMath.add(i4, this.f106428f);
                    }
                }
            }
        }
        return decodeInts;
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public byte[] encode(int i, int i2) throws Pack200Exception {
        long j;
        long j2 = i;
        if (encodes(j2)) {
            if (isDelta()) {
                j2 -= i2;
            }
            if (isSigned()) {
                if (j2 < ParserBase.f21225q) {
                    j2 += 4294967296L;
                } else if (j2 > 2147483647L) {
                    j2 -= 4294967296L;
                }
                if (j2 < 0) {
                    j2 = ((-j2) << this.f106427e) - 1;
                } else {
                    int i3 = this.f106427e;
                    j2 = i3 == 1 ? j2 << i3 : j2 + ((j2 - (j2 % 3)) / 3);
                }
            } else if (j2 < 0) {
                j2 += Math.min(this.f106428f, 4294967296L);
            }
            if (j2 >= 0) {
                ArrayList arrayList = new ArrayList();
                for (int i4 = 0; i4 < this.f106423a; i4++) {
                    if (j2 < this.f106426d) {
                        j = j2;
                    } else {
                        j = j2 % this.f106425c;
                        while (j < this.f106426d) {
                            j += this.f106425c;
                        }
                    }
                    arrayList.add(Byte.valueOf((byte) j));
                    if (j < this.f106426d) {
                        break;
                    }
                    j2 = (j2 - j) / this.f106425c;
                }
                int size = arrayList.size();
                byte[] bArr = new byte[size];
                for (int i5 = 0; i5 < size; i5++) {
                    bArr[i5] = ((Byte) arrayList.get(i5)).byteValue();
                }
                return bArr;
            }
            throw new Pack200Exception("unable to encode");
        }
        throw new Pack200Exception("The codec " + this + " does not encode the value " + i);
    }

    public boolean encodes(long j) {
        return j >= this.f106429g && j <= this.f106430h;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BHSDCodec)) {
            return false;
        }
        BHSDCodec bHSDCodec = (BHSDCodec) obj;
        return bHSDCodec.f106423a == this.f106423a && bHSDCodec.f106425c == this.f106425c && bHSDCodec.f106427e == this.f106427e && bHSDCodec.f106424b == this.f106424b;
    }

    public int getB() {
        return this.f106423a;
    }

    public int getH() {
        return this.f106425c;
    }

    public int getL() {
        return this.f106426d;
    }

    public int getS() {
        return this.f106427e;
    }

    public int hashCode() {
        return (((((this.f106423a * 37) + this.f106425c) * 37) + this.f106427e) * 37) + this.f106424b;
    }

    public boolean isDelta() {
        return this.f106424b != 0;
    }

    public boolean isSigned() {
        return this.f106427e != 0;
    }

    public long largest() {
        return this.f106430h;
    }

    public long smallest() {
        return this.f106429g;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(11);
        sb.append('(');
        sb.append(this.f106423a);
        sb.append(',');
        sb.append(this.f106425c);
        if (this.f106427e != 0 || this.f106424b != 0) {
            sb.append(',');
            sb.append(this.f106427e);
        }
        if (this.f106424b != 0) {
            sb.append(',');
            sb.append(this.f106424b);
        }
        sb.append(')');
        return sb.toString();
    }

    public BHSDCodec(int i, int i2, int i3) {
        this(i, i2, i3, 0);
    }

    public BHSDCodec(int i, final int i2, int i3, int i4) {
        if (i < 1 || i > 5) {
            throw new IllegalArgumentException("1<=b<=5");
        }
        if (i2 < 1 || i2 > 256) {
            throw new IllegalArgumentException("1<=h<=256");
        }
        if (i3 < 0 || i3 > 2) {
            throw new IllegalArgumentException("0<=s<=2");
        }
        if (i4 < 0 || i4 > 1) {
            throw new IllegalArgumentException("0<=d<=1");
        }
        if (i == 1 && i2 != 256) {
            throw new IllegalArgumentException("b=1 -> h=256");
        }
        if (i2 == 256 && i == 5) {
            throw new IllegalArgumentException("h=256 -> b!=5");
        }
        this.f106423a = i;
        this.f106425c = i2;
        this.f106427e = i3;
        this.f106424b = i4;
        this.f106426d = 256 - i2;
        if (i2 == 1) {
            this.f106428f = (i * 255) + 1;
        } else {
            this.f106428f = (long) (((long) ((r11 * (1.0d - Math.pow(r0, r2))) / (1 - i2))) + Math.pow(i2, i));
        }
        this.f106429g = m66867c();
        this.f106430h = m66866b();
        long[] jArr = new long[i];
        this.f106431i = jArr;
        Arrays.setAll(jArr, new IntToLongFunction() { // from class: com.sunia.HTREnginev2.pl
            @Override // java.util.function.IntToLongFunction
            public final long applyAsLong(int i5) {
                long m66865d;
                m66865d = BHSDCodec.m66865d(i2, i5);
                return m66865d;
            }
        });
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int decode(InputStream inputStream, long j) throws IOException, Pack200Exception {
        long read;
        int i = 0;
        long j2 = 0;
        do {
            read = inputStream.read();
            this.lastBandLength++;
            j2 += this.f106431i[i] * read;
            i++;
            if (read < this.f106426d) {
                break;
            }
        } while (i < this.f106423a);
        if (read != -1) {
            if (isSigned()) {
                int i2 = this.f106427e;
                long j3 = (1 << i2) - 1;
                j2 = (j2 & j3) == j3 ? ~(j2 >>> i2) : j2 - (j2 >>> i2);
            }
            if (isDelta()) {
                j2 += j;
            }
            return (int) j2;
        }
        throw new EOFException("End of stream reached whilst decoding");
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int[] decodeInts(int i, InputStream inputStream, int i2) throws IOException, Pack200Exception {
        int[] decodeInts = super.decodeInts(i, inputStream, i2);
        if (isDelta()) {
            for (int i3 = 0; i3 < decodeInts.length; i3++) {
                while (true) {
                    int i4 = decodeInts[i3];
                    if (i4 <= this.f106430h) {
                        break;
                    }
                    decodeInts[i3] = (int) (i4 - this.f106428f);
                }
                while (true) {
                    int i5 = decodeInts[i3];
                    if (i5 < this.f106429g) {
                        decodeInts[i3] = ExactMath.add(i5, this.f106428f);
                    }
                }
            }
        }
        return decodeInts;
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public byte[] encode(int i) throws Pack200Exception {
        return encode(i, 0);
    }
}
