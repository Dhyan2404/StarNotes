package onyx.org.apache.commons.io.input;

import com.sunia.HTREnginev2.xwn;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class NullInputStream extends InputStream {
    public static final NullInputStream INSTANCE = new NullInputStream();

    /* renamed from: e */
    public final long f104326e;

    /* renamed from: f */
    public long f104327f;

    /* renamed from: g */
    public long f104328g;

    /* renamed from: h */
    public long f104329h;

    /* renamed from: i */
    public boolean f104330i;

    /* renamed from: j */
    public final boolean f104331j;

    /* renamed from: k */
    public final boolean f104332k;

    public NullInputStream() {
        this(0L, true, false);
    }

    @Override // java.io.InputStream
    public int available() {
        long j = this.f104326e - this.f104327f;
        if (j <= 0) {
            return 0;
        }
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f104330i = false;
        this.f104327f = 0L;
        this.f104328g = -1L;
    }

    /* renamed from: f */
    public final void m65446f(String str) throws EOFException {
        if (this.f104331j) {
            throw new EOFException(str);
        }
    }

    public long getPosition() {
        return this.f104327f;
    }

    public long getSize() {
        return this.f104326e;
    }

    /* renamed from: j */
    public final int m65447j() throws EOFException {
        this.f104330i = true;
        m65446f("handleEof()");
        return -1;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        if (!this.f104332k) {
            throw xwn.m58359a();
        }
        this.f104328g = this.f104327f;
        this.f104329h = i;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f104332k;
    }

    public int processByte() {
        return 0;
    }

    public void processBytes(byte[] bArr, int i, int i2) {
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f104330i) {
            m65446f("read()");
            return -1;
        }
        long j = this.f104327f;
        if (j == this.f104326e) {
            return m65447j();
        }
        this.f104327f = j + 1;
        return processByte();
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        if (!this.f104332k) {
            throw xwn.m58361c();
        }
        long j = this.f104328g;
        if (j < 0) {
            throw new IOException("No position has been marked");
        }
        if (this.f104327f > this.f104329h + j) {
            throw new IOException("Marked position [" + this.f104328g + "] is no longer valid - passed the read limit [" + this.f104329h + IteratorUtils.f104924b);
        }
        this.f104327f = j;
        this.f104330i = false;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (this.f104330i) {
            m65446f("skip(long)");
            return -1L;
        }
        long j2 = this.f104327f;
        long j3 = this.f104326e;
        if (j2 == j3) {
            return m65447j();
        }
        long j4 = j2 + j;
        this.f104327f = j4;
        if (j4 <= j3) {
            return j;
        }
        long j5 = j - (j4 - j3);
        this.f104327f = j3;
        return j5;
    }

    public NullInputStream(long j) {
        this(j, true, false);
    }

    public NullInputStream(long j, boolean z, boolean z2) {
        this.f104328g = -1L;
        this.f104326e = j;
        this.f104332k = z;
        this.f104331j = z2;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f104330i) {
            m65446f("read(byte[], int, int)");
            return -1;
        }
        long j = this.f104327f;
        long j2 = this.f104326e;
        if (j == j2) {
            return m65447j();
        }
        long j3 = j + i2;
        this.f104327f = j3;
        if (j3 > j2) {
            i2 -= (int) (j3 - j2);
            this.f104327f = j2;
        }
        processBytes(bArr, i, i2);
        return i2;
    }
}
