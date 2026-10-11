package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import com.sunia.HTREnginev2.dkf;
import com.sunia.HTREnginev2.npn;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class UPCEANReader extends OneDReader {

    /* renamed from: d */
    public static final float f38601d = 0.48f;

    /* renamed from: e */
    public static final float f38602e = 0.7f;

    /* renamed from: f */
    public static final int[] f38603f = {1, 1, 1};

    /* renamed from: g */
    public static final int[] f38604g = {1, 1, 1, 1, 1};

    /* renamed from: h */
    public static final int[] f38605h = {1, 1, 1, 1, 1, 1};

    /* renamed from: i */
    public static final int[][] f38606i;

    /* renamed from: j */
    public static final int[][] f38607j;

    /* renamed from: a */
    public final StringBuilder f38608a = new StringBuilder(20);

    /* renamed from: b */
    public final npn f38609b = new npn();

    /* renamed from: c */
    public final dkf f38610c = new dkf();

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        f38606i = iArr;
        int[][] iArr2 = new int[20];
        f38607j = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i = 10; i < 20; i++) {
            int[] iArr3 = f38606i[i - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i2 = 0; i2 < iArr3.length; i2++) {
                iArr4[i2] = iArr3[(iArr3.length - i2) - 1];
            }
            f38607j[i] = iArr4;
        }
    }

    /* renamed from: b */
    public static boolean m30642b(CharSequence charSequence) throws FormatException {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i = 0;
        for (int i2 = length - 2; i2 >= 0; i2 -= 2) {
            int charAt = charSequence.charAt(i2) - '0';
            if (charAt < 0 || charAt > 9) {
                throw FormatException.getFormatInstance();
            }
            i += charAt;
        }
        int i3 = i * 3;
        for (int i4 = length - 1; i4 >= 0; i4 -= 2) {
            int charAt2 = charSequence.charAt(i4) - '0';
            if (charAt2 < 0 || charAt2 > 9) {
                throw FormatException.getFormatInstance();
            }
            i3 += charAt2;
        }
        return i3 % 10 == 0;
    }

    /* renamed from: c */
    public static int m30643c(BitArray bitArray, int[] iArr, int i, int[][] iArr2) throws NotFoundException {
        OneDReader.recordPattern(bitArray, i, iArr);
        int length = iArr2.length;
        float f = 0.48f;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            float patternMatchVariance = OneDReader.patternMatchVariance(iArr, iArr2[i3], 0.7f);
            if (patternMatchVariance < f) {
                i2 = i3;
                f = patternMatchVariance;
            }
        }
        if (i2 >= 0) {
            return i2;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: d */
    public static int[] m30644d(BitArray bitArray, int i, boolean z, int[] iArr) throws NotFoundException {
        return m30645e(bitArray, i, z, iArr, new int[iArr.length]);
    }

    /* renamed from: e */
    public static int[] m30645e(BitArray bitArray, int i, boolean z, int[] iArr, int[] iArr2) throws NotFoundException {
        int size = bitArray.getSize();
        int nextUnset = z ? bitArray.getNextUnset(i) : bitArray.getNextSet(i);
        int length = iArr.length;
        boolean z2 = z;
        int i2 = 0;
        int i3 = nextUnset;
        while (nextUnset < size) {
            if (bitArray.get(nextUnset) ^ z2) {
                iArr2[i2] = iArr2[i2] + 1;
            } else {
                int i4 = length - 1;
                if (i2 != i4) {
                    i2++;
                } else {
                    if (OneDReader.patternMatchVariance(iArr2, iArr, 0.7f) < 0.48f) {
                        return new int[]{i3, nextUnset};
                    }
                    i3 += iArr2[0] + iArr2[1];
                    int i5 = length - 2;
                    System.arraycopy(iArr2, 2, iArr2, 0, i5);
                    iArr2[i5] = 0;
                    iArr2[i4] = 0;
                    i2--;
                }
                iArr2[i2] = 1;
                z2 = !z2;
            }
            nextUnset++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: f */
    public static int[] m30646f(BitArray bitArray) throws NotFoundException {
        int[] iArr = new int[f38603f.length];
        int[] iArr2 = null;
        boolean z = false;
        int i = 0;
        while (!z) {
            int[] iArr3 = f38603f;
            Arrays.fill(iArr, 0, iArr3.length, 0);
            iArr2 = m30645e(bitArray, i, false, iArr3, iArr);
            int i2 = iArr2[0];
            int i3 = iArr2[1];
            int i4 = i2 - (i3 - i2);
            if (i4 >= 0) {
                z = bitArray.isRange(i4, i2, false);
            }
            i = i3;
        }
        return iArr2;
    }

    public boolean checkChecksum(String str) throws FormatException {
        return m30642b(str);
    }

    public int[] decodeEnd(BitArray bitArray, int i) throws NotFoundException {
        return m30644d(bitArray, i, false, f38603f);
    }

    public abstract int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException;

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        return decodeRow(i, bitArray, m30646f(bitArray), map);
    }

    /* renamed from: g */
    public abstract BarcodeFormat mo30630g();

    public Result decodeRow(int i, BitArray bitArray, int[] iArr, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int i2;
        String m53671c;
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        boolean z = true;
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint((iArr[0] + iArr[1]) / 2.0f, i));
        }
        StringBuilder sb = this.f38608a;
        sb.setLength(0);
        int decodeMiddle = decodeMiddle(bitArray, iArr, sb);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint(decodeMiddle, i));
        }
        int[] decodeEnd = decodeEnd(bitArray, decodeMiddle);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint((decodeEnd[0] + decodeEnd[1]) / 2.0f, i));
        }
        int i3 = decodeEnd[1];
        int i4 = (i3 - decodeEnd[0]) + i3;
        if (i4 < bitArray.getSize() && bitArray.isRange(i3, i4, false)) {
            String sb2 = sb.toString();
            if (sb2.length() >= 8) {
                if (checkChecksum(sb2)) {
                    BarcodeFormat mo30630g = mo30630g();
                    float f = i;
                    Result result = new Result(sb2, null, new ResultPoint[]{new ResultPoint((iArr[1] + iArr[0]) / 2.0f, f), new ResultPoint((decodeEnd[1] + decodeEnd[0]) / 2.0f, f)}, mo30630g);
                    try {
                        Result m55786a = this.f38609b.m55786a(i, bitArray, decodeEnd[1]);
                        result.putMetadata(ResultMetadataType.UPC_EAN_EXTENSION, m55786a.getText());
                        result.putAllMetadata(m55786a.getResultMetadata());
                        result.addResultPoints(m55786a.getResultPoints());
                        i2 = m55786a.getText().length();
                    } catch (ReaderException unused) {
                        i2 = 0;
                    }
                    int[] iArr2 = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_EAN_EXTENSIONS) : null;
                    if (iArr2 != null) {
                        int length = iArr2.length;
                        int i5 = 0;
                        while (true) {
                            if (i5 >= length) {
                                z = false;
                                break;
                            }
                            if (i2 == iArr2[i5]) {
                                break;
                            }
                            i5++;
                        }
                        if (!z) {
                            throw NotFoundException.getNotFoundInstance();
                        }
                    }
                    if ((mo30630g == BarcodeFormat.EAN_13 || mo30630g == BarcodeFormat.UPC_A) && (m53671c = this.f38610c.m53671c(sb2)) != null) {
                        result.putMetadata(ResultMetadataType.POSSIBLE_COUNTRY, m53671c);
                    }
                    return result;
                }
                throw ChecksumException.getChecksumInstance();
            }
            throw FormatException.getFormatInstance();
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
