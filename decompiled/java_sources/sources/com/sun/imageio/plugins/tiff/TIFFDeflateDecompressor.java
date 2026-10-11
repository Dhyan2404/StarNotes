package com.sun.imageio.plugins.tiff;

import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import javax.imageio.IIOException;

/* loaded from: classes9.dex */
public class TIFFDeflateDecompressor extends TIFFDecompressor {
    Inflater inflater;
    int predictor;

    public TIFFDeflateDecompressor(int i) throws IIOException {
        this.inflater = null;
        this.inflater = new Inflater();
        if (i != 1 && i != 2) {
            throw new IIOException("Illegal value for Predictor in TIFF file");
        }
        this.predictor = i;
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public synchronized void decodeRaw(byte[] bArr, int i, int i2, int i3) throws IOException {
        byte[] bArr2;
        int i4;
        int i5;
        if (this.predictor == 2) {
            int length = this.bitsPerSample.length;
            for (int i6 = 0; i6 < length; i6++) {
                if (this.bitsPerSample[i6] != 8) {
                    throw new IIOException(this.bitsPerSample[i6] + "-bit samples are not supported for Horizontal differencing Predictor");
                }
            }
        }
        this.stream.seek(this.offset);
        byte[] bArr3 = new byte[this.byteCount];
        this.stream.readFully(bArr3);
        int i7 = ((this.srcWidth * i2) + 7) / 8;
        if (i7 == i3) {
            bArr2 = bArr;
            i4 = i;
        } else {
            bArr2 = new byte[this.srcHeight * i7];
            i4 = 0;
        }
        this.inflater.setInput(bArr3);
        try {
            this.inflater.inflate(bArr2, i4, this.srcHeight * i7);
            this.inflater.reset();
            if (this.predictor == 2) {
                int i8 = 1;
                if (!this.planar && (i5 = this.samplesPerPixel) != 1) {
                    i8 = i5;
                }
                int i9 = this.srcWidth * i8;
                int i10 = i4 + i8;
                for (int i11 = 0; i11 < this.srcHeight; i11++) {
                    int i12 = i10;
                    for (int i13 = i8; i13 < i9; i13++) {
                        bArr2[i12] = (byte) (bArr2[i12] + bArr2[i12 - i8]);
                        i12++;
                    }
                    i10 += i9;
                }
            }
            if (i7 != i3) {
                int i14 = 0;
                for (int i15 = 0; i15 < this.srcHeight; i15++) {
                    System.arraycopy(bArr2, i14, bArr, i, i7);
                    i14 += i7;
                    i += i3;
                }
            }
        } catch (DataFormatException e) {
            throw new IIOException("Error inflating data", e);
        }
    }
}
