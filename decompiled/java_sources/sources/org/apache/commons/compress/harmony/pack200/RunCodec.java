package org.apache.commons.compress.harmony.pack200;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.utils.ExactMath;

/* loaded from: classes12.dex */
public class RunCodec extends Codec {

    /* renamed from: a */
    public int f106734a;

    /* renamed from: b */
    public final Codec f106735b;

    /* renamed from: c */
    public final Codec f106736c;

    /* renamed from: d */
    public int f106737d;

    public RunCodec(int i, Codec codec, Codec codec2) throws Pack200Exception {
        if (i <= 0) {
            throw new Pack200Exception("Cannot have a RunCodec for a negative number of numbers");
        }
        if (codec == null || codec2 == null) {
            throw new Pack200Exception("Must supply both codecs for a RunCodec");
        }
        this.f106734a = i;
        this.f106735b = codec;
        this.f106736c = codec2;
    }

    /* renamed from: a */
    public final int m66985a(int i, Codec codec) {
        if (codec instanceof BHSDCodec) {
            BHSDCodec bHSDCodec = (BHSDCodec) codec;
            if (bHSDCodec.isDelta()) {
                long cardinality = bHSDCodec.cardinality();
                while (true) {
                    long j = i;
                    if (j <= bHSDCodec.largest()) {
                        break;
                    }
                    i = (int) (j - cardinality);
                }
                while (i < bHSDCodec.smallest()) {
                    i = ExactMath.add(i, cardinality);
                }
            }
        }
        return i;
    }

    /* renamed from: b */
    public final void m66986b(int[] iArr, Codec codec) {
        if (codec instanceof BHSDCodec) {
            BHSDCodec bHSDCodec = (BHSDCodec) codec;
            if (bHSDCodec.isDelta()) {
                long cardinality = bHSDCodec.cardinality();
                for (int i = 0; i < iArr.length; i++) {
                    while (iArr[i] > bHSDCodec.largest()) {
                        iArr[i] = (int) (iArr[i] - cardinality);
                    }
                    while (iArr[i] < bHSDCodec.smallest()) {
                        iArr[i] = ExactMath.add(iArr[i], cardinality);
                    }
                }
                return;
            }
            return;
        }
        if (codec instanceof PopulationCodec) {
            PopulationCodec populationCodec = (PopulationCodec) codec;
            int[] iArr2 = (int[]) populationCodec.getFavoured().clone();
            Arrays.sort(iArr2);
            for (int i2 = 0; i2 < iArr.length; i2++) {
                Codec favouredCodec = Arrays.binarySearch(iArr2, iArr[i2]) > -1 ? populationCodec.getFavouredCodec() : populationCodec.getUnfavouredCodec();
                if (favouredCodec instanceof BHSDCodec) {
                    BHSDCodec bHSDCodec2 = (BHSDCodec) favouredCodec;
                    if (bHSDCodec2.isDelta()) {
                        long cardinality2 = bHSDCodec2.cardinality();
                        while (iArr[i2] > bHSDCodec2.largest()) {
                            iArr[i2] = (int) (iArr[i2] - cardinality2);
                        }
                        while (iArr[i2] < bHSDCodec2.smallest()) {
                            iArr[i2] = ExactMath.add(iArr[i2], cardinality2);
                        }
                    }
                }
            }
        }
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int decode(InputStream inputStream) throws IOException, Pack200Exception {
        return decode(inputStream, this.f106737d);
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int[] decodeInts(int i, InputStream inputStream) throws IOException, Pack200Exception {
        int[] iArr = new int[i];
        int[] decodeInts = this.f106735b.decodeInts(this.f106734a, inputStream);
        m66986b(decodeInts, this.f106735b);
        int[] decodeInts2 = this.f106736c.decodeInts(i - this.f106734a, inputStream);
        m66986b(decodeInts2, this.f106736c);
        System.arraycopy(decodeInts, 0, iArr, 0, this.f106734a);
        int i2 = this.f106734a;
        System.arraycopy(decodeInts2, 0, iArr, i2, i - i2);
        this.lastBandLength = this.f106735b.lastBandLength + this.f106736c.lastBandLength;
        return iArr;
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public byte[] encode(int i, int i2) throws Pack200Exception {
        throw new Pack200Exception("Must encode entire band at once with a RunCodec");
    }

    public Codec getACodec() {
        return this.f106735b;
    }

    public Codec getBCodec() {
        return this.f106736c;
    }

    public int getK() {
        return this.f106734a;
    }

    public String toString() {
        return "RunCodec[k=" + this.f106734a + ";aCodec=" + this.f106735b + "bCodec=" + this.f106736c + IteratorUtils.f104924b;
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public int decode(InputStream inputStream, long j) throws IOException, Pack200Exception {
        int i = this.f106734a - 1;
        this.f106734a = i;
        if (i >= 0) {
            int decode = this.f106735b.decode(inputStream, this.f106737d);
            this.f106737d = this.f106734a == 0 ? 0 : decode;
            return m66985a(decode, this.f106735b);
        }
        int decode2 = this.f106736c.decode(inputStream, this.f106737d);
        this.f106737d = decode2;
        return m66985a(decode2, this.f106736c);
    }

    @Override // org.apache.commons.compress.harmony.pack200.Codec
    public byte[] encode(int i) throws Pack200Exception {
        throw new Pack200Exception("Must encode entire band at once with a RunCodec");
    }
}
