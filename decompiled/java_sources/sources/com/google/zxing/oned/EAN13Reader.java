package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* loaded from: classes4.dex */
public final class EAN13Reader extends UPCEANReader {

    /* renamed from: l */
    public static final int[] f38581l = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};

    /* renamed from: k */
    public final int[] f38582k = new int[4];

    /* renamed from: h */
    public static void m30629h(StringBuilder sb, int i) throws NotFoundException {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == f38581l[i2]) {
                sb.insert(0, (char) (i2 + 48));
                return;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.UPCEANReader
    public int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.f38582k;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i = iArr[1];
        int i2 = 0;
        for (int i3 = 0; i3 < 6 && i < size; i3++) {
            int m30643c = UPCEANReader.m30643c(bitArray, iArr2, i, UPCEANReader.f38607j);
            sb.append((char) ((m30643c % 10) + 48));
            for (int i4 : iArr2) {
                i += i4;
            }
            if (m30643c >= 10) {
                i2 |= 1 << (5 - i3);
            }
        }
        m30629h(sb, i2);
        int i5 = UPCEANReader.m30644d(bitArray, i, true, UPCEANReader.f38604g)[1];
        for (int i6 = 0; i6 < 6 && i5 < size; i6++) {
            sb.append((char) (UPCEANReader.m30643c(bitArray, iArr2, i5, UPCEANReader.f38606i) + 48));
            for (int i7 : iArr2) {
                i5 += i7;
            }
        }
        return i5;
    }

    @Override // com.google.zxing.oned.UPCEANReader
    /* renamed from: g */
    public BarcodeFormat mo30630g() {
        return BarcodeFormat.EAN_13;
    }
}
