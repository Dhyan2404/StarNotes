package com.sun.imageio.plugins.tiff;

import java.io.IOException;
import javax.imageio.IIOException;
import javax.imageio.metadata.IIOMetadata;

/* loaded from: classes9.dex */
public class TIFFRLECompressor extends TIFFFaxCompressor {
    public TIFFRLECompressor() {
        super("CCITT RLE", 2, true);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFFaxCompressor
    public /* bridge */ /* synthetic */ int add1DBits(byte[] bArr, int i, int i2, int i3) {
        return super.add1DBits(bArr, i, i2, i3);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFFaxCompressor
    public /* bridge */ /* synthetic */ int add2DBits(byte[] bArr, int i, int[][] iArr, int i2) {
        return super.add2DBits(bArr, i, iArr, i2);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFFaxCompressor
    public /* bridge */ /* synthetic */ int addEOFB(byte[] bArr, int i) {
        return super.addEOFB(bArr, i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFFaxCompressor
    public /* bridge */ /* synthetic */ int addEOL(boolean z, boolean z2, boolean z3, byte[] bArr, int i) {
        return super.addEOL(z, z2, z3, bArr, i);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFCompressor
    public int encode(byte[] bArr, int i, int i2, int i3, int[] iArr, int i4) throws IOException {
        if (iArr.length != 1 || iArr[0] != 1) {
            throw new IIOException("Bits per sample must be 1 for RLE compression!");
        }
        byte[] bArr2 = new byte[(((((i2 + 1) / 2) * 9) + 2) + 7) / 8];
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            int encodeRLE = encodeRLE(bArr, i, 0, i2, bArr2);
            this.stream.write(bArr2, 0, encodeRLE);
            i += i4;
            i5 += encodeRLE;
        }
        return i5;
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFFaxCompressor
    public /* bridge */ /* synthetic */ int encode1D(byte[] bArr, int i, int i2, int i3, byte[] bArr2, int i4) {
        return super.encode1D(bArr, i, i2, i3, bArr2, i4);
    }

    public int encodeRLE(byte[] bArr, int i, int i2, int i3, byte[] bArr2) {
        initBitBuf();
        int encode1D = encode1D(bArr, i, i2, i3, bArr2, 0);
        while (true) {
            int i4 = this.ndex;
            if (i4 <= 0) {
                break;
            }
            int i5 = this.bits;
            bArr2[encode1D] = (byte) (i5 >>> 24);
            this.bits = i5 << 8;
            this.ndex = i4 - 8;
            encode1D++;
        }
        if (this.inverseFill) {
            byte[] bArr3 = TIFFFaxDecompressor.flipTable;
            for (int i6 = 0; i6 < encode1D; i6++) {
                bArr2[i6] = bArr3[bArr2[i6] & 255];
            }
        }
        return encode1D;
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFFaxCompressor
    public /* bridge */ /* synthetic */ void initBitBuf() {
        super.initBitBuf();
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFFaxCompressor
    public /* bridge */ /* synthetic */ int nextState(byte[] bArr, int i, int i2, int i3) {
        return super.nextState(bArr, i, i2, i3);
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFFaxCompressor, com.sun.imageio.plugins.tiff.TIFFCompressor
    public /* bridge */ /* synthetic */ void setMetadata(IIOMetadata iIOMetadata) {
        super.setMetadata(iIOMetadata);
    }
}
