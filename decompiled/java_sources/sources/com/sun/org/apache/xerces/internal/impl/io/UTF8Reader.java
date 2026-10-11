package com.sun.org.apache.xerces.internal.impl.io;

import com.sun.org.apache.xerces.internal.impl.msg.XMLMessageFormatter;
import com.sun.org.apache.xerces.internal.util.MessageFormatter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Locale;
import org.apache.poi.convert.hwpf.HWPFWordToHtmlUtils;

/* loaded from: classes10.dex */
public class UTF8Reader extends Reader {
    private static final boolean DEBUG_READ = false;
    public static final int DEFAULT_BUFFER_SIZE = 2048;
    protected byte[] fBuffer;
    private MessageFormatter fFormatter;
    protected InputStream fInputStream;
    private Locale fLocale;
    protected int fOffset;
    private int fSurrogate;

    public UTF8Reader(InputStream inputStream) {
        this(inputStream, 2048, new XMLMessageFormatter(), Locale.getDefault());
    }

    private void expectedByte(int i, int i2) throws MalformedByteSequenceException {
        throw new MalformedByteSequenceException(this.fFormatter, this.fLocale, "http://www.w3.org/TR/1998/REC-xml-19980210", "ExpectedByte", new Object[]{Integer.toString(i), Integer.toString(i2)});
    }

    private void invalidByte(int i, int i2, int i3) throws MalformedByteSequenceException {
        throw new MalformedByteSequenceException(this.fFormatter, this.fLocale, "http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidByte", new Object[]{Integer.toString(i), Integer.toString(i2)});
    }

    private void invalidSurrogate(int i) throws MalformedByteSequenceException {
        throw new MalformedByteSequenceException(this.fFormatter, this.fLocale, "http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidHighSurrogate", new Object[]{Integer.toHexString(i)});
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.fInputStream.close();
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        throw new IOException(this.fFormatter.formatMessage(this.fLocale, "OperationNotSupported", new Object[]{"mark()", "UTF-8"}));
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
        int i7;
        int i8 = this.fSurrogate;
        if (i8 == -1) {
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
                i7 = (char) i;
            } else {
                if ((i & 224) == 192 && (i & 30) != 0) {
                    int read = i9 == this.fOffset ? this.fInputStream.read() : this.fBuffer[i9] & 255;
                    if (read == -1) {
                        expectedByte(2, 2);
                    }
                    if ((read & 192) != 128) {
                        invalidByte(2, 2, read);
                    }
                    i5 = (i << 6) & 1984;
                    i6 = read & 63;
                } else {
                    if ((i & 240) != 224) {
                        if ((i & 248) == 240) {
                            if (i9 == this.fOffset) {
                                i2 = this.fInputStream.read();
                            } else {
                                i2 = this.fBuffer[i9] & 255;
                                i9++;
                            }
                            if (i2 == -1) {
                                expectedByte(2, 4);
                            }
                            if ((i2 & 192) != 128 || ((i2 & 48) == 0 && (i & 7) == 0)) {
                                invalidByte(2, 3, i2);
                            }
                            if (i9 == this.fOffset) {
                                i3 = this.fInputStream.read();
                            } else {
                                i3 = this.fBuffer[i9] & 255;
                                i9++;
                            }
                            if (i3 == -1) {
                                expectedByte(3, 4);
                            }
                            if ((i3 & 192) != 128) {
                                invalidByte(3, 3, i3);
                            }
                            int read2 = i9 == this.fOffset ? this.fInputStream.read() : this.fBuffer[i9] & 255;
                            if (read2 == -1) {
                                expectedByte(4, 4);
                            }
                            if ((read2 & 192) != 128) {
                                invalidByte(4, 4, read2);
                            }
                            int i10 = ((i << 2) & 28) | ((i2 >> 4) & 3);
                            if (i10 > 16) {
                                invalidSurrogate(i10);
                            }
                            int i11 = ((i2 << 2) & 60) | (((i10 - 1) << 6) & HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT) | 55296 | ((i3 >> 4) & 3);
                            this.fSurrogate = ((i3 << 6) & HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT) | 56320 | (read2 & 63);
                            return i11;
                        }
                        invalidByte(1, 1, i);
                        return i8;
                    }
                    if (i9 == this.fOffset) {
                        i4 = this.fInputStream.read();
                    } else {
                        i4 = this.fBuffer[i9] & 255;
                        i9++;
                    }
                    if (i4 == -1) {
                        expectedByte(2, 3);
                    }
                    if ((i4 & 192) != 128 || ((i == 237 && i4 >= 160) || ((i & 15) == 0 && (i4 & 32) == 0))) {
                        invalidByte(2, 3, i4);
                    }
                    int read3 = i9 == this.fOffset ? this.fInputStream.read() : this.fBuffer[i9] & 255;
                    if (read3 == -1) {
                        expectedByte(3, 3);
                    }
                    if ((read3 & 192) != 128) {
                        invalidByte(3, 3, read3);
                    }
                    i5 = ((i << 12) & 61440) | ((i4 << 6) & 4032);
                    i6 = read3 & 63;
                }
                i7 = i5 | i6;
            }
            return i7;
        }
        this.fSurrogate = -1;
        return i8;
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        return false;
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        this.fOffset = 0;
        this.fSurrogate = -1;
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

