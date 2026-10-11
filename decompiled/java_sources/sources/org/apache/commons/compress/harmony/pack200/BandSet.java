package org.apache.commons.compress.harmony.pack200;

import com.sunia.HTREnginev2.C14239pg;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.IntConsumer;
import java.util.function.IntUnaryOperator;
import java.util.function.ToIntFunction;
import java.util.stream.IntStream;
import org.apache.commons.compress.harmony.pack200.BandSet;
import org.apache.commons.compress.harmony.pack200.SegmentHeader;

/* loaded from: classes12.dex */
public abstract class BandSet {

    /* renamed from: d */
    public static final int[] f106432d = {0, 0, 1000, 500, 100, 100, 100, 100, 100, 0};

    /* renamed from: a */
    public final int f106433a;

    /* renamed from: b */
    public long[] f106434b;

    /* renamed from: c */
    public long[] f106435c;
    protected final SegmentHeader segmentHeader;

    /* loaded from: classes12.dex */
    public class BandAnalysisResults {

        /* renamed from: a */
        public int f106436a = 0;

        /* renamed from: b */
        public int f106437b = 0;

        /* renamed from: c */
        public int[] f106438c;

        /* renamed from: d */
        public byte[] f106439d;

        /* renamed from: e */
        public Codec f106440e;

        public BandAnalysisResults() {
        }

        /* renamed from: i */
        public static /* synthetic */ int m66887i(BandAnalysisResults bandAnalysisResults) {
            int i = bandAnalysisResults.f106436a;
            bandAnalysisResults.f106436a = i + 1;
            return i;
        }
    }

    /* loaded from: classes12.dex */
    public class BandData {

        /* renamed from: a */
        public final int[] f106442a;

        /* renamed from: b */
        public int f106443b;

        /* renamed from: c */
        public int f106444c;

        /* renamed from: d */
        public int f106445d;

        /* renamed from: e */
        public int f106446e;

        /* renamed from: f */
        public int f106447f = 0;

        /* renamed from: g */
        public int f106448g = 0;

        /* renamed from: h */
        public double f106449h = 0.0d;

        /* renamed from: i */
        public double f106450i = 0.0d;

        /* renamed from: j */
        public Map<Integer, Integer> f106451j;

        public BandData(int[] iArr) {
            this.f106443b = Integer.MAX_VALUE;
            this.f106444c = Integer.MIN_VALUE;
            this.f106442a = iArr;
            for (int i = 0; i < iArr.length; i++) {
                int i2 = iArr[i];
                if (i2 < this.f106443b) {
                    this.f106443b = i2;
                }
                if (i2 > this.f106444c) {
                    this.f106444c = i2;
                }
                if (i != 0) {
                    int i3 = i2 - iArr[i - 1];
                    if (i3 < this.f106445d) {
                        this.f106445d = i3;
                    }
                    if (i3 > this.f106446e) {
                        this.f106446e = i3;
                    }
                    if (i3 >= 0) {
                        this.f106447f++;
                    }
                    this.f106449h += Math.abs(i3) / (iArr.length - 1);
                    if (Math.abs(i3) < 256) {
                        this.f106448g++;
                    }
                } else {
                    int i4 = iArr[0];
                    this.f106445d = i4;
                    this.f106446e = i4;
                }
                this.f106450i += Math.abs(iArr[i]) / iArr.length;
                if (BandSet.this.f106433a > 3) {
                    if (this.f106451j == null) {
                        this.f106451j = new HashMap();
                    }
                    Integer valueOf = Integer.valueOf(iArr[i]);
                    Integer num = this.f106451j.get(valueOf);
                    this.f106451j.put(valueOf, num == null ? 1 : Integer.valueOf(num.intValue() + 1));
                }
            }
        }

        public boolean anyNegatives() {
            return this.f106443b < 0;
        }

        public boolean mainlyPositiveDeltas() {
            return ((float) this.f106447f) / ((float) this.f106442a.length) > 0.95f;
        }

        public boolean mainlySmallDeltas() {
            return ((float) this.f106448g) / ((float) this.f106442a.length) > 0.7f;
        }

        public int numDistinctValues() {
            Map<Integer, Integer> map = this.f106451j;
            return map == null ? this.f106442a.length : map.size();
        }

        public boolean wellCorrelated() {
            return this.f106449h * 3.1d < this.f106450i;
        }
    }

    public BandSet(int i, SegmentHeader segmentHeader) {
        this.f106433a = i;
        this.segmentHeader = segmentHeader;
    }

    /* renamed from: g */
    public static /* synthetic */ int m66871g(long[] jArr, int i) {
        return (int) jArr[i];
    }

    /* renamed from: h */
    public static /* synthetic */ void m66872h(Map map, List list, Integer num, Integer num2) {
        if (num2.intValue() > 2 || map.size() < 256) {
            list.add(num);
        }
    }

    /* renamed from: i */
    public static /* synthetic */ int m66873i(Map map, Integer num, Integer num2) {
        return ((Integer) map.get(num2)).compareTo((Integer) map.get(num));
    }

