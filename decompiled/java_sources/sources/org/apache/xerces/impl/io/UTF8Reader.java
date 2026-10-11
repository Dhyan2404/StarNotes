package org.apache.xerces.impl.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Locale;
import org.apache.poi.convert.hwpf.HWPFWordToHtmlUtils;
import org.apache.xerces.impl.msg.XMLMessageFormatter;
import org.apache.xerces.util.MessageFormatter;

/* loaded from: classes13.dex */
public final class UTF8Reader extends Reader {
    public static final int DEFAULT_BUFFER_SIZE = 2048;

    /* renamed from: h */
    public static final boolean f112430h = false;

    /* renamed from: e */
    public int f112431e;

    /* renamed from: f */
    public final MessageFormatter f112432f;
    protected final byte[] fBuffer;
    protected final InputStream fInputStream;
    protected int fOffset;

    /* renamed from: g */
    public final Locale f112433g;

    public UTF8Reader(InputStream inputStream) {
        this(inputStream, 2048, new XMLMessageFormatter(), Locale.getDefault());
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.fInputStream.close();
    }

    /* renamed from: f */
    public final void m69981f(int i, int i2) throws MalformedByteSequenceException {
        throw new MalformedByteSequenceException(this.f112432f, this.f112433g, "http://www.w3.org/TR/1998/REC-xml-19980210", "ExpectedByte", new Object[]{Integer.toString(i), Integer.toString(i2)});
    }

    /* renamed from: j */
    public final void m69982j(int i, int i2, int i3) throws MalformedByteSequenceException {
        throw new MalformedByteSequenceException(this.f112432f, this.f112433g, "http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidByte", new Object[]{Integer.toString(i), Integer.toString(i2)});
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        throw new IOException(this.f112432f.formatMessage(this.f112433g, "OperationNotSupported", new Object[]{"mark()", "UTF-8"}));
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = this.f112431e;
        int i8 = -1;
        if (i7 == -1) {
            int i9 = 0;
            if (this.fOffset == 0) {
                i = this.fInputStream.read();
            } else {
                i = this.fBuffer[0] & 255;
                i9 = 1;
            }
            if (i == -1) {
                return -1;
            }
            if (i < 128) {
                return (char) i;
            }
            if ((i & 224) == 192 && (i & 30) != 0) {
                int read = i9 == this.fOffset ? this.fInputStream.read() : this.fBuffer[i9] & 255;
                if (read == -1) {
                    m69981f(2, 2);
                }
                if ((read & 192) != 128) {
                    m69982j(2, 2, read);
                }
                i5 = (i << 6) & 1984;
                i6 = read & 63;
            } else if ((i & 240) == 224) {
                if (i9 == this.fOffset) {
                    i4 = this.fInputStream.read();
                } else {
                    i4 = this.fBuffer[i9] & 255;
                    i9++;
                }
                if (i4 == -1) {
                    m69981f(2, 3);
                }
                if ((i4 & 192) != 128 || ((i == 237 && i4 >= 160) || ((i & 15) == 0 && (i4 & 32) == 0))) {
                    m69982j(2, 3, i4);
                }
                int read2 = i9 == this.fOffset ? this.fInputStream.read() : this.fBuffer[i9] & 255;
                if (read2 == -1) {
                    m69981f(3, 3);
                }
                if ((read2 & 192) != 128) {
                    m69982j(3, 3, read2);
                }
                i5 = ((i << 12) & 61440) | ((i4 << 6) & 4032);
                i6 = read2 & 63;
            } else {
                if ((i & 248) != 240) {
                    m69982j(1, 1, i);
                    return i7;
                }
                if (i9 == this.fOffset) {
                    i2 = this.fInputStream.read();
                } else {
                    i2 = this.fBuffer[i9] & 255;
                    i9++;
                }
                if (i2 == -1) {
                    m69981f(2, 4);
                }
                if ((i2 & 192) != 128 || ((i2 & 48) == 0 && (i & 7) == 0)) {
                    m69982j(2, 3, i2);
                }
                if (i9 == this.fOffset) {
                    i3 = this.fInputStream.read();
                } else {
                    i3 = this.fBuffer[i9] & 255;
                    i9++;
                }
                if (i3 == -1) {
                    m69981f(3, 4);
                }
                if ((i3 & 192) != 128) {
                    m69982j(3, 3, i3);
                }
                int read3 = i9 == this.fOffset ? this.fInputStream.read() : this.fBuffer[i9] & 255;
                if (read3 == -1) {
                    m69981f(4, 4);
                }
                if ((read3 & 192) != 128) {
                    m69982j(4, 4, read3);
                }
                int i10 = ((i << 2) & 28) | ((i2 >> 4) & 3);
                if (i10 > 16) {
                    m69983w(i10);
                }
                i7 = ((i2 << 2) & 60) | (((i10 - 1) << 6) & HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT) | 55296 | ((i3 >> 4) & 3);
                i8 = ((i3 << 6) & HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT) | 56320 | (read3 & 63);
            }
            return i6 | i5;
        }
        this.f112431e = i8;
        return i7;
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        return false;
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        this.fOffset = 0;
        this.f112431e = -1;
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        int length = this.fBuffer.length;
        char[] cArr = new char[length];
        long j2 = j;
        do {
            int read = read(cArr, 0, ((long) length) < j2 ? length : (int) j2);
            if (read <= 0) {
                break;
            }
            j2 -= read;
        } while (j2 > 0);
        return j - j2;
    }

