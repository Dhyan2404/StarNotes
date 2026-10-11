package com.google.zxing.datamatrix.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.sunia.HTREnginev2.C13688es;

/* loaded from: classes4.dex */
public final class Decoder {

    /* renamed from: a */
    public final ReedSolomonDecoder f38447a = new ReedSolomonDecoder(GenericGF.DATA_MATRIX_FIELD_256);

    /* renamed from: a */
    public final void m30549a(byte[] bArr, int i) throws ChecksumException {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        try {
            this.f38447a.decode(iArr, bArr.length - i);
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    public DecoderResult decode(boolean[][] zArr) throws FormatException, ChecksumException {
        int length = zArr.length;
        BitMatrix bitMatrix = new BitMatrix(length);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                if (zArr[i][i2]) {
                    bitMatrix.set(i2, i);
                }
            }
        }
        return decode(bitMatrix);
    }

    public DecoderResult decode(BitMatrix bitMatrix) throws FormatException, ChecksumException {
        C13688es c13688es = new C13688es(bitMatrix);
        C6898a[] m30556b = C6898a.m30556b(c13688es.m54011c(), c13688es.m54010b());
        int i = 0;
        for (C6898a c6898a : m30556b) {
            i += c6898a.m30558c();
        }
        byte[] bArr = new byte[i];
        int length = m30556b.length;
        for (int i2 = 0; i2 < length; i2++) {
            C6898a c6898a2 = m30556b[i2];
            byte[] m30557a = c6898a2.m30557a();
            int m30558c = c6898a2.m30558c();
            m30549a(m30557a, m30558c);
            for (int i3 = 0; i3 < m30558c; i3++) {
                bArr[(i3 * length) + i2] = m30557a[i3];
            }
        }
        return DecodedBitStreamParser.m30540a(bArr);
    }
}
