package org.apache.xerces.impl.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Locale;
import org.apache.xerces.impl.msg.XMLMessageFormatter;
import org.apache.xerces.util.MessageFormatter;

/* loaded from: classes13.dex */
public final class UTF16Reader extends Reader {
    public static final int DEFAULT_BUFFER_SIZE = 4096;

    /* renamed from: e */
    public final MessageFormatter f112428e;

    /* renamed from: f */
    public final Locale f112429f;
    protected final byte[] fBuffer;
    protected final InputStream fInputStream;
    protected final boolean fIsBigEndian;

    public UTF16Reader(InputStream inputStream, int i, boolean z, MessageFormatter messageFormatter, Locale locale) {
        this(inputStream, new byte[i], z, messageFormatter, locale);
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.fInputStream.close();
    }

    /* renamed from: f */
    public final void m69978f() throws MalformedByteSequenceException {
        throw new MalformedByteSequenceException(this.f112428e, this.f112429f, "http://www.w3.org/TR/1998/REC-xml-19980210", "ExpectedByte", new Object[]{"2", "2"});
    }

    /* renamed from: j */
    public final void m69979j(char[] cArr, int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            byte[] bArr = this.fBuffer;
            int i5 = i4 + 1;
            cArr[i] = (char) (((bArr[i4] & 255) << 8) | (bArr[i5] & 255));
            i3++;
            i++;
            i4 = i5 + 1;
        }
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        throw new IOException(this.f112428e.formatMessage(this.f112429f, "OperationNotSupported", new Object[]{"mark()", "UTF-16"}));
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        int read = this.fInputStream.read();
        if (read == -1) {
            return -1;
        }
        int read2 = this.fInputStream.read();
        if (read2 == -1) {
            m69978f();
        }
        return this.fIsBigEndian ? (read << 8) | read2 : (read2 << 8) | read;
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        return false;
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        long skip = this.fInputStream.skip(j << 1);
        if ((skip & 1) != 0) {
            if (this.fInputStream.read() == -1) {
                m69978f();
            }
            skip++;
        }
        return skip >> 1;
    }

    /* renamed from: w */
    public final void m69980w(char[] cArr, int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            byte[] bArr = this.fBuffer;
            int i5 = i4 + 1;
            cArr[i] = (char) ((bArr[i4] & 255) | ((bArr[i5] & 255) << 8));
            i3++;
            i++;
            i4 = i5 + 1;
        }
    }

    public UTF16Reader(InputStream inputStream, boolean z) {
        this(inputStream, 4096, z, new XMLMessageFormatter(), Locale.getDefault());
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        int i3 = i2 << 1;
        byte[] bArr = this.fBuffer;
        if (i3 > bArr.length) {
            i3 = bArr.length;
        }
        int read = this.fInputStream.read(bArr, 0, i3);
        if (read == -1) {
            return -1;
        }
        if ((read & 1) != 0) {
            int read2 = this.fInputStream.read();
            if (read2 == -1) {
                m69978f();
            }
            this.fBuffer[read] = (byte) read2;
            read++;
        }
        int i4 = read >> 1;
        if (this.fIsBigEndian) {
            m69979j(cArr, i, i4);
        } else {
            m69980w(cArr, i, i4);
        }
        return i4;
    }

    public UTF16Reader(InputStream inputStream, boolean z, MessageFormatter messageFormatter, Locale locale) {
        this(inputStream, 4096, z, messageFormatter, locale);
    }

    public UTF16Reader(InputStream inputStream, byte[] bArr, boolean z, MessageFormatter messageFormatter, Locale locale) {
        this.fInputStream = inputStream;
        this.fBuffer = bArr;
        this.fIsBigEndian = z;
        this.f112428e = messageFormatter;
        this.f112429f = locale;
    }
}
