package com.sun.imageio.plugins.tiff;

import java.io.IOException;

/* loaded from: classes9.dex */
public class TIFFPackBitsCompressor extends TIFFCompressor {
    public TIFFPackBitsCompressor() {
        super("PackBits", 32773, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0055, code lost:
    
        r11[r12] = (byte) (r3 - 1);
        r4 = r4 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int packBits(byte[] r8, int r9, int r10, byte[] r11, int r12) {
        /*
            int r10 = r10 + r9
            r0 = 1
            int r10 = r10 - r0
            int r1 = r10 + (-1)
        L5:
            if (r9 > r10) goto L83
            r2 = r8[r9]
            r3 = r0
        La:
            r4 = 127(0x7f, float:1.78E-43)
            if (r3 >= r4) goto L1c
            if (r9 >= r10) goto L1c
            r4 = r8[r9]
            int r5 = r9 + 1
            r6 = r8[r5]
            if (r4 != r6) goto L1c
            int r3 = r3 + 1
            r9 = r5
            goto La
        L1c:
            if (r3 <= r0) goto L2c
            int r9 = r9 + 1
            int r4 = r12 + 1
            int r3 = r3 + (-1)
            int r3 = -r3
            byte r3 = (byte) r3
            r11[r12] = r3
            int r12 = r4 + 1
            r11[r4] = r2
        L2c:
            r2 = 0
            r4 = r12
            r3 = r2
        L2f:
            r5 = 128(0x80, float:1.794E-43)
            if (r3 >= r5) goto L53
            if (r9 >= r10) goto L3d
            r6 = r8[r9]
            int r7 = r9 + 1
            r7 = r8[r7]
            if (r6 != r7) goto L47
        L3d:
            if (r9 >= r1) goto L53
            r6 = r8[r9]
            int r7 = r9 + 2
            r7 = r8[r7]
            if (r6 == r7) goto L53
        L47:
            int r3 = r3 + 1
            int r4 = r4 + 1
            int r5 = r9 + 1
            r9 = r8[r9]
            r11[r4] = r9
            r9 = r5
            goto L2f
        L53:
            if (r3 <= 0) goto L5c
            int r6 = r3 + (-1)
            byte r6 = (byte) r6
            r11[r12] = r6
            int r4 = r4 + 1
        L5c:
            if (r9 != r10) goto L81
            if (r3 <= 0) goto L72
            if (r3 >= r5) goto L72
            r2 = r11[r12]
            int r2 = r2 + r0
            byte r2 = (byte) r2
            r11[r12] = r2
            int r12 = r4 + 1
            int r2 = r9 + 1
            r9 = r8[r9]
            r11[r4] = r9
            r9 = r2
            goto L5
        L72:
            int r12 = r4 + 1
            r11[r4] = r2
            int r2 = r12 + 1
            int r3 = r9 + 1
            r9 = r8[r9]
            r11[r12] = r9
            r12 = r2
            r9 = r3
            goto L5
        L81:
            r12 = r4
            goto L5
        L83:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.imageio.plugins.tiff.TIFFPackBitsCompressor.packBits(byte[], int, int, byte[], int):int");
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFCompressor
    public int encode(byte[] bArr, int i, int i2, int i3, int[] iArr, int i4) throws IOException {
        int i5 = 0;
        for (int i6 : iArr) {
            i5 += i6;
        }
        int i7 = ((i5 * i2) + 7) / 8;
        byte[] bArr2 = new byte[i7 + ((i7 + 127) / 128)];
        int i8 = 0;
        for (int i9 = 0; i9 < i3; i9++) {
            int packBits = packBits(bArr, i, i4, bArr2, 0);
            i += i4;
            i8 += packBits;
            this.stream.write(bArr2, 0, packBits);
        }
        return i8;
    }
}
