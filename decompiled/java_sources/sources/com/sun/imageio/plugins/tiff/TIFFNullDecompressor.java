package com.sun.imageio.plugins.tiff;

import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes9.dex */
public class TIFFNullDecompressor extends TIFFDecompressor {
    private boolean isReadActiveOnly = false;
    private int originalSrcHeight;
    private int originalSrcMinX;
    private int originalSrcMinY;
    private int originalSrcWidth;

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void beginDecoding() {
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.bitsPerSample;
            if (i >= iArr.length) {
                break;
            }
            i2 += iArr[i];
            i++;
        }
        int i3 = this.activeSrcMinX;
        int i4 = this.srcMinX;
        if (!(i3 == i4 && this.activeSrcMinY == this.srcMinY && this.activeSrcWidth == this.srcWidth && this.activeSrcHeight == this.srcHeight) && ((i3 - i4) * i2) % 8 == 0) {
            this.isReadActiveOnly = true;
            this.originalSrcMinX = i4;
            this.originalSrcMinY = this.srcMinY;
            this.originalSrcWidth = this.srcWidth;
            this.originalSrcHeight = this.srcHeight;
            this.srcMinX = i3;
            this.srcMinY = this.activeSrcMinY;
            this.srcWidth = this.activeSrcWidth;
            this.srcHeight = this.activeSrcHeight;
        } else {
            this.isReadActiveOnly = false;
        }
        super.beginDecoding();
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void decode() throws IOException {
        super.decode();
        if (this.isReadActiveOnly) {
            this.srcMinX = this.originalSrcMinX;
            this.srcMinY = this.originalSrcMinY;
            this.srcWidth = this.originalSrcWidth;
            this.srcHeight = this.originalSrcHeight;
            this.isReadActiveOnly = false;
        }
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void decodeRaw(byte[] bArr, int i, int i2, int i3) throws IOException {
        int i4 = 0;
        if (!this.isReadActiveOnly) {
            this.stream.seek(this.offset);
            int i5 = ((this.srcWidth * i2) + 7) / 8;
            if (i5 == i3) {
                if (this.stream.read(bArr, i, i5 * this.srcHeight) < 0) {
                    throw new EOFException();
                }
                return;
            }
            while (i4 < this.srcHeight) {
                int read = this.stream.read(bArr, i, i5);
                if (read < 0) {
                    throw new EOFException();
                }
                if (read != i5) {
                    return;
                }
                i += i3;
                i4++;
            }
            return;
        }
        int i6 = ((this.activeSrcWidth * i2) + 7) / 8;
        int i7 = (((this.originalSrcWidth * i2) + 7) / 8) - i6;
        this.stream.seek(this.offset + ((this.activeSrcMinY - this.originalSrcMinY) * r2) + (((this.activeSrcMinX - this.originalSrcMinX) * i2) / 8));
        int i8 = this.activeSrcHeight - 1;
        while (i4 < this.activeSrcHeight) {
            int read2 = this.stream.read(bArr, i, i6);
            if (read2 < 0) {
                throw new EOFException();
            }
            if (read2 != i6) {
                return;
            }
            i += i3;
            if (i4 != i8) {
                this.stream.skipBytes(i7);
            }
            i4++;
        }
    }
}