    public UTF8Reader(InputStream inputStream, MessageFormatter messageFormatter, Locale locale) {
        this(inputStream, 2048, messageFormatter, locale);
    }

    public UTF8Reader(InputStream inputStream, int i, MessageFormatter messageFormatter, Locale locale) {
        this.fSurrogate = -1;
        this.fFormatter = null;
        this.fLocale = null;
        this.fInputStream = inputStream;
        this.fBuffer = new byte[i];
        this.fFormatter = messageFormatter;
        this.fLocale = locale;
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int read;
        int read2;
        int read3;
        int read4;
        int read5;
        int i5;
        int read6;
        int i6 = this.fSurrogate;
        int i7 = -1;
        if (i6 != -1) {
            i4 = i + 1;
            cArr[i4] = (char) i6;
            this.fSurrogate = -1;
            i3 = i2 - 1;
        } else {
            i3 = i2;
            i4 = i;
        }
        int i8 = this.fOffset;
        if (i8 == 0) {
            byte[] bArr = this.fBuffer;
            if (i3 > bArr.length) {
                i3 = bArr.length;
            }
            int read7 = this.fInputStream.read(bArr, 0, i3);
            if (read7 == -1) {
                return -1;
            }
            i8 = (i4 - i) + read7;
        } else {
            this.fOffset = 0;
        }
        int i9 = 0;
        while (i9 < i8) {
            byte b = this.fBuffer[i9];
            if (b < 0) {
                break;
            }
            cArr[i4] = (char) b;
            i9++;
            i4++;
        }
        int i10 = i8;
        while (i9 < i8) {
            byte[] bArr2 = this.fBuffer;
            byte b2 = bArr2[i9];
            if (b2 >= 0) {
                cArr[i4] = (char) b2;
                i4++;
            } else {
                int i11 = b2 & 255;
                if ((i11 & 224) != 192 || (i11 & 30) == 0) {
                    if ((i11 & 240) == 224) {
                        int i12 = i9 + 1;
                        if (i12 < i8) {
                            read4 = bArr2[i12] & 255;
                        } else {
                            read4 = this.fInputStream.read();
                            if (read4 == i7) {
                                if (i4 > i) {
                                    this.fBuffer[0] = (byte) i11;
                                    this.fOffset = 1;
                                } else {
                                    expectedByte(2, 3);
                                }
                            }
                            i10++;
                        }
                        if ((read4 & 192) != 128 || ((i11 == 237 && read4 >= 160) || ((i11 & 15) == 0 && (read4 & 32) == 0))) {
                            if (i4 > i) {
                                byte[] bArr3 = this.fBuffer;
                                bArr3[0] = (byte) i11;
                                bArr3[1] = (byte) read4;
                                this.fOffset = 2;
                            } else {
                                invalidByte(2, 3, read4);
                            }
                        }
                        i9 = i12 + 1;
                        if (i9 < i8) {
                            read5 = this.fBuffer[i9] & 255;
                        } else {
                            read5 = this.fInputStream.read();
                            if (read5 == i7) {
                                if (i4 > i) {
                                    byte[] bArr4 = this.fBuffer;
                                    bArr4[0] = (byte) i11;
                                    bArr4[1] = (byte) read4;
                                    this.fOffset = 2;
                                } else {
                                    expectedByte(3, 3);
                                }
                            }
                            i10++;
                        }
                        if ((read5 & 192) != 128) {
                            if (i4 > i) {
                                byte[] bArr5 = this.fBuffer;
                                bArr5[0] = (byte) i11;
                                bArr5[1] = (byte) read4;
                                bArr5[2] = (byte) read5;
                                this.fOffset = 3;
                            } else {
                                invalidByte(3, 3, read5);
                            }
                        }
                        int i13 = ((read4 << 6) & 4032) | ((i11 << 12) & 61440) | (read5 & 63);
                        i5 = i4 + 1;
                        cArr[i4] = (char) i13;
                        i10 -= 2;
                        i4 = i5;
                    } else if ((i11 & 248) == 240) {
                        int i14 = i9 + 1;
                        if (i14 < i8) {
                            read = bArr2[i14] & 255;
                        } else {
                            read = this.fInputStream.read();
                            if (read == i7) {
                                if (i4 > i) {
                                    this.fBuffer[0] = (byte) i11;
                                    this.fOffset = 1;
                                } else {
                                    expectedByte(2, 4);
                                }
                            }
                            i10++;
                        }
                        if ((read & 192) != 128 || ((read & 48) == 0 && (i11 & 7) == 0)) {
                            if (i4 > i) {
                                byte[] bArr6 = this.fBuffer;
                                bArr6[0] = (byte) i11;
                                bArr6[1] = (byte) read;
                                this.fOffset = 2;
                            } else {
                                invalidByte(2, 4, read);
                            }
                        }
                        int i15 = i14 + 1;
                        if (i15 < i8) {
                            read2 = this.fBuffer[i15] & 255;
                        } else {
                            read2 = this.fInputStream.read();
                            if (read2 == i7) {
                                if (i4 > i) {
                                    byte[] bArr7 = this.fBuffer;
                                    bArr7[0] = (byte) i11;
                                    bArr7[1] = (byte) read;
                                    this.fOffset = 2;
                                } else {
                                    expectedByte(3, 4);
                                }
                            }
                            i10++;
                        }
                        if ((read2 & 192) != 128) {
                            if (i4 > i) {
                                byte[] bArr8 = this.fBuffer;
                                bArr8[0] = (byte) i11;
                                bArr8[1] = (byte) read;
                                bArr8[2] = (byte) read2;
                                this.fOffset = 3;
                            } else {
                                invalidByte(3, 4, read2);
                            }
                        }
                        i9 = i15 + 1;
                        if (i9 < i8) {
                            read3 = this.fBuffer[i9] & 255;
                        } else {
                            read3 = this.fInputStream.read();
                            if (read3 == -1) {
                                if (i4 > i) {
                                    byte[] bArr9 = this.fBuffer;
                                    bArr9[0] = (byte) i11;
                                    bArr9[1] = (byte) read;
                                    bArr9[2] = (byte) read2;
                                    this.fOffset = 3;
                                } else {
                                    expectedByte(4, 4);
                                }
                            }
                            i10++;
                        }
                        if ((read3 & 192) != 128) {
                            if (i4 > i) {
                                byte[] bArr10 = this.fBuffer;
                                bArr10[0] = (byte) i11;
                                bArr10[1] = (byte) read;
                                bArr10[2] = (byte) read2;
                                bArr10[3] = (byte) read3;
                                this.fOffset = 4;
                            } else {
                                invalidByte(4, 4, read2);
                            }
                        }
                        int i16 = ((i11 << 2) & 28) | ((read >> 4) & 3);
                        if (i16 > 16) {
                            invalidSurrogate(i16);
                        }
                        int i17 = read2 & 63;
                        int i18 = ((read & 15) << 2) | (((i16 - 1) << 6) & HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT) | 55296 | (i17 >> 4);
                        int i19 = (read3 & 63) | ((i17 << 6) & HWPFWordToHtmlUtils.TABLE_CELL_DEFAULT_HEIGHT) | 56320;
                        int i20 = i4 + 1;
                        cArr[i4] = (char) i18;
                        i4 = i20 + 1;
                        cArr[i20] = (char) i19;
                        i10 -= 2;
                    } else if (i4 > i) {
                        bArr2[0] = (byte) i11;
                        this.fOffset = 1;
                    } else {
                        invalidByte(1, 1, i11);
                    }
                    return i4 - i;
                }
                i9++;
                if (i9 < i8) {
                    read6 = bArr2[i9] & 255;
                } else {
                    read6 = this.fInputStream.read();
                    if (read6 == i7) {
                        if (i4 > i) {
                            this.fBuffer[0] = (byte) i11;
                            this.fOffset = 1;
                            return i4 - i;
                        }
                        expectedByte(2, 2);
                    }
                    i10++;
                }
                if ((read6 & 192) != 128) {
                    if (i4 > i) {
                        byte[] bArr11 = this.fBuffer;
                        bArr11[0] = (byte) i11;
                        bArr11[1] = (byte) read6;
                        this.fOffset = 2;
                        return i4 - i;
                    }
                    invalidByte(2, 2, read6);
                }
                int i21 = (read6 & 63) | ((i11 << 6) & 1984);
                i5 = i4 + 1;
                cArr[i4] = (char) i21;
                i10 += i7;
                i4 = i5;
            }
            i9++;
            i7 = -1;
        }
        return i10;
    }
}
