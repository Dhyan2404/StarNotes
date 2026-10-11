package org.apache.poi.hdgf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes12.dex */
final class HDGFLZWCompressor {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private int bufferLen;
    private int maskBitsSet;
    private int nextMask;
    private int posInp;
    private int posOut;
    private int rawCodeLen;
    private final OutputStream res;
    private final byte[] dict = new byte[4096];
    private final byte[] buffer = new byte[16];
    private final byte[] rawCode = new byte[18];

    public HDGFLZWCompressor(OutputStream outputStream) {
        this.res = outputStream;
    }

    private int findRawCodeInBuffer() {
        for (int i = this.rawCodeLen + 1; i < 4096; i++) {
            int i2 = (this.posInp - i) & 4095;
            boolean z = false;
            int i3 = 0;
            while (true) {
                if (i3 >= this.rawCodeLen) {
                    z = true;
                    break;
                }
                if (this.dict[(i2 + i3) & 4095] != this.rawCode[i3]) {
                    break;
                }
                i3++;
            }
            if (z) {
                return i2;
            }
        }
        return -1;
    }

    private void output8Codes() throws IOException {
        this.res.write(this.nextMask);
        this.res.write(this.buffer, 0, this.bufferLen);
        this.posOut += this.bufferLen + 1;
        this.nextMask = 0;
        this.maskBitsSet = 0;
        this.bufferLen = 0;
    }

    private void outputCompressed() throws IOException {
        int i = this.rawCodeLen;
        if (i < 3) {
            for (int i2 = 0; i2 < i; i2++) {
                outputUncompressed(this.rawCode[i2]);
            }
            return;
        }
        int findRawCodeInBuffer = (findRawCodeInBuffer() - 18) & 4095;
        int i3 = this.maskBitsSet + 1;
        this.maskBitsSet = i3;
        int i4 = findRawCodeInBuffer & 255;
        int i5 = (this.rawCodeLen - 3) + ((findRawCodeInBuffer - i4) >>> 4);
        byte[] bArr = this.buffer;
        int i6 = this.bufferLen;
        int i7 = i6 + 1;
        bArr[i6] = (byte) i4;
        this.bufferLen = i7 + 1;
        bArr[i7] = (byte) i5;
        if (i3 == 8) {
            output8Codes();
        }
        this.rawCodeLen = 0;
    }

    private void outputUncompressed(byte b) throws IOException {
        int i = this.nextMask;
        int i2 = this.maskBitsSet;
        this.nextMask = i + (1 << i2);
        int i3 = i2 + 1;
        this.maskBitsSet = i3;
        byte[] bArr = this.buffer;
        int i4 = this.bufferLen;
        this.bufferLen = i4 + 1;
        bArr[i4] = b;
        if (i3 == 8) {
            output8Codes();
        }
        this.rawCodeLen = 0;
    }

    public void compress(InputStream inputStream) throws IOException {
        int i = -1;
        while (true) {
            if (i > -1) {
                byte[] bArr = this.dict;
                int i2 = this.posInp;
                this.posInp = i2 + 1;
                bArr[i2 & 4095] = (byte) i;
            }
            i = inputStream.read();
            if (i == -1) {
                break;
            }
            byte b = (byte) i;
            byte[] bArr2 = this.rawCode;
            int i3 = this.rawCodeLen;
            this.rawCodeLen = i3 + 1;
            bArr2[i3] = b;
            if (findRawCodeInBuffer() <= -1) {
                int i4 = this.rawCodeLen - 1;
                this.rawCodeLen = i4;
                if (i4 > 0) {
                    outputCompressed();
                    this.rawCode[0] = b;
                    this.rawCodeLen = 1;
                    if (findRawCodeInBuffer() <= -1) {
                        outputUncompressed(b);
                    }
                } else {
                    outputUncompressed(b);
                }
            } else if (this.rawCodeLen == 18) {
                outputCompressed();
            }
        }
        if (this.rawCodeLen > 0) {
            outputCompressed();
            if (this.maskBitsSet > 0) {
                output8Codes();
            }
        }
    }
}