    public int[] cpEntryListToArray(List<? extends ConstantPoolEntry> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            int index = list.get(i).getIndex();
            iArr[i] = index;
            if (index < 0) {
                throw new IllegalArgumentException("Index should be > 0");
            }
        }
        return iArr;
    }

    public int[] cpEntryOrNullListToArray(List<? extends ConstantPoolEntry> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            ConstantPoolEntry constantPoolEntry = list.get(i);
            iArr[i] = constantPoolEntry == null ? 0 : constantPoolEntry.getIndex() + 1;
            if (constantPoolEntry != null && constantPoolEntry.getIndex() < 0) {
                throw new IllegalArgumentException("Index should be > 0");
            }
        }
        return iArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0099, code lost:
    
        if (r0 >= 0.04d) goto L32;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.commons.compress.harmony.pack200.BandSet.BandAnalysisResults m66874d(java.lang.String r13, int[] r14, org.apache.commons.compress.harmony.pack200.BHSDCodec r15) throws org.apache.commons.compress.harmony.pack200.Pack200Exception {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.harmony.pack200.BandSet.m66874d(java.lang.String, int[], org.apache.commons.compress.harmony.pack200.BHSDCodec):org.apache.commons.compress.harmony.pack200.BandSet$BandAnalysisResults");
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00f1  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m66875e(java.lang.String r17, int[] r18, org.apache.commons.compress.harmony.pack200.BHSDCodec r19, org.apache.commons.compress.harmony.pack200.BandSet.BandData r20, org.apache.commons.compress.harmony.pack200.BandSet.BandAnalysisResults r21) throws org.apache.commons.compress.harmony.pack200.Pack200Exception {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.harmony.pack200.BandSet.m66875e(java.lang.String, int[], org.apache.commons.compress.harmony.pack200.BHSDCodec, org.apache.commons.compress.harmony.pack200.BandSet$BandData, org.apache.commons.compress.harmony.pack200.BandSet$BandAnalysisResults):void");
    }

    public byte[] encodeBandInt(String str, int[] iArr, BHSDCodec bHSDCodec) throws Pack200Exception {
        byte[] bArr;
        int i = this.f106433a;
        if (i <= 1 || iArr.length < f106432d[i]) {
            bArr = null;
        } else {
            BandAnalysisResults m66874d = m66874d(str, iArr, bHSDCodec);
            Codec codec = m66874d.f106440e;
            bArr = m66874d.f106439d;
            if (codec != null) {
                if (codec instanceof BHSDCodec) {
                    int[] specifier = CodecEncoding.getSpecifier(codec, bHSDCodec);
                    int i2 = specifier[0];
                    if (specifier.length > 1) {
                        for (int i3 = 1; i3 < specifier.length; i3++) {
                            this.segmentHeader.appendBandCodingSpecifier(specifier[i3]);
                        }
                    }
                    byte[] encode = bHSDCodec.encode(new int[]{bHSDCodec.isSigned() ? (-1) - i2 : i2 + bHSDCodec.getL()});
                    byte[] bArr2 = new byte[encode.length + bArr.length];
                    System.arraycopy(encode, 0, bArr2, 0, encode.length);
                    System.arraycopy(bArr, 0, bArr2, encode.length, bArr.length);
                    return bArr2;
                }
                if (codec instanceof PopulationCodec) {
                    IntStream of = IntStream.of(m66874d.f106438c);
                    final SegmentHeader segmentHeader = this.segmentHeader;
                    segmentHeader.getClass();
                    of.forEach(new IntConsumer() { // from class: com.sunia.HTREnginev2.lm
                        @Override // java.util.function.IntConsumer
                        public final void accept(int i4) {
                            SegmentHeader.this.appendBandCodingSpecifier(i4);
                        }
                    });
                    return bArr;
                }
                boolean z = codec instanceof RunCodec;
            }
        }
        if (iArr.length <= 0) {
            return new byte[0];
        }
        if (bArr == null) {
            bArr = bHSDCodec.encode(iArr);
        }
        int i4 = iArr[0];
        if (bHSDCodec.getB() != 1) {
            if (bHSDCodec.isSigned() && i4 >= -256 && i4 <= -1) {
                byte[] encode2 = bHSDCodec.encode(new int[]{(-1) - CodecEncoding.getSpecifierForDefaultCodec(bHSDCodec)});
                byte[] bArr3 = new byte[encode2.length + bArr.length];
                System.arraycopy(encode2, 0, bArr3, 0, encode2.length);
                System.arraycopy(bArr, 0, bArr3, encode2.length, bArr.length);
                return bArr3;
            }
            if (!bHSDCodec.isSigned() && i4 >= bHSDCodec.getL() && i4 <= bHSDCodec.getL() + 255) {
                byte[] encode3 = bHSDCodec.encode(new int[]{CodecEncoding.getSpecifierForDefaultCodec(bHSDCodec) + bHSDCodec.getL()});
                byte[] bArr4 = new byte[encode3.length + bArr.length];
                System.arraycopy(encode3, 0, bArr4, 0, encode3.length);
                System.arraycopy(bArr, 0, bArr4, encode3.length, bArr.length);
                return bArr4;
            }
        }
        return bArr;
    }

    public byte[] encodeFlags(String str, final long[] jArr, BHSDCodec bHSDCodec, BHSDCodec bHSDCodec2, boolean z) throws Pack200Exception {
        if (!z) {
            int[] iArr = new int[jArr.length];
            Arrays.setAll(iArr, new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.jm
                @Override // java.util.function.IntUnaryOperator
                public final int applyAsInt(int i) {
                    int m66871g;
                    m66871g = BandSet.m66871g(jArr, i);
                    return m66871g;
                }
            });
            return encodeBandInt(str, iArr, bHSDCodec);
        }
        int[] iArr2 = new int[jArr.length];
        int[] iArr3 = new int[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            long j = jArr[i];
            iArr2[i] = (int) (j >> 32);
            iArr3[i] = (int) j;
        }
        byte[] encodeBandInt = encodeBandInt(str, iArr2, bHSDCodec2);
        byte[] encodeBandInt2 = encodeBandInt(str, iArr3, bHSDCodec);
        byte[] bArr = new byte[encodeBandInt.length + encodeBandInt2.length];
        System.arraycopy(encodeBandInt, 0, bArr, 0, encodeBandInt.length);
        System.arraycopy(encodeBandInt2, 0, bArr, encodeBandInt.length + 1, encodeBandInt2.length);
        return bArr;
    }

    public byte[] encodeScalar(int[] iArr, BHSDCodec bHSDCodec) throws Pack200Exception {
        return bHSDCodec.encode(iArr);
    }

    /* renamed from: f */
    public final long[] m66876f(long[][] jArr) {
        int i = 0;
        for (long[] jArr2 : jArr) {
            i += jArr2.length;
        }
        long[] jArr3 = new long[i];
        int i2 = 0;
        for (long[] jArr4 : jArr) {
            for (long j : jArr4) {
                jArr3[i2] = j;
                i2++;
            }
        }
        return jArr3;
    }

    public int[] integerListToArray(List<Integer> list) {
        return list.stream().mapToInt(new ToIntFunction() { // from class: com.sunia.HTREnginev2.km
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Integer) obj).intValue();
            }
        }).toArray();
    }

    /* renamed from: j */
    public final boolean m66877j(BandAnalysisResults bandAnalysisResults) {
        return this.f106433a > 6 ? bandAnalysisResults.f106436a >= this.f106433a * 2 : bandAnalysisResults.f106436a >= this.f106433a;
    }

    /* renamed from: k */
    public final void m66878k(String str, int[] iArr, BHSDCodec bHSDCodec, BandData bandData, BandAnalysisResults bandAnalysisResults, byte[] bArr, BHSDCodec[] bHSDCodecArr) throws Pack200Exception {
        for (BHSDCodec bHSDCodec2 : bHSDCodecArr) {
            if (bHSDCodec2.equals(bHSDCodec)) {
                return;
            }
            if (bHSDCodec2.isDelta()) {
                if (bHSDCodec2.largest() >= bandData.f106446e && bHSDCodec2.smallest() <= bandData.f106445d && bHSDCodec2.largest() >= bandData.f106444c && bHSDCodec2.smallest() <= bandData.f106443b) {
                    byte[] encode = bHSDCodec2.encode(iArr);
                    BandAnalysisResults.m66887i(bandAnalysisResults);
                    int length = (bArr.length - encode.length) - bHSDCodec.encode(CodecEncoding.getSpecifier(bHSDCodec2, null)).length;
                    if (length > bandAnalysisResults.f106437b) {
                        bandAnalysisResults.f106440e = bHSDCodec2;
                        bandAnalysisResults.f106439d = encode;
                        bandAnalysisResults.f106437b = length;
                    }
                }
            } else if (bHSDCodec2.largest() >= bandData.f106444c && bHSDCodec2.smallest() <= bandData.f106443b) {
                byte[] encode2 = bHSDCodec2.encode(iArr);
                BandAnalysisResults.m66887i(bandAnalysisResults);
                int length2 = (bArr.length - encode2.length) - bHSDCodec.encode(CodecEncoding.getSpecifier(bHSDCodec2, null)).length;
                if (length2 > bandAnalysisResults.f106437b) {
                    bandAnalysisResults.f106440e = bHSDCodec2;
                    bandAnalysisResults.f106439d = encode2;
                    bandAnalysisResults.f106437b = length2;
                }
            }
            if (m66877j(bandAnalysisResults)) {
                return;
            }
        }
    }

    public long[] longListToArray(List<Long> list) {
        return list.stream().mapToLong(new C14239pg()).toArray();
    }

    public abstract void pack(OutputStream outputStream) throws IOException, Pack200Exception;

    public byte[] encodeScalar(int i, BHSDCodec bHSDCodec) throws Pack200Exception {
        return bHSDCodec.encode(i);
    }

    public byte[] encodeFlags(String str, long[][] jArr, BHSDCodec bHSDCodec, BHSDCodec bHSDCodec2, boolean z) throws Pack200Exception {
        return encodeFlags(str, m66876f(jArr), bHSDCodec, bHSDCodec2, z);
    }
}
