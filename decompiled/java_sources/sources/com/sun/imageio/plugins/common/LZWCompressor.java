package com.sun.imageio.plugins.common;

import java.io.IOException;
import java.io.PrintStream;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes9.dex */
public class LZWCompressor {

    /* renamed from: bf */
    BitFile f64034bf;
    int clearCode;
    int codeSize;
    int endOfInfo;
    int limit;
    LZWStringTable lzss;
    int numBits;
    short prefix;
    boolean tiffFudge;

    public LZWCompressor(ImageOutputStream imageOutputStream, int i, boolean z) throws IOException {
        this.f64034bf = new BitFile(imageOutputStream, !z);
        this.codeSize = i;
        this.tiffFudge = z;
        int i2 = 1 << i;
        this.clearCode = i2;
        this.endOfInfo = i2 + 1;
        int i3 = i + 1;
        this.numBits = i3;
        int i4 = (1 << i3) - 1;
        this.limit = i4;
        if (z) {
            this.limit = i4 - 1;
        }
        this.prefix = (short) -1;
        LZWStringTable lZWStringTable = new LZWStringTable();
        this.lzss = lZWStringTable;
        lZWStringTable.clearTable(i);
        this.f64034bf.writeBits(this.clearCode, this.numBits);
    }

    public void compress(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i2 + i;
        while (i < i3) {
            byte b = bArr[i];
            short findCharString = this.lzss.findCharString(this.prefix, b);
            if (findCharString != -1) {
                this.prefix = findCharString;
            } else {
                this.f64034bf.writeBits(this.prefix, this.numBits);
                if (this.lzss.addCharString(this.prefix, b) > this.limit) {
                    int i4 = this.numBits;
                    if (i4 == 12) {
                        this.f64034bf.writeBits(this.clearCode, i4);
                        this.lzss.clearTable(this.codeSize);
                        this.numBits = this.codeSize + 1;
                    } else {
                        this.numBits = i4 + 1;
                    }
                    int i5 = (1 << this.numBits) - 1;
                    this.limit = i5;
                    if (this.tiffFudge) {
                        this.limit = i5 - 1;
                    }
                }
                this.prefix = (short) (b & 255);
            }
            i++;
        }
    }

    public void dump(PrintStream printStream) {
        this.lzss.dump(printStream);
    }

    public void flush() throws IOException {
        short s = this.prefix;
        if (s != -1) {
            this.f64034bf.writeBits(s, this.numBits);
        }
        this.f64034bf.writeBits(this.endOfInfo, this.numBits);
        this.f64034bf.flush();
    }
}
