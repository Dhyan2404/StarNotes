package onyx.org.apache.commons.io.input;

import com.sunia.HTREnginev2.xwn;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class NullReader extends Reader {
    public static final NullReader INSTANCE = new NullReader();

    /* renamed from: e */
    public final long f104333e;

    /* renamed from: f */
    public long f104334f;

    /* renamed from: g */
    public long f104335g;

    /* renamed from: h */
    public long f104336h;

    /* renamed from: i */
    public boolean f104337i;

    /* renamed from: j */
    public final boolean f104338j;

    /* renamed from: k */
    public final boolean f104339k;

    public NullReader() {
        this(0L, true, false);
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f104337i = false;
        this.f104334f = 0L;
        this.f104335g = -1L;
    }

    /* renamed from: f */
    public final int m65448f() throws EOFException {
        this.f104337i = true;
        if (this.f104338j) {
            throw new EOFException();
        }
        return -1;
    }

    public long getPosition() {
        return this.f104334f;
    }

    public long getSize() {
        return this.f104333e;
    }

    @Override // java.io.Reader
    public synchronized void mark(int i) {
        if (!this.f104339k) {
            throw xwn.m58359a();
        }
        this.f104335g = this.f104334f;
        this.f104336h = i;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return this.f104339k;
    }

    public int processChar() {
        return 0;
    }

    public void processChars(char[] cArr, int i, int i2) {
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (!this.f104337i) {
            long j = this.f104334f;
            if (j == this.f104333e) {
                return m65448f();
            }
            this.f104334f = j + 1;
            return processChar();
        }
        throw new IOException("Read after end of file");
    }

    @Override // java.io.Reader
    public synchronized void reset() throws IOException {
        if (!this.f104339k) {
            throw xwn.m58361c();
        }
        long j = this.f104335g;
        if (j < 0) {
            throw new IOException("No position has been marked");
        }
        if (this.f104334f > this.f104336h + j) {
            throw new IOException("Marked position [" + this.f104335g + "] is no longer valid - passed the read limit [" + this.f104336h + IteratorUtils.f104924b);
        }
        this.f104334f = j;
        this.f104337i = false;
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        if (this.f104337i) {
            throw new IOException("Skip after end of file");
        }
        long j2 = this.f104334f;
        long j3 = this.f104333e;
        if (j2 == j3) {
            return m65448f();
        }
        long j4 = j2 + j;
        this.f104334f = j4;
        if (j4 <= j3) {
            return j;
        }
        long j5 = j - (j4 - j3);
        this.f104334f = j3;
        return j5;
    }

    public NullReader(long j) {
        this(j, true, false);
    }

    public NullReader(long j, boolean z, boolean z2) {
        this.f104335g = -1L;
        this.f104333e = j;
        this.f104339k = z;
        this.f104338j = z2;
    }

    @Override // java.io.Reader
    public int read(char[] cArr) throws IOException {
        return read(cArr, 0, cArr.length);
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        if (!this.f104337i) {
            long j = this.f104334f;
            long j2 = this.f104333e;
            if (j == j2) {
                return m65448f();
            }
            long j3 = j + i2;
            this.f104334f = j3;
            if (j3 > j2) {
                i2 -= (int) (j3 - j2);
                this.f104334f = j2;
            }
            processChars(cArr, i, i2);
            return i2;
        }
        throw new IOException("Read after end of file");
    }
}
