package com.sun.org.apache.xml.internal.serializer;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;

/* loaded from: classes10.dex */
final class WriterToUTF8Buffered extends Writer implements WriterChain {
    private static final int BYTES_MAX = 16384;
    private static final int CHARS_MAX = 5461;
    private final OutputStream m_os;
    private final byte[] m_outputBytes = new byte[16387];
    private final char[] m_inputChars = new char[5463];
    private int count = 0;

    public WriterToUTF8Buffered(OutputStream outputStream) throws UnsupportedEncodingException {
        this.m_os = outputStream;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable, com.sun.org.apache.xml.internal.serializer.WriterChain
    public void close() throws IOException {
        flushBuffer();
        this.m_os.close();
    }

    @Override // java.io.Writer, java.io.Flushable, com.sun.org.apache.xml.internal.serializer.WriterChain
    public void flush() throws IOException {
        flushBuffer();
        this.m_os.flush();
    }

    public void flushBuffer() throws IOException {
        int i = this.count;
        if (i > 0) {
            this.m_os.write(this.m_outputBytes, 0, i);
            this.count = 0;
        }
    }

    @Override // com.sun.org.apache.xml.internal.serializer.WriterChain
    public OutputStream getOutputStream() {
        return this.m_os;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.WriterChain
    public Writer getWriter() {
        return null;
    }

    @Override // java.io.Writer, com.sun.org.apache.xml.internal.serializer.WriterChain
    public void write(int i) throws IOException {
        if (this.count >= 16384) {
            flushBuffer();
        }
        if (i < 128) {
            byte[] bArr = this.m_outputBytes;
            int i2 = this.count;
            this.count = i2 + 1;
            bArr[i2] = (byte) i;
            return;
        }
        if (i < 2048) {
            byte[] bArr2 = this.m_outputBytes;
            int i3 = this.count;
            int i4 = i3 + 1;
            bArr2[i3] = (byte) ((i >> 6) + 192);
            this.count = i4 + 1;
            bArr2[i4] = (byte) ((i & 63) + 128);
            return;
        }
        if (i < 65536) {
            byte[] bArr3 = this.m_outputBytes;
            int i5 = this.count;
            int i6 = i5 + 1;
            bArr3[i5] = (byte) ((i >> 12) + 224);
            int i7 = i6 + 1;
            bArr3[i6] = (byte) (((i >> 6) & 63) + 128);
            this.count = i7 + 1;
            bArr3[i7] = (byte) ((i & 63) + 128);
            return;
        }
        byte[] bArr4 = this.m_outputBytes;
        int i8 = this.count;
        int i9 = i8 + 1;
        bArr4[i8] = (byte) ((i >> 18) + 240);
        int i10 = i9 + 1;
        bArr4[i9] = (byte) (((i >> 12) & 63) + 128);
        int i11 = i10 + 1;
        bArr4[i10] = (byte) (((i >> 6) & 63) + 128);
        this.count = i11 + 1;
        bArr4[i11] = (byte) ((i & 63) + 128);
    }

    @Override // java.io.Writer, com.sun.org.apache.xml.internal.serializer.WriterChain
    public void write(char[] cArr, int i, int i2) throws IOException {
        int i3;
        char c;
        int i4 = i2 * 3;
        int i5 = 1;
        if (i4 >= 16384 - this.count) {
            flushBuffer();
            if (i4 > 16384) {
                int i6 = i2 / CHARS_MAX;
                int i7 = i6 > 1 ? i6 : 2;
                int i8 = i;
                while (i5 <= i7) {
                    int i9 = ((int) ((i2 * i5) / i7)) + i;
                    char c2 = cArr[i9 - 1];
                    if (c2 >= 55296 && c2 <= 56319) {
                        i9 = i9 < i + i2 ? i9 + 1 : i9 - 1;
                    }
                    write(cArr, i8, i9 - i8);
                    i5++;
                    i8 = i9;
                }
                return;
            }
        }
        int i10 = i2 + i;
        byte[] bArr = this.m_outputBytes;
        int i11 = this.count;
        while (i < i10 && (c = cArr[i]) < 128) {
            bArr[i11] = (byte) c;
            i++;
            i11++;
        }
        while (i < i10) {
            char c3 = cArr[i];
            if (c3 < 128) {
                i3 = i11 + 1;
                bArr[i11] = (byte) c3;
            } else {
                if (c3 < 2048) {
                    int i12 = i11 + 1;
                    bArr[i11] = (byte) ((c3 >> 6) + 192);
                    i11 = i12 + 1;
                    bArr[i12] = (byte) ((c3 & '?') + 128);
                } else if (c3 >= 55296 && c3 <= 56319) {
                    i++;
                    char c4 = cArr[i];
                    int i13 = i11 + 1;
                    int i14 = c3 + '@';
                    bArr[i11] = (byte) (((i14 >> 8) & 240) | 240);
                    int i15 = i13 + 1;
                    bArr[i13] = (byte) (((i14 >> 2) & 63) | 128);
                    int i16 = i15 + 1;
                    bArr[i15] = (byte) ((((c4 >> 6) & 15) + ((c3 << 4) & 48)) | 128);
                    i11 = i16 + 1;
                    bArr[i16] = (byte) ((c4 & '?') | 128);
                } else {
                    int i17 = i11 + 1;
                    bArr[i11] = (byte) ((c3 >> '\f') + 224);
                    int i18 = i17 + 1;
                    bArr[i17] = (byte) (((c3 >> 6) & 63) + 128);
                    i3 = i18 + 1;
                    bArr[i18] = (byte) ((c3 & '?') + 128);
                }
                i++;
            }
            i11 = i3;
            i++;
        }
        this.count = i11;
    }

    @Override // java.io.Writer, com.sun.org.apache.xml.internal.serializer.WriterChain
    public void write(String str) throws IOException {
        int i;
        char c;
        int length = str.length();
        int i2 = length * 3;
        int i3 = 0;
        int i4 = 1;
        if (i2 >= 16384 - this.count) {
            flushBuffer();
            if (i2 > 16384) {
                int i5 = length / CHARS_MAX;
                int i6 = i5 > 1 ? i5 : 2;
                int i7 = 0;
                while (i4 <= i6) {
                    int i8 = ((int) ((length * i4) / i6)) + 0;
                    str.getChars(i7, i8, this.m_inputChars, 0);
                    int i9 = i8 - i7;
                    char[] cArr = this.m_inputChars;
                    char c2 = cArr[i9 - 1];
                    if (c2 >= 55296 && c2 <= 56319) {
                        i8--;
                        i9--;
                    }
                    write(cArr, 0, i9);
                    i4++;
                    i7 = i8;
                }
                return;
            }
        }
        str.getChars(0, length, this.m_inputChars, 0);
        char[] cArr2 = this.m_inputChars;
        byte[] bArr = this.m_outputBytes;
        int i10 = this.count;
        while (i3 < length && (c = cArr2[i3]) < 128) {
            bArr[i10] = (byte) c;
            i3++;
            i10++;
        }
        while (i3 < length) {
            char c3 = cArr2[i3];
            if (c3 < 128) {
                i = i10 + 1;
                bArr[i10] = (byte) c3;
            } else {
                if (c3 < 2048) {
                    int i11 = i10 + 1;
                    bArr[i10] = (byte) ((c3 >> 6) + 192);
                    i10 = i11 + 1;
                    bArr[i11] = (byte) ((c3 & '?') + 128);
                } else if (c3 >= 55296 && c3 <= 56319) {
                    i3++;
                    char c4 = cArr2[i3];
                    int i12 = i10 + 1;
                    int i13 = c3 + '@';
                    bArr[i10] = (byte) (((i13 >> 8) & 240) | 240);
                    int i14 = i12 + 1;
                    bArr[i12] = (byte) (((i13 >> 2) & 63) | 128);
                    int i15 = i14 + 1;
                    bArr[i14] = (byte) ((((c4 >> 6) & 15) + ((c3 << 4) & 48)) | 128);
                    i10 = i15 + 1;
                    bArr[i15] = (byte) ((c4 & '?') | 128);
                } else {
                    int i16 = i10 + 1;
                    bArr[i10] = (byte) ((c3 >> '\f') + 224);
                    int i17 = i16 + 1;
                    bArr[i16] = (byte) (((c3 >> 6) & 63) + 128);
                    i = i17 + 1;
                    bArr[i17] = (byte) ((c3 & '?') + 128);
                }
                i3++;
            }
            i10 = i;
            i3++;
        }
        this.count = i10;
    }
}
