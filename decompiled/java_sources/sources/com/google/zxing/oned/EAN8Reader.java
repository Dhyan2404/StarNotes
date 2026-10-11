package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* loaded from: classes4.dex */
public final class EAN8Reader extends UPCEANReader {

    /* renamed from: k */
    public final int[] f38584k = new int[4];

    @Override // com.google.zxing.oned.UPCEANReader
    public int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.f38584k;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i = iArr[1];
        for (int i2 = 0; i2 < 4 && i < size; i2++) {
            sb.append((char) (UPCEANReader.m30643c(bitArray, iArr2, i, UPCEANReader.f38606i) + 48));
            for (int i3 : iArr2) {
                i += i3;
            }
        }
        int i4 = UPCEANReader.m30644d(bitArray, i, true, UPCEANReader.f38604g)[1];
        for (int i5 = 0; i5 < 4 && i4 < size; i5++) {
            sb.append((char) (UPCEANReader.m30643c(bitArray, iArr2, i4, UPCEANReader.f38606i) + 48));
            for (int i6 : iArr2) {
                i4 += i6;
            }
        }
        return i4;
    }

    @Override // com.google.zxing.oned.UPCEANReader
    /* renamed from: g */
    public BarcodeFormat mo30630g() {
        return BarcodeFormat.EAN_8;
    }
}
