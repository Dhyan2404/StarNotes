package com.google.zxing.qrcode.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.sunia.HTREnginev2.qve;
import java.util.Map;

/* loaded from: classes4.dex */
public final class Decoder {

    /* renamed from: a */
    public final ReedSolomonDecoder f38742a = new ReedSolomonDecoder(GenericGF.QR_CODE_FIELD_256);

    /* renamed from: a */
    public final void m30751a(byte[] bArr, int i) throws ChecksumException {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        try {
            this.f38742a.decode(iArr, bArr.length - i);
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    /* renamed from: b */
    public final DecoderResult m30752b(C6912a c6912a, Map<DecodeHintType, ?> map) throws FormatException, ChecksumException {
        Version m30760e = c6912a.m30760e();
        ErrorCorrectionLevel m53709d = c6912a.m30759d().m53709d();
        C6913b[] m30763b = C6913b.m30763b(c6912a.m30758c(), m30760e, m53709d);
        int i = 0;
        for (C6913b c6913b : m30763b) {
            i += c6913b.m30765c();
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (C6913b c6913b2 : m30763b) {
            byte[] m30764a = c6913b2.m30764a();
            int m30765c = c6913b2.m30765c();
            m30751a(m30764a, m30765c);
            int i3 = 0;
            while (i3 < m30765c) {
                bArr[i2] = m30764a[i3];
                i3++;
                i2++;
            }
        }
        return qve.m56777a(bArr, m30760e, m53709d, map);
    }

    public DecoderResult decode(boolean[][] zArr) throws ChecksumException, FormatException {
        return decode(zArr, (Map<DecodeHintType, ?>) null);
    }

    public DecoderResult decode(boolean[][] zArr, Map<DecodeHintType, ?> map) throws ChecksumException, FormatException {
        int length = zArr.length;
        BitMatrix bitMatrix = new BitMatrix(length);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                if (zArr[i][i2]) {
                    bitMatrix.set(i2, i);
                }
            }
        }
        return decode(bitMatrix, map);
    }

    public DecoderResult decode(BitMatrix bitMatrix) throws ChecksumException, FormatException {
        return decode(bitMatrix, (Map<DecodeHintType, ?>) null);
    }

    public DecoderResult decode(BitMatrix bitMatrix, Map<DecodeHintType, ?> map) throws FormatException, ChecksumException {
        ChecksumException e;
        C6912a c6912a = new C6912a(bitMatrix);
        FormatException formatException = null;
        try {
            return m30752b(c6912a, map);
        } catch (ChecksumException e2) {
            e = e2;
            try {
                c6912a.m30761f();
                c6912a.m30762g(true);
                c6912a.m30760e();
                c6912a.m30759d();
                c6912a.m30757b();
                DecoderResult m30752b = this.m30752b(c6912a, map);
                m30752b.setOther(new QRCodeDecoderMetaData(true));
                return m30752b;
            } catch (ChecksumException | FormatException e3) {
                if (formatException != null) {
                    throw formatException;
                }
                if (e != null) {
                    throw e;
                }
                throw e3;
            }
        } catch (FormatException e4) {
            e = null;
            formatException = e4;
            c6912a.m30761f();
            c6912a.m30762g(true);
            c6912a.m30760e();
            c6912a.m30759d();
            c6912a.m30757b();
            DecoderResult m30752b2 = this.m30752b(c6912a, map);
            m30752b2.setOther(new QRCodeDecoderMetaData(true));
            return m30752b2;
        }
    }
}
