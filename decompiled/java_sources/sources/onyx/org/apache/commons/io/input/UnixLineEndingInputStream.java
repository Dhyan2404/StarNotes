package onyx.org.apache.commons.io.input;

import com.sunia.HTREnginev2.xwn;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes11.dex */
public class UnixLineEndingInputStream extends InputStream {

    /* renamed from: e */
    public boolean f104427e;

    /* renamed from: f */
    public boolean f104428f;

    /* renamed from: g */
    public boolean f104429g;

    /* renamed from: h */
    public final InputStream f104430h;

    /* renamed from: i */
    public final boolean f104431i;

    public UnixLineEndingInputStream(InputStream inputStream, boolean z) {
        this.f104430h = inputStream;
        this.f104431i = z;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f104430h.close();
    }

    /* renamed from: f */
    public final int m65566f(boolean z) {
        if (z || !this.f104431i || this.f104429g) {
            return -1;
        }
        this.f104429g = true;
        return 10;
    }

    /* renamed from: j */
    public final int m65567j() throws IOException {
        int read = this.f104430h.read();
        boolean z = read == -1;
        this.f104427e = z;
        if (z) {
            return read;
        }
        this.f104428f = read == 13;
        this.f104429g = read == 10;
        return read;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        throw xwn.m58359a();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        boolean z = this.f104428f;
        if (this.f104427e) {
            return m65566f(z);
        }
        int m65567j = m65567j();
        if (this.f104427e) {
            return m65566f(z);
        }
        if (this.f104428f) {
            return 10;
        }
        return (z && this.f104429g) ? read() : m65567j;
    }
}
