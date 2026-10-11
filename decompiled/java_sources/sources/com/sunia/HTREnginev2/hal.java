package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import java.io.DataInput;
import java.io.IOException;
import java.lang.reflect.Array;
import javax.imageio.IIOException;

/* loaded from: classes10.dex */
public final class hal extends sdm {

    /* renamed from: b */
    public final int[] f72013b;

    /* renamed from: c */
    public final int[] f72014c;

    /* renamed from: d */
    public final int[][] f72015d;

    public hal() {
        super(JPEG.DQT);
        this.f72013b = new int[4];
        this.f72014c = r1;
        this.f72015d = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, 64);
        int[] iArr = {0, 0, 0, 0};
    }

    /* renamed from: d */
    public static hal m54440d(DataInput dataInput, int i) throws IOException {
        hal halVar = new hal();
        int i2 = 2;
        while (i2 < i) {
            int readUnsignedByte = dataInput.readUnsignedByte();
            i2++;
            int i3 = readUnsignedByte & 15;
            if (i3 > 3) {
                throw new IIOException("Unexpected JPEG Quantization Table Id (> 3): " + i3);
            }
            int[] iArr = halVar.f72013b;
            int i4 = readUnsignedByte >> 4;
            iArr[i3] = i4;
            if (i4 == 0) {
                iArr[i3] = 8;
            } else {
                if (i4 != 1) {
                    throw new IIOException("Unexpected JPEG Quantization Table precision: " + halVar.f72013b[i3]);
                }
                iArr[i3] = 16;
            }
            halVar.f72014c[i3] = 1;
            int i5 = 0;
            if (iArr[i3] == 8) {
                while (i5 < 64) {
                    if (i2 > i) {
                        throw new IIOException("JPEG Quantization Table format error");
                    }
                    halVar.f72015d[i3][i5] = dataInput.readUnsignedByte();
                    i2++;
                    i5++;
                }
            } else {
                while (i5 < 64) {
                    if (i2 > i) {
                        throw new IIOException("JPEG Quantization Table format error");
                    }
                    halVar.f72015d[i3][i5] = dataInput.readUnsignedShort();
                    i2 += 2;
                    i5++;
                }
            }
        }
        if (i2 == i) {
            return halVar;
        }
        throw new IIOException("JPEG Quantization Table error, bad segment length: " + i);
    }

    /* renamed from: b */
    public final void m54441b(int[] iArr, int[] iArr2) {
        for (int i = 0; i < 8; i++) {
            int i2 = iArr2[i];
            iArr[i2] = iArr[i2] * 90;
            int i3 = iArr2[i + 32];
            iArr[i3] = iArr[i3] * 90;
            int i4 = iArr2[i + 16];
            iArr[i4] = iArr[i4] * 118;
            int i5 = iArr2[i + 48];
            iArr[i5] = iArr[i5] * 49;
            int i6 = iArr2[i + 40];
            iArr[i6] = iArr[i6] * 71;
            int i7 = iArr2[i + 8];
            iArr[i7] = iArr[i7] * 126;
            int i8 = iArr2[i + 56];
            iArr[i8] = iArr[i8] * 25;
            int i9 = iArr2[i + 24];
            iArr[i9] = iArr[i9] * 106;
        }
        for (int i10 = 0; i10 < 8; i10++) {
            int i11 = i10 * 8;
            int i12 = iArr2[i11];
            iArr[i12] = iArr[i12] * 90;
            int i13 = iArr2[i11 + 4];
            iArr[i13] = iArr[i13] * 90;
            int i14 = iArr2[i11 + 2];
            iArr[i14] = iArr[i14] * 118;
            int i15 = iArr2[i11 + 6];
            iArr[i15] = iArr[i15] * 49;
            int i16 = iArr2[i11 + 5];
            iArr[i16] = iArr[i16] * 71;
            int i17 = iArr2[i11 + 1];
            iArr[i17] = iArr[i17] * 126;
            int i18 = iArr2[i11 + 7];
            iArr[i18] = iArr[i18] * 25;
            int i19 = iArr2[i11 + 3];
            iArr[i19] = iArr[i19] * 106;
        }
        for (int i20 = 0; i20 < 64; i20++) {
            iArr[i20] = iArr[i20] >> 6;
        }
    }

    /* renamed from: c */
    public void m54442c(int[] iArr) throws IOException {
        for (int i = 0; i < 4; i++) {
            if (this.f72014c[i] != 0) {
                m54441b(this.f72015d[i], iArr);
            }
        }
    }

    public String toString() {
        return "DQT[]";
    }
}
