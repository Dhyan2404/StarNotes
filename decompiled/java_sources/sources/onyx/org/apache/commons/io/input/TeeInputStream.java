package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes11.dex */
public class TeeInputStream extends ProxyInputStream {

    /* renamed from: e */
    public final OutputStream f104416e;

    /* renamed from: f */
    public final boolean f104417f;

    public TeeInputStream(InputStream inputStream, OutputStream outputStream) {
        this(inputStream, outputStream, false);
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } finally {
            if (this.f104417f) {
                this.f104416e.close();
            }
        }
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.f104416e.write(read);
        }
        return read;
    }

    public TeeInputStream(InputStream inputStream, OutputStream outputStream, boolean z) {
        super(inputStream);
        this.f104416e = outputStream;
        this.f104417f = z;
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int read = super.read(bArr);
        if (read != -1) {
            this.f104416e.write(bArr, 0, read);
        }
        return read;
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.f104416e.write(bArr, i, read);
        }
        return read;
    }
}
