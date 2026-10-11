package com.google.zxing.maxicode.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.sunia.HTREnginev2.C13634ds;
import com.sunia.HTREnginev2.rve;
import java.util.Map;

/* loaded from: classes4.dex */
public final class Decoder {

    /* renamed from: b */
    public static final int f38508b = 0;

    /* renamed from: c */
    public static final int f38509c = 1;

    /* renamed from: d */
    public static final int f38510d = 2;

    /* renamed from: a */
    public final ReedSolomonDecoder f38511a = new ReedSolomonDecoder(GenericGF.MAXICODE_FIELD_64);

    /* renamed from: a */
    public final void m30599a(byte[] bArr, int i, int i2, int i3, int i4) throws ChecksumException {
        int i5 = i2 + i3;
        int i6 = i4 == 0 ? 1 : 2;
        int[] iArr = new int[i5 / i6];
        for (int i7 = 0; i7 < i5; i7++) {
            if (i4 == 0 || i7 % 2 == i4 - 1) {
                iArr[i7 / i6] = bArr[i7 + i] & 255;
            }
        }
        try {
            this.f38511a.decode(iArr, i3 / i6);
            for (int i8 = 0; i8 < i2; i8++) {
                if (i4 == 0 || i8 % 2 == i4 - 1) {
                    bArr[i8 + i] = (byte) iArr[i8 / i6];
                }
            }
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    public DecoderResult decode(BitMatrix bitMatrix) throws ChecksumException, FormatException {
        return decode(bitMatrix, null);
    }

    public DecoderResult decode(BitMatrix bitMatrix, Map<DecodeHintType, ?> map) throws FormatException, ChecksumException {
        byte[] bArr;
        byte[] m53703a = new C13634ds(bitMatrix).m53703a();
        m30599a(m53703a, 0, 10, 10, 0);
        int i = m53703a[0] & 15;
        if (i == 2 || i == 3 || i == 4) {
            m30599a(m53703a, 20, 84, 40, 1);
            m30599a(m53703a, 20, 84, 40, 2);
            bArr = new byte[94];
        } else if (i == 5) {
            m30599a(m53703a, 20, 68, 56, 1);
            m30599a(m53703a, 20, 68, 56, 2);
            bArr = new byte[78];
        } else {
            throw FormatException.getFormatInstance();
        }
        System.arraycopy(m53703a, 0, bArr, 0, 10);
        System.arraycopy(m53703a, 20, bArr, 10, bArr.length - 10);
        return rve.m57029a(bArr, i);
    }
}
