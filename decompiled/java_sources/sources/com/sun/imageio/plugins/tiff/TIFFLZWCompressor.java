package com.sun.imageio.plugins.tiff;

import com.sun.imageio.plugins.common.LZWCompressor;
import java.io.IOException;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes9.dex */
public class TIFFLZWCompressor extends TIFFCompressor {
    private final int predictor;

    public TIFFLZWCompressor(int i) {
        super("LZW", 5, true);
        this.predictor = i;
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFCompressor
    public int encode(byte[] bArr, int i, int i2, int i3, int[] iArr, int i4) throws IOException {
        LZWCompressor lZWCompressor = new LZWCompressor(this.stream, 8, true);
        int length = iArr.length;
        int i5 = 0;
        for (int i6 : iArr) {
            i5 += i6;
        }
        int i7 = ((i5 * i2) + 7) / 8;
        long streamPosition = this.stream.getStreamPosition();
        boolean z = this.predictor == 2;
        if (i7 != i4 || z) {
            int i8 = i;
            byte[] bArr2 = z ? new byte[i7] : null;
            for (int i9 = 0; i9 < i3; i9++) {
                if (z) {
                    System.arraycopy(bArr, i8, bArr2, 0, i7);
                    for (int i10 = i7 - 1; i10 >= length; i10--) {
                        bArr2[i10] = (byte) (bArr2[i10] - bArr2[i10 - length]);
                    }
                    lZWCompressor.compress(bArr2, 0, i7);
                } else {
                    lZWCompressor.compress(bArr, i8, i7);
                }
                i8 += i4;
            }
        } else {
            lZWCompressor.compress(bArr, i, i7 * i3);
        }
        lZWCompressor.flush();
        return (int) (this.stream.getStreamPosition() - streamPosition);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFCompressor
    public void setStream(ImageOutputStream imageOutputStream) {
        super.setStream(imageOutputStream);
    }
}
