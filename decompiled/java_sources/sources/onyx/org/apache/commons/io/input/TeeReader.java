package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.nio.CharBuffer;

/* loaded from: classes11.dex */
public class TeeReader extends ProxyReader {

    /* renamed from: e */
    public final Writer f104418e;

    /* renamed from: f */
    public final boolean f104419f;

    public TeeReader(Reader reader, Writer writer) {
        this(reader, writer, false);
    }

    @Override // onyx.org.apache.commons.io.input.ProxyReader, java.io.FilterReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } finally {
            if (this.f104419f) {
                this.f104418e.close();
            }
        }
    }

    @Override // onyx.org.apache.commons.io.input.ProxyReader, java.io.FilterReader, java.io.Reader
    public int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.f104418e.write(read);
        }
        return read;
    }

    public TeeReader(Reader reader, Writer writer, boolean z) {
        super(reader);
        this.f104418e = writer;
        this.f104419f = z;
    }

    @Override // onyx.org.apache.commons.io.input.ProxyReader, java.io.Reader
    public int read(char[] cArr) throws IOException {
        int read = super.read(cArr);
        if (read != -1) {
            this.f104418e.write(cArr, 0, read);
        }
        return read;
    }

    @Override // onyx.org.apache.commons.io.input.ProxyReader, java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        int read = super.read(cArr, i, i2);
        if (read != -1) {
            this.f104418e.write(cArr, i, read);
        }
        return read;
    }

    @Override // onyx.org.apache.commons.io.input.ProxyReader, java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) throws IOException {
        int position = charBuffer.position();
        int read = super.read(charBuffer);
        if (read != -1) {
            int position2 = charBuffer.position();
            int limit = charBuffer.limit();
            try {
                charBuffer.position(position).limit(position2);
                this.f104418e.append((CharSequence) charBuffer);
            } finally {
                charBuffer.position(position2).limit(limit);
            }
        }
        return read;
    }
}
