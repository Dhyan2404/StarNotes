package com.sunia.HTREnginev2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.UPCEANReader;
import java.util.EnumMap;
import java.util.Map;

/* loaded from: classes4.dex */
public final class mpn {

    /* renamed from: c */
    public static final int[] f77864c = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};

    /* renamed from: a */
    public final int[] f77865a = new int[4];

    /* renamed from: b */
    public final StringBuilder f77866b = new StringBuilder();

    /* renamed from: c */
    public static int m55670c(int i) throws NotFoundException {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == f77864c[i2]) {
                return i2;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: d */
    public static int m55671d(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        for (int i2 = length - 2; i2 >= 0; i2 -= 2) {
            i += charSequence.charAt(i2) - '0';
        }
        int i3 = i * 3;
        for (int i4 = length - 1; i4 >= 0; i4 -= 2) {
            i3 += charSequence.charAt(i4) - '0';
        }
        return (i3 * 3) % 10;
    }

    /* renamed from: e */
    public static String m55672e(String str) {
        String str2;
        String valueOf;
        char charAt = str.charAt(0);
        if (charAt == '0') {
            str2 = "£";
        } else if (charAt != '5') {
            str2 = "";
            if (charAt == '9') {
                if ("90000".equals(str)) {
                    return null;
                }
                if ("99991".equals(str)) {
                    return "0.00";
                }
                if ("99990".equals(str)) {
                    return "Used";
                }
            }
        } else {
            str2 = "$";
        }
        int parseInt = Integer.parseInt(str.substring(1));
        String valueOf2 = String.valueOf(parseInt / 100);
        int i = parseInt % 100;
        if (i < 10) {
            valueOf = "0" + i;
        } else {
            valueOf = String.valueOf(i);
        }
        return str2 + valueOf2 + '.' + valueOf;
    }

    /* renamed from: f */
    public static Map<ResultMetadataType, Object> m55673f(String str) {
        String m55672e;
        if (str.length() != 5 || (m55672e = m55672e(str)) == null) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put((EnumMap) ResultMetadataType.SUGGESTED_PRICE, (ResultMetadataType) m55672e);
        return enumMap;
    }

    /* renamed from: a */
    public final int m55674a(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.f77865a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i = iArr[1];
        int i2 = 0;
        for (int i3 = 0; i3 < 5 && i < size; i3++) {
            int m30643c = UPCEANReader.m30643c(bitArray, iArr2, i, UPCEANReader.f38607j);
            sb.append((char) ((m30643c % 10) + 48));
            for (int i4 : iArr2) {
                i += i4;
            }
            if (m30643c >= 10) {
                i2 |= 1 << (4 - i3);
            }
            if (i3 != 4) {
                i = bitArray.getNextUnset(bitArray.getNextSet(i));
            }
        }
        if (sb.length() != 5) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (m55671d(sb.toString()) == m55670c(i2)) {
            return i;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: b */
    public Result m55675b(int i, BitArray bitArray, int[] iArr) throws NotFoundException {
        StringBuilder sb = this.f77866b;
        sb.setLength(0);
        int m55674a = m55674a(bitArray, iArr, sb);
        String sb2 = sb.toString();
        Map<ResultMetadataType, Object> m55673f = m55673f(sb2);
        float f = i;
        Result result = new Result(sb2, null, new ResultPoint[]{new ResultPoint((iArr[0] + iArr[1]) / 2.0f, f), new ResultPoint(m55674a, f)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (m55673f != null) {
            result.putAllMetadata(m55673f);
        }
        return result;
    }
}
