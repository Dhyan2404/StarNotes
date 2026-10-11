package com.sun.imageio.plugins.tiff;

import java.io.IOException;
import javax.imageio.IIOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes9.dex */
public class TIFFLZWDecompressor extends TIFFDecompressor {
    private static final int CLEAR_CODE = 256;
    private static final int EOI_CODE = 257;
    private static final int FIRST_CODE = 258;
    private static final int[] andTable = {511, 1023, 2047, 4095};
    private byte[] dstData;
    private int dstIndex;
    private boolean flipBits;
    private int predictor;
    private byte[] srcData;
    private int srcIndex;
    private byte[][] stringTable;
    private int tableIndex;
    private int bitsToGet = 9;
    private int nextData = 0;
    private int nextBits = 0;

    public TIFFLZWDecompressor(int i, int i2) throws IIOException {
        if (i != 1 && i != 2) {
            throw new IIOException("Illegal value for Predictor in TIFF file");
        }
        this.predictor = i;
        this.flipBits = i2 == 2;
    }

    public void addStringToTable(byte[] bArr, byte b) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 1];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        bArr2[length] = b;
        byte[][] bArr3 = this.stringTable;
        int i = this.tableIndex;
        int i2 = i + 1;
        this.tableIndex = i2;
        bArr3[i] = bArr2;
        if (i2 == 511) {
            this.bitsToGet = 10;
        } else if (i2 == 1023) {
            this.bitsToGet = 11;
        } else if (i2 == 2047) {
            this.bitsToGet = 12;
        }
    }

    public byte[] composeString(byte[] bArr, byte b) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 1];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        bArr2[length] = b;
        return bArr2;
    }

    public int decode(byte[] bArr, int i, byte[] bArr2, int i2) throws IOException {
        int i3;
        if (bArr[0] == 0 && bArr[1] == 1) {
            throw new IIOException("TIFF 5.0-style LZW compression is not supported!");
        }
        this.srcData = bArr;
        this.dstData = bArr2;
        this.srcIndex = i;
        this.dstIndex = i2;
        this.nextData = 0;
        this.nextBits = 0;
        initializeStringTable();
        int i4 = 0;
        while (true) {
            int nextCode = getNextCode();
            if (nextCode == 257) {
                break;
            }
            if (nextCode == 256) {
                initializeStringTable();
                i4 = getNextCode();
                if (i4 == 257) {
                    break;
                }
                writeString(this.stringTable[i4]);
            } else {
                if (nextCode < this.tableIndex) {
                    byte[] bArr3 = this.stringTable[nextCode];
                    writeString(bArr3);
                    addStringToTable(this.stringTable[i4], bArr3[0]);
                } else {
                    byte[] bArr4 = this.stringTable[i4];
                    byte[] composeString = composeString(bArr4, bArr4[0]);
                    writeString(composeString);
                    addStringToTable(composeString);
                }
                i4 = nextCode;
            }
        }
        if (this.predictor == 2) {
            if (this.planar || (i3 = this.samplesPerPixel) == 1) {
                i3 = 1;
            }
            int i5 = this.srcWidth * i3;
            int i6 = i2 + i3;
            for (int i7 = 0; i7 < this.srcHeight; i7++) {
                int i8 = i6;
                for (int i9 = i3; i9 < i5; i9++) {
                    byte[] bArr5 = this.dstData;
                    bArr5[i8] = (byte) (bArr5[i8] + bArr5[i8 - i3]);
                    i8++;
                }
                i6 += i5;
            }
        }
        return this.dstIndex - i2;
    }

    @Override // com.sun.imageio.plugins.tiff.TIFFDecompressor
    public void decodeRaw(byte[] bArr, int i, int i2, int i3) throws IOException {
        byte[] bArr2;
        int i4;
        if (this.predictor == 2) {
            int length = this.bitsPerSample.length;
            for (int i5 = 0; i5 < length; i5++) {
                if (this.bitsPerSample[i5] != 8) {
                    throw new IIOException(this.bitsPerSample[i5] + "-bit samples are not supported for Horizontal differencing Predictor");
                }
            }
        }
        this.stream.seek(this.offset);
        byte[] bArr3 = new byte[this.byteCount];
        this.stream.readFully(bArr3);
        if (this.flipBits) {
            for (int i6 = 0; i6 < this.byteCount; i6++) {
                bArr3[i6] = TIFFFaxDecompressor.flipTable[bArr3[i6] & 255];
            }
        }
        int i7 = ((this.srcWidth * i2) + 7) / 8;
        if (i7 == i3) {
            bArr2 = bArr;
            i4 = i;
        } else {
            bArr2 = new byte[this.srcHeight * i7];
            i4 = 0;
        }
        decode(bArr3, 0, bArr2, i4);
        if (i7 != i3) {
            int i8 = 0;
            for (int i9 = 0; i9 < this.srcHeight; i9++) {
                System.arraycopy(bArr2, i8, bArr, i, i7);
                i8 += i7;
                i += i3;
            }
        }
    }

    public int getNextCode() {
        try {
            int i = this.nextData << 8;
            byte[] bArr = this.srcData;
            int i2 = this.srcIndex;
            int i3 = i2 + 1;
            this.srcIndex = i3;
            int i4 = i | (bArr[i2] & 255);
            this.nextData = i4;
            int i5 = this.nextBits + 8;
            this.nextBits = i5;
            int i6 = this.bitsToGet;
            if (i5 < i6) {
                this.srcIndex = i3 + 1;
                this.nextData = (i4 << 8) | (bArr[i3] & 255);
                this.nextBits = i5 + 8;
            }
            int i7 = this.nextData;
            int i8 = this.nextBits;
            int i9 = (i7 >> (i8 - i6)) & andTable[i6 - 9];
            this.nextBits = i8 - i6;
            return i9;
        } catch (ArrayIndexOutOfBoundsException unused) {
            return 257;
        }
    }

    public void initializeStringTable() {
        this.stringTable = new byte[4096];
        for (int i = 0; i < 256; i++) {
            byte[] bArr = new byte[1];
            this.stringTable[i] = bArr;
            bArr[0] = (byte) i;
        }
        this.tableIndex = 258;
        this.bitsToGet = 9;
    }

    public void writeString(byte[] bArr) {
        int i = this.dstIndex;
        byte[] bArr2 = this.dstData;
        if (i < bArr2.length) {
            int min = Math.min(bArr.length, bArr2.length - i);
            for (int i2 = 0; i2 < min; i2++) {
                byte[] bArr3 = this.dstData;
                int i3 = this.dstIndex;
                this.dstIndex = i3 + 1;
                bArr3[i3] = bArr[i2];
            }
        }
    }

    public void addStringToTable(byte[] bArr) {
        byte[][] bArr2 = this.stringTable;
        int i = this.tableIndex;
        int i2 = i + 1;
        this.tableIndex = i2;
        bArr2[i] = bArr;
        if (i2 == 511) {
            this.bitsToGet = 10;
        } else if (i2 == 1023) {
            this.bitsToGet = 11;
        } else if (i2 == 2047) {
            this.bitsToGet = 12;
        }
    }
}