    /* renamed from: w */
    public final void m69983w(int i) throws MalformedByteSequenceException {
        throw new MalformedByteSequenceException(this.f112432f, this.f112433g, "http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidHighSurrogate", new Object[]{Integer.toHexString(i)});
    }

    public UTF8Reader(InputStream inputStream, int i, MessageFormatter messageFormatter, Locale locale) {
        this(inputStream, new byte[i], messageFormatter, locale);
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int read;
        int read2;
        int read3;
        int i5;
        int read4;
        int read5;
        int i6;
        int read6;
        int i7 = this.fOffset;
        int i8 = -1;
        if (i7 == 0) {
            byte[] bArr = this.fBuffer;
            i4 = i2 > bArr.length ? bArr.length : i2;
            int i9 = this.f112431e;
            if (i9 != -1) {
                i3 = i + 1;
                cArr[i] = (char) i9;
                this.f112431e = -1;
                i4--;
            } else {
                i3 = i;
            }
            int read7 = this.fInputStream.read(bArr, 0, i4);
            if (read7 == -1) {
                return -1;
            }
            i7 = read7 + (i3 - i);
        } else {
            this.fOffset = 0;
            i3 = i;
            i4 = i2;
        }
        int i10 = 0;
        while (i10 < i7) {
            byte b = this.fBuffer[i10];
            if (b < 0) {
                break;
            }
            cArr[i3] = (char) b;
            i10++;
            i3++;
        }
        int i11 = i7;
        while (i10 < i7) {
            byte[] bArr2 = this.fBuffer;
            byte b2 = bArr2[i10];
            if (b2 >= 0) {
                i6 = i3 + 1;
                cArr[i3] = (char) b2;
            } else {
                int i12 = b2 & 255;
                if ((i12 & 224) != 192 || (i12 & 30) == 0) {
                    int i13 = 3;
                    if ((i12 & 240) == 224) {
                        int i14 = i10 + 1;
                        if (i14 < i7) {
                            read4 = bArr2[i14] & 255;
                        } else {
                            read4 = this.fInputStream.read();
                            if (read4 == i8) {
                                if (i3 > i) {
                                    this.fBuffer[0] = (byte) i12;
                                    this.fOffset = 1;
                                } else {
                                    m69981f(2, 3);
                                }
                            }
                            i11++;
                        }
                        if ((read4 & 192) != 128 || ((i12 == 237 && read4 >= 160) || ((i12 & 15) == 0 && (read4 & 32) == 0))) {
                            if (i3 > i) {
                                byte[] bArr3 = this.fBuffer;
                                bArr3[0] = (byte) i12;
                                bArr3[1] = (byte) read4;
                                this.fOffset = 2;
                            } else {
                                m69982j(2, 3, read4);
                            }
                        }
                        i10 = i14 + 1;
                        if (i10 < i7) {
                            read5 = this.fBuffer[i10] & 255;
                        } else {
                            read5 = this.fInputStream.read();
                            if (read5 == i8) {
                                if (i3 > i) {
                                    byte[] bArr4 = this.fBuffer;
                                    bArr4[0] = (byte) i12;
                                    bArr4[1] = (byte) read4;
                                    this.fOffset = 2;
                                } else {
                                    m69981f(3, 3);
                                }
                            }
                            i11++;
                        }
                        if ((read5 & 192) != 128) {
                            if (i3 > i) {
                                byte[] bArr5 = this.fBuffer;
                                bArr5[0] = (byte) i12;
                                bArr5[1] = (byte) read4;
                                bArr5[2] = (byte) read5;
                                this.fOffset = i13;
                            } else {
                                m69982j(3, 3, read5);
                            }
                        }
                        int i15 = ((i12 << 12) & 61440) | ((read4 << 6) & 4032) | (read5 & 63);
                        i6 = i3 + 1;
                        cArr[i3] = (char) i15;
                        i11 -= 2;
                    } else if ((i12 & 248) == 240) {
                        int i16 = i10 + 1;
                        if (i16 < i7) {
                            read = bArr2[i16] & 255;
                        } else {
                            read = this.fInputStream.read();
                            if (read == -1) {
                                if (i3 > i) {
                                    this.fBuffer[0] = (byte) i12;
                                    this.fOffset = 1;
                                } else {
                                    m69981f(2, 4);
                                }
                            }
                            i11++;
                        }
                        if ((read & 192) != 128 || ((read & 48) == 0 && (i12 & 7) == 0)) {
                            if (i3 > i) {
                                byte[] bArr6 = this.fBuffer;
                                bArr6[0] = (byte) i12;
                                bArr6[1] = (byte) read;
                                this.fOffset = 2;
                            } else {
                                m69982j(2, 4, read);
                            }
                        }
                        int i17 = i16 + 1;
                        if (i17 < i7) {
                            read2 = this.fBuffer[i17] & 255;
                        } else {
                            read2 = this.fInputStream.read();
                            if (read2 == -1) {
                                if (i3 > i) {
                                    byte[] bArr7 = this.fBuffer;
                                    bArr7[0] = (byte) i12;
                                    bArr7[1] = (byte) read;
                                    this.fOffset = 2;
                                } else {
                                    m69981f(3, 4);
                                }
                            }
                            i11++;
                        }
                        if ((read2 & 192) != 128) {
                            if (i3 > i) {
                                byte[] bArr8 = this.fBuffer;
                                bArr8[0] = (byte) i12;
                                bArr8[1] = (byte) read;
                                bArr8[2] = (byte) read2;
                                this.fOffset = i13;
                            } else {
                                m69982j(3, 4, read2);
                            }
                        }
                        i10 = i17 + 1;
                        if (i10 < i7) {
                            read3 = this.fBuffer[i10] & 255;
                        } else {
                            read3 = this.fInputStream.read();
                            if (read3 == -1) {
                                if (i3 > i) {
                                    byte[] bArr9 = this.fBuffer;
                                    bArr9[0] = (byte) i12;
                                    bArr9[1] = (byte) read;
                                    bArr9[2] = (byte) read2;
                                    this.fOffset = i13;
                                } else {
                                    m69981f(4, 4);
                                }
                            }
                            i11++;
                        }
                        if ((read3 & 192) != 128) {
                            if (i3 > i) {
                                byte[] bArr10 = this.fBuffer;
                                bArr10[0] = (byte) i12;
                                bArr10[1] = (byte) read;
                                bArr10[2] = (byte) read2;
                                bArr10[3] = (byte) read3;
                                i13 = 4;
                                this.fOffset = i13;
                            } else {
                                m69982j(4, 4, read2);
                            }
                        }
                        int i18 = ((i12 << 2) & 28) | ((read >> 4) & 3);
                        if (i18 > 16) {
                            m69983w(i18);
                        }
                        int i19 = read2 & 63;
                        int i20 = ((read & 15) << 2) | (((i18 - 1) << 6) & HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT) | 55296 | (i19 >> 4);
                        int i21 = (read3 & 63) | ((i19 << 6) & HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT) | 56320;
                        i5 = i3 + 1;
                        cArr[i3] = (char) i20;
                        i11 -= 2;
                        if (i11 <= i4) {
                            i3 = i5 + 1;
                            cArr[i5] = (char) i21;
                            i10++;
                            i8 = -1;
                        } else {
                            this.f112431e = i21;
                            i11--;
                            i3 = i5;
                            i10++;
                            i8 = -1;
                        }
                    } else if (i3 > i) {
                        bArr2[0] = (byte) i12;
                        this.fOffset = 1;
                    } else {
                        m69982j(1, 1, i12);
                        i10++;
                        i8 = -1;
                    }
                    return i3 - i;
                }
                i10++;
                if (i10 < i7) {
                    read6 = bArr2[i10] & 255;
                } else {
                    read6 = this.fInputStream.read();
                    if (read6 == i8) {
                        if (i3 > i) {
                            this.fBuffer[0] = (byte) i12;
                            this.fOffset = 1;
                            return i3 - i;
                        }
                        m69981f(2, 2);
                    }
                    i11++;
                }
                if ((read6 & 192) != 128) {
                    if (i3 > i) {
                        byte[] bArr11 = this.fBuffer;
                        bArr11[0] = (byte) i12;
                        bArr11[1] = (byte) read6;
                        this.fOffset = 2;
                        return i3 - i;
                    }
                    m69982j(2, 2, read6);
                }
                int i22 = (read6 & 63) | ((i12 << 6) & 1984);
                i5 = i3 + 1;
                cArr[i3] = (char) i22;
                i11 += i8;
                i3 = i5;
                i10++;
                i8 = -1;
            }
            i3 = i6;
            i10++;
            i8 = -1;
        }
        return i11;
    }

    public UTF8Reader(InputStream inputStream, MessageFormatter messageFormatter, Locale locale) {
        this(inputStream, 2048, messageFormatter, locale);
    }

    public UTF8Reader(InputStream inputStream, byte[] bArr, MessageFormatter messageFormatter, Locale locale) {
        this.f112431e = -1;
        this.fInputStream = inputStream;
        this.fBuffer = bArr;
        this.f112432f = messageFormatter;
        this.f112433g = locale;
    }
}
