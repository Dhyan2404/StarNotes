package com.fasterxml.jackson.core.io;

import com.google.android.material.motion.MotionUtils;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class UTF32Reader extends Reader {
    protected static final int LAST_VALID_UNICODE_CHAR = 1114111;

    /* renamed from: NC */
    protected static final char f21268NC = 0;
    protected final boolean _bigEndian;
    protected byte[] _buffer;
    protected int _byteCount;
    protected int _charCount;
    protected final IOContext _context;
    protected InputStream _in;
    protected int _length;
    protected final boolean _managedBuffers;
    protected int _ptr;
    protected char _surrogate = 0;
    protected char[] _tmpBuf;

    public UTF32Reader(IOContext iOContext, InputStream inputStream, byte[] bArr, int i, int i2, boolean z) {
        this._context = iOContext;
        this._in = inputStream;
        this._buffer = bArr;
        this._ptr = i;
        this._length = i2;
        this._bigEndian = z;
        this._managedBuffers = inputStream != null;
    }

    /* renamed from: H */
    public final void m17144H(int i, int i2, String str) throws IOException {
        int i3 = (this._byteCount + this._ptr) - 1;
        throw new CharConversionException("Invalid UTF-32 character 0x" + Integer.toHexString(i) + str + " at char #" + (this._charCount + i2) + ", byte #" + i3 + MotionUtils.f31762d);
    }

    /* renamed from: I */
    public final void m17145I() throws IOException {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }

    /* renamed from: M */
    public final void m17146M(int i, int i2) throws IOException {
        int i3 = this._byteCount + i;
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i + ", needed " + i2 + ", at char #" + this._charCount + ", byte #" + i3 + MotionUtils.f31762d);
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this._in;
        if (inputStream != null) {
            this._in = null;
            m17147f();
            inputStream.close();
        }
    }

    /* renamed from: f */
    public final void m17147f() {
        byte[] bArr = this._buffer;
        if (bArr != null) {
            this._buffer = null;
            this._context.releaseReadIOBuffer(bArr);
        }
    }

    /* renamed from: j */
    public final boolean m17148j(int i) throws IOException {
        int read;
        this._byteCount += this._length - i;
        if (i > 0) {
            int i2 = this._ptr;
            if (i2 > 0) {
                byte[] bArr = this._buffer;
                System.arraycopy(bArr, i2, bArr, 0, i);
                this._ptr = 0;
            }
            this._length = i;
        } else {
            this._ptr = 0;
            InputStream inputStream = this._in;
            int read2 = inputStream == null ? -1 : inputStream.read(this._buffer);
            if (read2 < 1) {
                this._length = 0;
                if (read2 < 0) {
                    if (this._managedBuffers) {
                        m17147f();
                    }
                    return false;
                }
                m17145I();
            }
            this._length = read2;
        }
        while (true) {
            int i3 = this._length;
            if (i3 >= 4) {
                return true;
            }
            InputStream inputStream2 = this._in;
            if (inputStream2 == null) {
                read = -1;
            } else {
                byte[] bArr2 = this._buffer;
                read = inputStream2.read(bArr2, i3, bArr2.length - i3);
            }
            if (read < 1) {
                if (read < 0) {
                    if (this._managedBuffers) {
                        m17147f();
                    }
                    m17146M(this._length, 4);
                }
                m17145I();
            }
            this._length += read;
        }
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this._tmpBuf == null) {
            this._tmpBuf = new char[1];
        }
        if (read(this._tmpBuf, 0, 1) < 1) {
            return -1;
        }
        return this._tmpBuf[0];
    }

    /* renamed from: w */
    public final void m17149w(char[] cArr, int i, int i2) throws IOException {
        throw new ArrayIndexOutOfBoundsException("read(buf," + i + "," + i2 + "), cbuf[" + cArr.length + IteratorUtils.f104924b);
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        int i6;
        if (this._buffer == null) {
            return -1;
        }
        if (i2 < 1) {
            return i2;
        }
        if (i < 0 || i + i2 > cArr.length) {
            m17149w(cArr, i, i2);
        }
        int i7 = i2 + i;
        char c = this._surrogate;
        if (c != 0) {
            i3 = i + 1;
            cArr[i] = c;
            this._surrogate = (char) 0;
        } else {
            int i8 = this._length - this._ptr;
            if (i8 < 4 && !m17148j(i8)) {
                return -1;
            }
            i3 = i;
        }
        while (i3 < i7) {
            int i9 = this._ptr;
            if (this._bigEndian) {
                byte[] bArr = this._buffer;
                i4 = (bArr[i9] << 24) | ((bArr[i9 + 1] & 255) << 16) | ((bArr[i9 + 2] & 255) << 8);
                i5 = bArr[i9 + 3] & 255;
            } else {
                byte[] bArr2 = this._buffer;
                i4 = (bArr2[i9] & 255) | ((bArr2[i9 + 1] & 255) << 8) | ((bArr2[i9 + 2] & 255) << 16);
                i5 = bArr2[i9 + 3] << 24;
            }
            int i10 = i5 | i4;
            this._ptr = i9 + 4;
            if (i10 > 65535) {
                if (i10 > 1114111) {
                    m17144H(i10, i3 - i, "(above " + Integer.toHexString(1114111) + ") ");
                }
                int i11 = i10 - 65536;
                i6 = i3 + 1;
                cArr[i3] = (char) ((i11 >> 10) + 55296);
                i10 = 56320 | (i11 & 1023);
                if (i6 >= i7) {
                    this._surrogate = (char) i10;
                    i3 = i6;
                    break;
                }
                i3 = i6;
            }
            i6 = i3 + 1;
            cArr[i3] = (char) i10;
            if (this._ptr >= this._length) {
                i3 = i6;
                break;
            }
            i3 = i6;
        }
        int i12 = i3 - i;
        this._charCount += i12;
        return i12;
    }
}
