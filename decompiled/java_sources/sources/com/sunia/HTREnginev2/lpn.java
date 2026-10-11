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
public final class lpn {

    /* renamed from: a */
    public final int[] f76754a = new int[4];

    /* renamed from: b */
    public final StringBuilder f76755b = new StringBuilder();

    /* renamed from: c */
    public static Map<ResultMetadataType, Object> m55492c(String str) {
        if (str.length() != 2) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put((EnumMap) ResultMetadataType.ISSUE_NUMBER, (ResultMetadataType) Integer.valueOf(str));
        return enumMap;
    }

    /* renamed from: a */
    public final int m55493a(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.f76754a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i = iArr[1];
        int i2 = 0;
        for (int i3 = 0; i3 < 2 && i < size; i3++) {
            int m30643c = UPCEANReader.m30643c(bitArray, iArr2, i, UPCEANReader.f38607j);
            sb.append((char) ((m30643c % 10) + 48));
            for (int i4 : iArr2) {
                i += i4;
            }
            if (m30643c >= 10) {
                i2 |= 1 << (1 - i3);
            }
            if (i3 != 1) {
                i = bitArray.getNextUnset(bitArray.getNextSet(i));
            }
        }
        if (sb.length() != 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (Integer.parseInt(sb.toString()) % 4 == i2) {
            return i;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* renamed from: b */
    public Result m55494b(int i, BitArray bitArray, int[] iArr) throws NotFoundException {
        StringBuilder sb = this.f76755b;
        sb.setLength(0);
        int m55493a = m55493a(bitArray, iArr, sb);
        String sb2 = sb.toString();
        Map<ResultMetadataType, Object> m55492c = m55492c(sb2);
        float f = i;
        Result result = new Result(sb2, null, new ResultPoint[]{new ResultPoint((iArr[0] + iArr[1]) / 2.0f, f), new ResultPoint(m55493a, f)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (m55492c != null) {
            result.putAllMetadata(m55492c);
        }
        return result;
    }
}
