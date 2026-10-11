package com.sun.imageio.plugins.common;

import java.io.IOException;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes9.dex */
public class BitFile {
    boolean blocks;
    ImageOutputStream output;
    byte[] buffer = new byte[256];
    int index = 0;
    int bitsLeft = 8;

    public BitFile(ImageOutputStream imageOutputStream, boolean z) {
        this.output = imageOutputStream;
        this.blocks = z;
    }

    public void flush() throws IOException {
        int i = this.index + (this.bitsLeft == 8 ? 0 : 1);
        if (i > 0) {
            if (this.blocks) {
                this.output.write(i);
            }
            this.output.write(this.buffer, 0, i);
            this.buffer[0] = 0;
            this.index = 0;
            this.bitsLeft = 8;
        }
    }

    public void writeBits(int i, int i2) throws IOException {
        do {
            int i3 = this.index;
            if ((i3 == 254 && this.bitsLeft == 0) || i3 > 254) {
                if (this.blocks) {
                    this.output.write(255);
                }
                this.output.write(this.buffer, 0, 255);
                this.buffer[0] = 0;
                this.index = 0;
                this.bitsLeft = 8;
            }
            int i4 = this.bitsLeft;
            if (i2 <= i4) {
                if (this.blocks) {
                    byte[] bArr = this.buffer;
                    int i5 = this.index;
                    bArr[i5] = (byte) (((i & ((1 << i2) - 1)) << (8 - i4)) | bArr[i5]);
                    this.bitsLeft = i4 - i2;
                } else {
                    byte[] bArr2 = this.buffer;
                    int i6 = this.index;
                    bArr2[i6] = (byte) (((i & ((1 << i2) - 1)) << (i4 - i2)) | bArr2[i6]);
                    this.bitsLeft = i4 - i2;
                }
                i2 = 0;
            } else if (this.blocks) {
                byte[] bArr3 = this.buffer;
                int i7 = this.index;
                bArr3[i7] = (byte) (bArr3[i7] | ((((1 << i4) - 1) & i) << (8 - i4)));
                i >>= i4;
                i2 -= i4;
                int i8 = i7 + 1;
                this.index = i8;
                bArr3[i8] = 0;
                this.bitsLeft = 8;
            } else {
                byte[] bArr4 = this.buffer;
                int i9 = this.index;
                bArr4[i9] = (byte) (((i >>> (i2 - i4)) & ((1 << i4) - 1)) | bArr4[i9]);
                i2 -= i4;
                int i10 = i9 + 1;
                this.index = i10;
                bArr4[i10] = 0;
                this.bitsLeft = 8;
            }
        } while (i2 != 0);
    }
}
