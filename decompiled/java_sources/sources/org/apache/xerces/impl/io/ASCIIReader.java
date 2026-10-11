package org.apache.xerces.impl.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Locale;
import org.apache.xerces.util.MessageFormatter;

/* loaded from: classes13.dex */
public final class ASCIIReader extends Reader {
    public static final int DEFAULT_BUFFER_SIZE = 2048;

    /* renamed from: e */
    public final MessageFormatter f112426e;

    /* renamed from: f */
    public final Locale f112427f;
    protected final byte[] fBuffer;
    protected final InputStream fInputStream;

    public ASCIIReader(InputStream inputStream, int i, MessageFormatter messageFormatter, Locale locale) {
        this(inputStream, new byte[i], messageFormatter, locale);
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.fInputStream.close();
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        this.fInputStream.mark(i);
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return this.fInputStream.markSupported();
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        int read = this.fInputStream.read();
        if (read < 128) {
            return read;
        }
        throw new MalformedByteSequenceException(this.f112426e, this.f112427f, "http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidASCII", new Object[]{Integer.toString(read)});
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        return false;
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        this.fInputStream.reset();
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        return this.fInputStream.skip(j);
    }

    public ASCIIReader(InputStream inputStream, MessageFormatter messageFormatter, Locale locale) {
        this(inputStream, 2048, messageFormatter, locale);
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        byte[] bArr = this.fBuffer;
        if (i2 > bArr.length) {
            i2 = bArr.length;
        }
        int read = this.fInputStream.read(bArr, 0, i2);
        for (int i3 = 0; i3 < read; i3++) {
            byte b = this.fBuffer[i3];
            if (b < 0) {
                throw new MalformedByteSequenceException(this.f112426e, this.f112427f, "http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidASCII", new Object[]{Integer.toString(b & 255)});
            }
            cArr[i + i3] = (char) b;
        }
        return read;
    }

    public ASCIIReader(InputStream inputStream, byte[] bArr, MessageFormatter messageFormatter, Locale locale) {
        this.fInputStream = inputStream;
        this.fBuffer = bArr;
        this.f112426e = messageFormatter;
        this.f112427f = locale;
    }
}
