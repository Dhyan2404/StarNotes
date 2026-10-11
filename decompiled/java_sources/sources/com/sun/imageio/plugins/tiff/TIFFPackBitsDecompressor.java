package com.sun.imageio.plugins.tiff;

import java.io.IOException;

/* loaded from: classes9.dex */
public class TIFFPackBitsDecompressor extends TIFFDecompressor {
    /* JADX WARN: Removed duplicated region for block: B:22:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int decode(byte[] r8, int r9, byte[] r10, int r11) throws java.io.IOException {
        /*
            r7 = this;
            int r0 = r10.length
            int r1 = r8.length
            r2 = r11
        L3:
            if (r2 >= r0) goto L52
            if (r9 >= r1) goto L52
            int r3 = r9 + 1
            r9 = r8[r9]     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
            r4 = 0
            if (r9 < 0) goto L25
            r5 = 127(0x7f, float:1.78E-43)
            if (r9 > r5) goto L25
        L12:
            int r5 = r9 + 1
            if (r4 >= r5) goto L43
            int r5 = r2 + 1
            int r6 = r3 + 1
            r3 = r8[r3]     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L23
            r10[r2] = r3     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L23
            int r4 = r4 + 1
            r2 = r5
            r3 = r6
            goto L12
        L23:
            r2 = r5
            goto L45
        L25:
            r5 = -1
            if (r9 > r5) goto L41
            r5 = -127(0xffffffffffffff81, float:NaN)
            if (r9 < r5) goto L41
            int r5 = r3 + 1
            r3 = r8[r3]     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L45
        L30:
            int r6 = -r9
            int r6 = r6 + 1
            if (r4 >= r6) goto L3f
            int r6 = r2 + 1
            r10[r2] = r3     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L3d
            int r4 = r4 + 1
            r2 = r6
            goto L30
        L3d:
            r2 = r6
            goto L45
        L3f:
            r9 = r5
            goto L3
        L41:
            int r3 = r3 + 1
        L43:
            r9 = r3
            goto L3
        L45:
            javax.imageio.ImageReader r7 = r7.reader
            boolean r8 = r7 instanceof com.sun.imageio.plugins.tiff.TIFFImageReader
            if (r8 == 0) goto L52
            com.sun.imageio.plugins.tiff.TIFFImageReader r7 = (com.sun.imageio.plugins.tiff.TIFFImageReader) r7
            java.lang.String r8 = "ArrayIndexOutOfBoundsException ignored in TIFFPackBitsDecompressor.decode()"
            r7.forwardWarningMessage(r8)
        L52:
            int r2 = r2 - r11
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFPackBitsDecompressor.decode(byte[], int, byte[], int):int");
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void decodeRaw(byte[] bArr, int i, int i2, int i3) throws IOException {
        byte[] bArr2;
        int i4;
        this.stream.seek(this.offset);
        byte[] bArr3 = new byte[this.byteCount];
        this.stream.readFully(bArr3);
        int i5 = ((this.srcWidth * i2) + 7) / 8;
        if (i5 == i3) {
            bArr2 = bArr;
            i4 = i;
        } else {
            bArr2 = new byte[this.srcHeight * i5];
            i4 = 0;
        }
        decode(bArr3, 0, bArr2, i4);
        if (i5 != i3) {
            int i6 = 0;
            for (int i7 = 0; i7 < this.srcHeight; i7++) {
                System.arraycopy(bArr2, i6, bArr, i, i5);
                i6 += i5;
                i += i3;
            }
        }
    }
}
