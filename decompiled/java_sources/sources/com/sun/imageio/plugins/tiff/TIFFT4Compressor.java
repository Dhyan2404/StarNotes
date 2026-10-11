package com.sun.imageio.plugins.tiff;

import java.io.IOException;
import javax.imageio.IIOException;
import javax.imageio.metadata.IIOMetadata;
import javax.imageio.plugins.tiff.BaselineTIFFTagSet;
import javax.imageio.plugins.tiff.TIFFField;

/* loaded from: classes9.dex */
public class TIFFT4Compressor extends TIFFFaxCompressor {
    private boolean is1DMode;
    private boolean isEOLAligned;

    public TIFFT4Compressor() {
        super("CCITT T.4", 3, true);
        this.is1DMode = false;
        this.isEOLAligned = false;
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
            throw new IIOException("Bits per sample must be 1 for T4 compression!");
        }
        byte[] bArr2 = new byte[((((((((i2 + 1) / 2) * 9) + 2) + 7) / 8) + 2) * i3) + 12];
        int encodeT4 = encodeT4(this.is1DMode, this.isEOLAligned, bArr, i4, i * 8, i2, i3, bArr2);
        this.stream.write(bArr2, 0, encodeT4);
        return encodeT4;
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFFaxCompressor
    public /* bridge */ /* synthetic */ int encode1D(byte[] bArr, int i, int i2, int i3, byte[] bArr2, int i4) {
        return super.encode1D(bArr, i, i2, i3, bArr2, i4);
    }

    public int encodeT4(boolean z, boolean z2, byte[] bArr, int i, int i2, int i3, int i4, byte[] bArr2) {
        initBitBuf();
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < i4; i7++) {
            if (z || i7 % 2 == 0) {
                int addEOL = i5 + addEOL(z, z2, true, bArr2, i5);
                i5 = addEOL + encode1D(bArr, i6, i2, i3, bArr2, addEOL);
            } else {
                i5 += addEOL(z, z2, false, bArr2, i5);
                int i8 = i6 - i;
                int i9 = i2 + i3;
                int i10 = i2 >>> 3;
                int i11 = 7 - (i2 & 7);
                int nextState = (((bArr[i6 + i10] & 255) >>> i11) & 1) != 0 ? i2 : nextState(bArr, i6, i2, i9);
                int nextState2 = (((bArr[i10 + i8] & 255) >>> i11) & 1) != 0 ? i2 : nextState(bArr, i8, i2, i9);
                int i12 = i2;
                int i13 = 0;
                while (true) {
                    int nextState3 = nextState(bArr, i8, nextState2, i9);
                    if (nextState3 < nextState) {
                        i5 += add2DBits(bArr2, i5, TIFFFaxCompressor.pass, 0);
                        i12 = nextState3;
                    } else {
                        int i14 = (nextState2 - nextState) + 3;
                        if (i14 > 6 || i14 < 0) {
                            int nextState4 = nextState(bArr, i6, nextState, i9);
                            int add2DBits = i5 + add2DBits(bArr2, i5, TIFFFaxCompressor.horz, 0);
                            int add1DBits = add2DBits + add1DBits(bArr2, add2DBits, nextState - i12, i13);
                            i5 = add1DBits + add1DBits(bArr2, add1DBits, nextState4 - nextState, i13 ^ 1);
                            i12 = nextState4;
                        } else {
                            i5 += add2DBits(bArr2, i5, TIFFFaxCompressor.vert, i14);
                            i12 = nextState;
                        }
                    }
                    if (i12 >= i9) {
                        break;
                    }
                    i13 = ((bArr[(i12 >>> 3) + i6] & 255) >>> (7 - (i12 & 7))) & 1;
                    nextState = nextState(bArr, i6, i12, i9);
                    nextState2 = nextState(bArr, i8, i12, i9);
                    if ((((bArr[(nextState2 >>> 3) + i8] & 255) >>> (7 - (nextState2 & 7))) & 1) == i13) {
                        nextState2 = nextState(bArr, i8, nextState2, i9);
                    }
                }
            }
            i6 += i;
        }
        for (int i15 = 0; i15 < 6; i15++) {
            i5 += addEOL(z, z2, true, bArr2, i5);
        }
        while (true) {
            int i16 = this.ndex;
            if (i16 <= 0) {
                break;
            }
            int i17 = this.bits;
            bArr2[i5] = (byte) (i17 >>> 24);
            this.bits = i17 << 8;
            this.ndex = i16 - 8;
            i5++;
        }
        if (this.inverseFill) {
            for (int i18 = 0; i18 < i5; i18++) {
                bArr2[i18] = TIFFFaxDecompressor.flipTable[bArr2[i18] & 255];
            }
        }
        return i5;
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
    public void setMetadata(IIOMetadata iIOMetadata) {
        super.setMetadata(iIOMetadata);
        if (iIOMetadata instanceof TIFFImageMetadata) {
            TIFFImageMetadata tIFFImageMetadata = (TIFFImageMetadata) iIOMetadata;
            TIFFField tIFFField = tIFFImageMetadata.getTIFFField(292);
            if (tIFFField != null) {
                int asInt = tIFFField.getAsInt(0);
                this.is1DMode = (asInt & 1) == 0;
                this.isEOLAligned = (asInt & 4) == 4;
            } else {
                long[] jArr = new long[1];
                jArr[0] = (!this.is1DMode ? 1 : 0) | (this.isEOLAligned ? 4 : 0);
                tIFFImageMetadata.rootIFD.addTIFFField(new TIFFField(BaselineTIFFTagSet.getInstance().getTag(292), 4, 1, jArr));
            }
        }
    }
}
