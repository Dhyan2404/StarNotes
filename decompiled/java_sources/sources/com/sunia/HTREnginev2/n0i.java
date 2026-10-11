package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import java.io.DataInput;
import java.io.IOException;
import java.lang.reflect.Array;
import javax.imageio.IIOException;

/* loaded from: classes10.dex */
public final class n0i extends sdm {

    /* renamed from: f */
    public static final int f78182f = Integer.MIN_VALUE;

    /* renamed from: b */
    public final int[][][] f78183b;

    /* renamed from: c */
    public final int[] f78184c;

    /* renamed from: d */
    public final int[][][][] f78185d;

    /* renamed from: e */
    public final int[][] f78186e;

    public n0i() {
        super(JPEG.DHT);
        Class cls = Integer.TYPE;
        this.f78183b = (int[][][]) Array.newInstance((Class<?>) cls, 4, 2, 16);
        this.f78184c = r3;
        this.f78185d = (int[][][][]) Array.newInstance((Class<?>) cls, 4, 2, 16, 200);
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) cls, 4, 2);
        this.f78186e = iArr;
        int[] iArr2 = iArr[0];
        iArr2[0] = 0;
        int[] iArr3 = iArr[1];
        iArr3[0] = 0;
        int[] iArr4 = iArr[2];
        iArr4[0] = 0;
        int[] iArr5 = iArr[3];
        iArr5[0] = 0;
        iArr2[1] = 0;
        iArr3[1] = 0;
        iArr4[1] = 0;
        iArr5[1] = 0;
        int[] iArr6 = {0, 0, 0, 0};
    }

    /* renamed from: d */
    public static sdm m55699d(DataInput dataInput, int i) throws IOException {
        n0i n0iVar = new n0i();
        int i2 = 2;
        while (i2 < i) {
            int readUnsignedByte = dataInput.readUnsignedByte();
            i2++;
            int i3 = readUnsignedByte & 15;
            if (i3 > 3) {
                throw new IIOException("Unexpected JPEG Huffman Table Id (> 3):" + i3);
            }
            int i4 = readUnsignedByte >> 4;
            if (i4 > 2) {
                throw new IIOException("Unexpected JPEG Huffman Table class (> 2): " + i4);
            }
            n0iVar.f78184c[i3] = 1;
            n0iVar.f78186e[i3][i4] = 1;
            for (int i5 = 0; i5 < 16; i5++) {
                n0iVar.f78183b[i3][i4][i5] = dataInput.readUnsignedByte();
                i2++;
            }
            for (int i6 = 0; i6 < 16; i6++) {
                for (int i7 = 0; i7 < n0iVar.f78183b[i3][i4][i6]; i7++) {
                    if (i2 > i) {
                        throw new IIOException("JPEG Huffman Table format error");
                    }
                    n0iVar.f78185d[i3][i4][i6][i7] = dataInput.readUnsignedByte();
                    i2++;
                }
            }
        }
        if (i2 == i) {
            return n0iVar;
        }
        throw new IIOException("JPEG Huffman Table format error, bad segment length: " + i);
    }

    /* renamed from: b */
    public final void m55700b(int[] iArr, int[] iArr2, int[][] iArr3) throws IOException {
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            for (int i3 = 0; i3 < iArr2[i2]; i3++) {
                int i4 = 0;
                while (true) {
                    int i5 = i2 + 1;
                    if (i4 < (256 >> i5)) {
                        iArr[i] = (i5 << 8) | iArr3[i2][i3];
                        i++;
                        i4++;
                    }
                }
            }
        }
        int i6 = 1;
        int i7 = 1;
        while (i < 256) {
            iArr[i] = Integer.MIN_VALUE | i7;
            i7++;
            i++;
        }
        int i8 = 0;
        for (int i9 = 8; i9 < 16; i9++) {
            for (int i10 = 0; i10 < iArr2[i9]; i10++) {
                for (int i11 = 0; i11 < (256 >> (i9 - 7)); i11++) {
                    iArr[(i6 * 256) + i8] = iArr3[i9][i10] | ((i9 + 1) << 8);
                    i8++;
                }
                if (i8 >= 256) {
                    if (i8 > 256) {
                        throw new IIOException("JPEG Huffman Table error");
                    }
                    i6++;
                    i8 = 0;
                }
            }
        }
    }

    /* renamed from: c */
    public void m55701c(int[][][] iArr) throws IOException {
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 2; i2++) {
                if (this.f78186e[i][i2] != 0) {
                    m55700b(iArr[i][i2], this.f78183b[i][i2], this.f78185d[i][i2]);
                }
            }
        }
    }

    public String toString() {
        return "DHT[]";
    }
}
