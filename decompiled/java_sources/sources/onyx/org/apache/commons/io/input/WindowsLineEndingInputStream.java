package onyx.org.apache.commons.io.input;

import com.sunia.HTREnginev2.xwn;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes11.dex */
public class WindowsLineEndingInputStream extends InputStream {

    /* renamed from: e */
    public boolean f104438e;

    /* renamed from: f */
    public boolean f104439f;

    /* renamed from: g */
    public boolean f104440g;

    /* renamed from: h */
    public final InputStream f104441h;

    /* renamed from: i */
    public boolean f104442i;

    /* renamed from: j */
    public final boolean f104443j;

    public WindowsLineEndingInputStream(InputStream inputStream, boolean z) {
        this.f104441h = inputStream;
        this.f104443j = z;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f104441h.close();
    }

    /* renamed from: f */
    public final int m65572f() {
        if (!this.f104443j) {
            return -1;
        }
        boolean z = this.f104440g;
        if (!z && !this.f104439f) {
            this.f104439f = true;
            return 13;
        }
        if (z) {
            return -1;
        }
        this.f104439f = false;
        this.f104440g = true;
        return 10;
    }

    /* renamed from: j */
    public final int m65573j() throws IOException {
        int read = this.f104441h.read();
        boolean z = read == -1;
        this.f104438e = z;
        if (z) {
            return read;
        }
        this.f104439f = read == 13;
        this.f104440g = read == 10;
        return read;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        throw xwn.m58359a();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f104438e) {
            return m65572f();
        }
        if (this.f104442i) {
            this.f104442i = false;
            return 10;
        }
        boolean z = this.f104439f;
        int m65573j = m65573j();
        if (this.f104438e) {
            return m65572f();
        }
        if (m65573j != 10 || z) {
            return m65573j;
        }
        this.f104442i = true;
        return 13;
    }
}
