package com.google.zxing.oned.rss.expanded;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.OneDReader;
import com.google.zxing.oned.rss.AbstractRSSReader;
import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;
import com.google.zxing.oned.rss.RSSUtils;
import com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.sunia.HTREnginev2.C14778zr;
import com.sunia.HTREnginev2.r1g;
import com.sunia.HTREnginev2.s1g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public final class RSSExpandedReader extends AbstractRSSReader {

    /* renamed from: A */
    public static final int f38640A = 11;

    /* renamed from: t */
    public static final int f38646t = 0;

    /* renamed from: u */
    public static final int f38647u = 1;

    /* renamed from: v */
    public static final int f38648v = 2;

    /* renamed from: w */
    public static final int f38649w = 3;

    /* renamed from: x */
    public static final int f38650x = 4;

    /* renamed from: y */
    public static final int f38651y = 5;

    /* renamed from: k */
    public final List<r1g> f38653k = new ArrayList(11);

    /* renamed from: l */
    public final List<s1g> f38654l = new ArrayList();

    /* renamed from: m */
    public final int[] f38655m = new int[2];

    /* renamed from: n */
    public boolean f38656n;

    /* renamed from: o */
    public static final int[] f38641o = {7, 5, 4, 3, 1};

    /* renamed from: p */
    public static final int[] f38642p = {4, 20, 52, 104, 204};

    /* renamed from: q */
    public static final int[] f38643q = {0, DataBinderMapperImpl.f53054J5, 1388, 2948, 3988};

    /* renamed from: r */
    public static final int[][] f38644r = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};

    /* renamed from: s */
    public static final int[][] f38645s = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, 118, 143, 7, 21, 63}, new int[]{189, 145, 13, 39, 117, 140, 209, 205}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, 136, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, 108}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, 138, 203, 187, 139, 206, 196, 166}, new int[]{76, 17, 51, 153, 37, 111, 122, 155}, new int[]{43, 129, 176, 106, 107, 110, 119, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{109, 116, 137, 200, 178, 112, 125, 164}, new int[]{70, 210, 208, 202, 184, 130, 179, 115}, new int[]{134, 191, 151, 31, 93, 68, 204, 190}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, 126, 167}, new int[]{79, 26, 78, 23, 69, 207, 199, 175}, new int[]{103, 98, 83, 38, 114, 131, 182, 124}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, 194, 160, 58, 174, 100, 89}};

    /* renamed from: z */
    public static final int[][] f38652z = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};

    /* renamed from: f */
    public static Result m30657f(List<r1g> list) throws NotFoundException, FormatException {
        String parseInformation = AbstractExpandedDecoder.createDecoder(C14778zr.m58752a(list)).parseInformation();
        ResultPoint[] resultPoints = list.get(0).m56880b().getResultPoints();
        ResultPoint[] resultPoints2 = list.get(list.size() - 1).m56880b().getResultPoints();
        return new Result(parseInformation, null, new ResultPoint[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_EXPANDED);
    }

    /* renamed from: j */
    public static int m30658j(BitArray bitArray, int i) {
        return bitArray.get(i) ? bitArray.getNextSet(bitArray.getNextUnset(i)) : bitArray.getNextUnset(bitArray.getNextSet(i));
    }

    /* renamed from: l */
    public static boolean m30659l(FinderPattern finderPattern, boolean z, boolean z2) {
        return (finderPattern.getValue() == 0 && z && z2) ? false : true;
    }

    /* renamed from: m */
    public static boolean m30660m(Iterable<r1g> iterable, Iterable<s1g> iterable2) {
        boolean z;
        boolean z2;
        Iterator<s1g> it2 = iterable2.iterator();
        do {
            z = false;
            if (!it2.hasNext()) {
                return false;
            }
            s1g next = it2.next();
            Iterator<r1g> it3 = iterable.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    z = true;
                    break;
                }
                r1g next2 = it3.next();
                Iterator<r1g> it4 = next.m57121a().iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        z2 = false;
                        break;
                    }
                    if (next2.equals(it4.next())) {
                        z2 = true;
                        break;
                    }
                }
                if (!z2) {
                    break;
                }
            }
        } while (!z);
        return true;
    }

    /* renamed from: n */
    public static boolean m30661n(List<r1g> list) {
        boolean z;
        for (int[] iArr : f38652z) {
            if (list.size() <= iArr.length) {
                int i = 0;
                while (true) {
                    if (i >= list.size()) {
                        z = true;
                        break;
                    }
                    if (list.get(i).m56880b().getValue() != iArr[i]) {
                        z = false;
                        break;
                    }
                    i++;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: p */
    public static void m30662p(List<r1g> list, List<s1g> list2) {
        boolean z;
        Iterator<s1g> it2 = list2.iterator();
        while (it2.hasNext()) {
            s1g next = it2.next();
            if (next.m57121a().size() != list.size()) {
                Iterator<r1g> it3 = next.m57121a().iterator();
                while (true) {
                    z = true;
                    if (!it3.hasNext()) {
                        break;
                    }
                    r1g next2 = it3.next();
                    Iterator<r1g> it4 = list.iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            z = false;
                            break;
                        } else if (next2.equals(it4.next())) {
                            break;
                        }
                    }
                    if (!z) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    it2.remove();
                }
            }
        }
    }

    /* renamed from: r */
    public static void m30663r(int[] iArr) {
        int length = iArr.length;
        for (int i = 0; i < length / 2; i++) {
            int i2 = iArr[i];
            int i3 = (length - i) - 1;
            iArr[i] = iArr[i3];
            iArr[i3] = i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m30664b(int r11) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.rss.expanded.RSSExpandedReader.m30664b(int):void");
    }

    /* renamed from: c */
    public final boolean m30665c() {
        r1g r1gVar = this.f38653k.get(0);
        DataCharacter m56881c = r1gVar.m56881c();
        DataCharacter m56882d = r1gVar.m56882d();
        if (m56882d == null) {
            return false;
        }
        int checksumPortion = m56882d.getChecksumPortion();
        int i = 2;
        for (int i2 = 1; i2 < this.f38653k.size(); i2++) {
            r1g r1gVar2 = this.f38653k.get(i2);
            checksumPortion += r1gVar2.m56881c().getChecksumPortion();
            i++;
            DataCharacter m56882d2 = r1gVar2.m56882d();
            if (m56882d2 != null) {
                checksumPortion += m56882d2.getChecksumPortion();
                i++;
            }
        }
        return ((i + (-4)) * 211) + (checksumPortion % 211) == m56881c.getValue();
    }

    /* renamed from: d */
    public final List<r1g> m30666d(List<s1g> list, int i) throws NotFoundException {
        while (i < this.f38654l.size()) {
            s1g s1gVar = this.f38654l.get(i);
            this.f38653k.clear();
            Iterator<s1g> it2 = list.iterator();
            while (it2.hasNext()) {
                this.f38653k.addAll(it2.next().m57121a());
            }
            this.f38653k.addAll(s1gVar.m57121a());
            if (m30661n(this.f38653k)) {
                if (this.m30665c()) {
                    return this.f38653k;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(list);
                arrayList.add(s1gVar);
                try {
                    return this.m30666d(arrayList, i + 1);
                } catch (NotFoundException unused) {
                    continue;
                }
            }
            i++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        this.f38653k.clear();
        this.f38656n = false;
        try {
            return m30657f(m30669h(i, bitArray));
        } catch (NotFoundException unused) {
            this.f38653k.clear();
            this.f38656n = true;
            return m30657f(this.m30669h(i, bitArray));
        }
    }

    /* renamed from: e */
    public final List<r1g> m30667e(boolean z) {
        List<r1g> list = null;
        if (this.f38654l.size() > 25) {
            this.f38654l.clear();
            return null;
        }
        this.f38653k.clear();
        if (z) {
            Collections.reverse(this.f38654l);
        }
        try {
            list = m30666d(new ArrayList(), 0);
        } catch (NotFoundException unused) {
        }
        if (z) {
            Collections.reverse(this.f38654l);
        }
        return list;
    }

    /* renamed from: g */
    public DataCharacter m30668g(BitArray bitArray, FinderPattern finderPattern, boolean z, boolean z2) throws NotFoundException {
        int[] dataCharacterCounters = getDataCharacterCounters();
        dataCharacterCounters[0] = 0;
        dataCharacterCounters[1] = 0;
        dataCharacterCounters[2] = 0;
        dataCharacterCounters[3] = 0;
        dataCharacterCounters[4] = 0;
        dataCharacterCounters[5] = 0;
        dataCharacterCounters[6] = 0;
        dataCharacterCounters[7] = 0;
        if (z2) {
            OneDReader.recordPatternInReverse(bitArray, finderPattern.getStartEnd()[0], dataCharacterCounters);
        } else {
            OneDReader.recordPattern(bitArray, finderPattern.getStartEnd()[1], dataCharacterCounters);
            int i = 0;
            for (int length = dataCharacterCounters.length - 1; i < length; length--) {
                int i2 = dataCharacterCounters[i];
                dataCharacterCounters[i] = dataCharacterCounters[length];
                dataCharacterCounters[length] = i2;
                i++;
            }
        }
        float sum = MathUtils.sum(dataCharacterCounters) / 17.0f;
        float f = (finderPattern.getStartEnd()[1] - finderPattern.getStartEnd()[0]) / 15.0f;
        if (Math.abs(sum - f) / f > 0.3f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int[] oddCounts = getOddCounts();
        int[] evenCounts = getEvenCounts();
        float[] oddRoundingErrors = getOddRoundingErrors();
        float[] evenRoundingErrors = getEvenRoundingErrors();
        for (int i3 = 0; i3 < dataCharacterCounters.length; i3++) {
            float f2 = (dataCharacterCounters[i3] * 1.0f) / sum;
            int i4 = (int) (0.5f + f2);
            if (i4 <= 0) {
                if (f2 < 0.3f) {
                    throw NotFoundException.getNotFoundInstance();
                }
                i4 = 1;
            } else if (i4 > 8) {
                if (f2 > 8.7f) {
                    throw NotFoundException.getNotFoundInstance();
                }
                i4 = 8;
            }
            int i5 = i3 / 2;
            if ((i3 & 1) == 0) {
                oddCounts[i5] = i4;
                oddRoundingErrors[i5] = f2 - i4;
            } else {
                evenCounts[i5] = i4;
                evenRoundingErrors[i5] = f2 - i4;
            }
        }
        m30664b(17);
        int value = (((finderPattern.getValue() * 4) + (z ? 0 : 2)) + (!z2 ? 1 : 0)) - 1;
        int i6 = 0;
        int i7 = 0;
        for (int length2 = oddCounts.length - 1; length2 >= 0; length2--) {
            if (m30659l(finderPattern, z, z2)) {
                i6 += oddCounts[length2] * f38645s[value][length2 * 2];
            }
            i7 += oddCounts[length2];
        }
        int i8 = 0;
        for (int length3 = evenCounts.length - 1; length3 >= 0; length3--) {
            if (m30659l(finderPattern, z, z2)) {
                i8 += evenCounts[length3] * f38645s[value][(length3 * 2) + 1];
            }
        }
        int i9 = i6 + i8;
        if ((i7 & 1) != 0 || i7 > 13 || i7 < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i10 = (13 - i7) / 2;
        int i11 = f38641o[i10];
        return new DataCharacter((RSSUtils.getRSSvalue(oddCounts, i11, true) * f38642p[i10]) + RSSUtils.getRSSvalue(evenCounts, 9 - i11, false) + f38643q[i10], i9);
    }

    /* renamed from: h */
    public List<r1g> m30669h(int i, BitArray bitArray) throws NotFoundException {
        while (true) {
            try {
                this.f38653k.add(m30673q(bitArray, this.f38653k, i));
            } catch (NotFoundException e) {
                if (this.f38653k.isEmpty()) {
                    throw e;
                }
                if (m30665c()) {
                    return this.f38653k;
                }
                boolean z = !this.f38654l.isEmpty();
                m30674s(i, false);
                if (z) {
                    List<r1g> m30667e = m30667e(false);
                    if (m30667e != null) {
                        return m30667e;
                    }
                    List<r1g> m30667e2 = m30667e(true);
                    if (m30667e2 != null) {
                        return m30667e2;
                    }
                }
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }

    /* renamed from: i */
    public final void m30670i(BitArray bitArray, List<r1g> list, int i) throws NotFoundException {
        int[] decodeFinderCounters = getDecodeFinderCounters();
        decodeFinderCounters[0] = 0;
        decodeFinderCounters[1] = 0;
        decodeFinderCounters[2] = 0;
        decodeFinderCounters[3] = 0;
        int size = bitArray.getSize();
        if (i < 0) {
            i = list.isEmpty() ? 0 : list.get(list.size() - 1).m56880b().getStartEnd()[1];
        }
        boolean z = list.size() % 2 != 0;
        if (this.f38656n) {
            z = !z;
        }
        boolean z2 = false;
        while (i < size) {
            z2 = !bitArray.get(i);
            if (!z2) {
                break;
            } else {
                i++;
            }
        }
        int i2 = 0;
        boolean z3 = z2;
        int i3 = i;
        while (i < size) {
            if (bitArray.get(i) ^ z3) {
                decodeFinderCounters[i2] = decodeFinderCounters[i2] + 1;
            } else {
                if (i2 == 3) {
                    if (z) {
                        m30663r(decodeFinderCounters);
                    }
                    if (AbstractRSSReader.isFinderPattern(decodeFinderCounters)) {
                        int[] iArr = this.f38655m;
                        iArr[0] = i3;
                        iArr[1] = i;
                        return;
                    }
                    if (z) {
                        m30663r(decodeFinderCounters);
                    }
                    i3 += decodeFinderCounters[0] + decodeFinderCounters[1];
                    decodeFinderCounters[0] = decodeFinderCounters[2];
                    decodeFinderCounters[1] = decodeFinderCounters[3];
                    decodeFinderCounters[2] = 0;
                    decodeFinderCounters[3] = 0;
                    i2--;
                } else {
                    i2++;
                }
                decodeFinderCounters[i2] = 1;
                z3 = !z3;
            }
            i++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: k */
    public List<s1g> m30671k() {
        return this.f38654l;
    }

    /* renamed from: o */
    public final FinderPattern m30672o(BitArray bitArray, int i, boolean z) {
        int i2;
        int i3;
        int i4;
        if (z) {
            int i5 = this.f38655m[0] - 1;
            while (i5 >= 0 && !bitArray.get(i5)) {
                i5--;
            }
            int i6 = i5 + 1;
            int[] iArr = this.f38655m;
            i4 = iArr[0] - i6;
            i2 = iArr[1];
            i3 = i6;
        } else {
            int[] iArr2 = this.f38655m;
            int i7 = iArr2[0];
            int nextUnset = bitArray.getNextUnset(iArr2[1] + 1);
            i2 = nextUnset;
            i3 = i7;
            i4 = nextUnset - this.f38655m[1];
        }
        int[] decodeFinderCounters = getDecodeFinderCounters();
        System.arraycopy(decodeFinderCounters, 0, decodeFinderCounters, 1, decodeFinderCounters.length - 1);
        decodeFinderCounters[0] = i4;
        try {
            return new FinderPattern(AbstractRSSReader.parseFinderValue(decodeFinderCounters, f38644r), new int[]{i3, i2}, i3, i2, i);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    /* renamed from: q */
    public r1g m30673q(BitArray bitArray, List<r1g> list, int i) throws NotFoundException {
        FinderPattern m30672o;
        DataCharacter dataCharacter;
        boolean z = list.size() % 2 == 0;
        if (this.f38656n) {
            z = !z;
        }
        int i2 = -1;
        boolean z2 = true;
        do {
            m30670i(bitArray, list, i2);
            m30672o = m30672o(bitArray, i, z);
            if (m30672o == null) {
                i2 = m30658j(bitArray, this.f38655m[0]);
            } else {
                z2 = false;
            }
        } while (z2);
        DataCharacter m30668g = m30668g(bitArray, m30672o, z, true);
        if (!list.isEmpty() && list.get(list.size() - 1).m56884g()) {
            throw NotFoundException.getNotFoundInstance();
        }
        try {
            dataCharacter = m30668g(bitArray, m30672o, z, false);
        } catch (NotFoundException unused) {
            dataCharacter = null;
        }
        return new r1g(m30668g, dataCharacter, m30672o, true);
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.f38653k.clear();
        this.f38654l.clear();
    }

    /* renamed from: s */
    public final void m30674s(int i, boolean z) {
        boolean z2 = false;
        int i2 = 0;
        boolean z3 = false;
        while (true) {
            if (i2 >= this.f38654l.size()) {
                break;
            }
            s1g s1gVar = this.f38654l.get(i2);
            if (s1gVar.m57122b() > i) {
                z2 = s1gVar.m57123c(this.f38653k);
                break;
            } else {
                z3 = s1gVar.m57123c(this.f38653k);
                i2++;
            }
        }
        if (z2 || z3 || m30660m(this.f38653k, this.f38654l)) {
            return;
        }
        this.f38654l.add(i2, new s1g(this.f38653k, i, z));
        m30662p(this.f38653k, this.f38654l);
    }
}
