package com.google.zxing.oned.rss;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.OneDReader;
import com.onyx.android.sdk.data.common.data.template.OfficialCoverType;
import com.sunia.HTREnginev2.muk;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public final class RSS14Reader extends AbstractRSSReader {

    /* renamed from: m */
    public static final int[] f38631m = {1, 10, 34, 70, 126};

    /* renamed from: n */
    public static final int[] f38632n = {4, 20, 48, 81};

    /* renamed from: o */
    public static final int[] f38633o = {0, 161, 961, OfficialCoverType.COVER_LITTLE_BUILDING3, 2715};

    /* renamed from: p */
    public static final int[] f38634p = {0, 336, 1036, 1516};

    /* renamed from: q */
    public static final int[] f38635q = {8, 6, 4, 3, 1};

    /* renamed from: r */
    public static final int[] f38636r = {2, 4, 6, 8};

    /* renamed from: s */
    public static final int[][] f38637s = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    /* renamed from: k */
    public final List<muk> f38638k = new ArrayList();

    /* renamed from: l */
    public final List<muk> f38639l = new ArrayList();

    /* renamed from: b */
    public static void m30648b(Collection<muk> collection, muk mukVar) {
        boolean z;
        if (mukVar == null) {
            return;
        }
        Iterator<muk> it2 = collection.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            }
            muk next = it2.next();
            if (next.getValue() == mukVar.getValue()) {
                next.m55688c();
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        collection.add(mukVar);
    }

    /* renamed from: d */
    public static boolean m30649d(muk mukVar, muk mukVar2) {
        int checksumPortion = (mukVar.getChecksumPortion() + (mukVar2.getChecksumPortion() * 16)) % 79;
        int value = (mukVar.m55687b().getValue() * 9) + mukVar2.m55687b().getValue();
        if (value > 72) {
            value--;
        }
        if (value > 8) {
            value--;
        }
        return checksumPortion == value;
    }

    /* renamed from: e */
    public static Result m30650e(muk mukVar, muk mukVar2) {
        String valueOf = String.valueOf((mukVar.getValue() * 4537077) + mukVar2.getValue());
        StringBuilder sb = new StringBuilder(14);
        for (int length = 13 - valueOf.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(valueOf);
        int i = 0;
        for (int i2 = 0; i2 < 13; i2++) {
            int charAt = sb.charAt(i2) - '0';
            if ((i2 & 1) == 0) {
                charAt *= 3;
            }
            i += charAt;
        }
        int i3 = 10 - (i % 10);
        if (i3 == 10) {
            i3 = 0;
        }
        sb.append(i3);
        ResultPoint[] resultPoints = mukVar.m55687b().getResultPoints();
        ResultPoint[] resultPoints2 = mukVar2.m55687b().getResultPoints();
        return new Result(String.valueOf(sb.toString()), null, new ResultPoint[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_14);
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0041, code lost:
    
        r2 = true;
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x003f, code lost:
    
        if (r1 < 4) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0026, code lost:
    
        if (r1 < 4) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
    
        r2 = false;
        r5 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m30651c(boolean r10, int r11) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.rss.RSS14Reader.m30651c(boolean, int):void");
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        m30648b(this.f38638k, m30653g(bitArray, false, i, map));
        bitArray.reverse();
        m30648b(this.f38639l, m30653g(bitArray, true, i, map));
        bitArray.reverse();
        for (muk mukVar : this.f38638k) {
            if (mukVar.m55686a() > 1) {
                for (muk mukVar2 : this.f38639l) {
                    if (mukVar2.m55686a() > 1 && m30649d(mukVar, mukVar2)) {
                        return m30650e(mukVar, mukVar2);
                    }
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: f */
    public final DataCharacter m30652f(BitArray bitArray, FinderPattern finderPattern, boolean z) throws NotFoundException {
        int[] dataCharacterCounters = getDataCharacterCounters();
        dataCharacterCounters[0] = 0;
        dataCharacterCounters[1] = 0;
        dataCharacterCounters[2] = 0;
        dataCharacterCounters[3] = 0;
        dataCharacterCounters[4] = 0;
        dataCharacterCounters[5] = 0;
        dataCharacterCounters[6] = 0;
        dataCharacterCounters[7] = 0;
        if (z) {
            OneDReader.recordPatternInReverse(bitArray, finderPattern.getStartEnd()[0], dataCharacterCounters);
        } else {
            OneDReader.recordPattern(bitArray, finderPattern.getStartEnd()[1] + 1, dataCharacterCounters);
            int i = 0;
            for (int length = dataCharacterCounters.length - 1; i < length; length--) {
                int i2 = dataCharacterCounters[i];
                dataCharacterCounters[i] = dataCharacterCounters[length];
                dataCharacterCounters[length] = i2;
                i++;
            }
        }
        int i3 = z ? 16 : 15;
        float sum = MathUtils.sum(dataCharacterCounters) / i3;
        int[] oddCounts = getOddCounts();
        int[] evenCounts = getEvenCounts();
        float[] oddRoundingErrors = getOddRoundingErrors();
        float[] evenRoundingErrors = getEvenRoundingErrors();
        for (int i4 = 0; i4 < dataCharacterCounters.length; i4++) {
            float f = dataCharacterCounters[i4] / sum;
            int i5 = (int) (0.5f + f);
            if (i5 <= 0) {
                i5 = 1;
            } else if (i5 > 8) {
                i5 = 8;
            }
            int i6 = i4 / 2;
            if ((i4 & 1) == 0) {
                oddCounts[i6] = i5;
                oddRoundingErrors[i6] = f - i5;
            } else {
                evenCounts[i6] = i5;
                evenRoundingErrors[i6] = f - i5;
            }
        }
        m30651c(z, i3);
        int i7 = 0;
        int i8 = 0;
        for (int length2 = oddCounts.length - 1; length2 >= 0; length2--) {
            int i9 = oddCounts[length2];
            i7 = (i7 * 9) + i9;
            i8 += i9;
        }
        int i10 = 0;
        int i11 = 0;
        for (int length3 = evenCounts.length - 1; length3 >= 0; length3--) {
            int i12 = evenCounts[length3];
            i10 = (i10 * 9) + i12;
            i11 += i12;
        }
        int i13 = i7 + (i10 * 3);
        if (!z) {
            if ((i11 & 1) != 0 || i11 > 10 || i11 < 4) {
                throw NotFoundException.getNotFoundInstance();
            }
            int i14 = (10 - i11) / 2;
            int i15 = f38636r[i14];
            return new DataCharacter((RSSUtils.getRSSvalue(evenCounts, 9 - i15, false) * f38632n[i14]) + RSSUtils.getRSSvalue(oddCounts, i15, true) + f38634p[i14], i13);
        }
        if ((i8 & 1) != 0 || i8 > 12 || i8 < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i16 = (12 - i8) / 2;
        int i17 = f38635q[i16];
        return new DataCharacter((RSSUtils.getRSSvalue(oddCounts, i17, false) * f38631m[i16]) + RSSUtils.getRSSvalue(evenCounts, 9 - i17, true) + f38633o[i16], i13);
    }

    /* renamed from: g */
    public final muk m30653g(BitArray bitArray, boolean z, int i, Map<DecodeHintType, ?> map) {
        try {
            FinderPattern m30655i = m30655i(bitArray, i, z, m30654h(bitArray, 0, z));
            ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
            if (resultPointCallback != null) {
                float f = (r2[0] + r2[1]) / 2.0f;
                if (z) {
                    f = (bitArray.getSize() - 1) - f;
                }
                resultPointCallback.foundPossibleResultPoint(new ResultPoint(f, i));
            }
            DataCharacter m30652f = m30652f(bitArray, m30655i, true);
            DataCharacter m30652f2 = m30652f(bitArray, m30655i, false);
            return new muk((m30652f.getValue() * 1597) + m30652f2.getValue(), m30652f.getChecksumPortion() + (m30652f2.getChecksumPortion() * 4), m30655i);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    /* renamed from: h */
    public final int[] m30654h(BitArray bitArray, int i, boolean z) throws NotFoundException {
        int[] decodeFinderCounters = getDecodeFinderCounters();
        decodeFinderCounters[0] = 0;
        decodeFinderCounters[1] = 0;
        decodeFinderCounters[2] = 0;
        decodeFinderCounters[3] = 0;
        int size = bitArray.getSize();
        boolean z2 = false;
        while (i < size) {
            z2 = !bitArray.get(i);
            if (z == z2) {
                break;
            }
            i++;
        }
        int i2 = i;
        int i3 = 0;
        while (i < size) {
            if (bitArray.get(i) ^ z2) {
                decodeFinderCounters[i3] = decodeFinderCounters[i3] + 1;
            } else {
                if (i3 != 3) {
                    i3++;
                } else {
                    if (AbstractRSSReader.isFinderPattern(decodeFinderCounters)) {
                        return new int[]{i2, i};
                    }
                    i2 += decodeFinderCounters[0] + decodeFinderCounters[1];
                    decodeFinderCounters[0] = decodeFinderCounters[2];
                    decodeFinderCounters[1] = decodeFinderCounters[3];
                    decodeFinderCounters[2] = 0;
                    decodeFinderCounters[3] = 0;
                    i3--;
                }
                decodeFinderCounters[i3] = 1;
                z2 = !z2;
            }
            i++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: i */
    public final FinderPattern m30655i(BitArray bitArray, int i, boolean z, int[] iArr) throws NotFoundException {
        int i2;
        int i3;
        boolean z2 = bitArray.get(iArr[0]);
        int i4 = iArr[0] - 1;
        while (i4 >= 0 && (bitArray.get(i4) ^ z2)) {
            i4--;
        }
        int i5 = i4 + 1;
        int i6 = iArr[0] - i5;
        int[] decodeFinderCounters = getDecodeFinderCounters();
        System.arraycopy(decodeFinderCounters, 0, decodeFinderCounters, 1, decodeFinderCounters.length - 1);
        decodeFinderCounters[0] = i6;
        int parseFinderValue = AbstractRSSReader.parseFinderValue(decodeFinderCounters, f38637s);
        int i7 = iArr[1];
        if (z) {
            int size = (bitArray.getSize() - 1) - i5;
            i2 = (bitArray.getSize() - 1) - i7;
            i3 = size;
        } else {
            i2 = i7;
            i3 = i5;
        }
        return new FinderPattern(parseFinderValue, new int[]{i5, iArr[1]}, i3, i2, i);
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.f38638k.clear();
        this.f38639l.clear();
    }
}
