package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.util.function.Supplier;
import onyx.org.apache.commons.io.function.Erase;
import onyx.org.apache.commons.io.input.BrokenInputStream;

/* loaded from: classes11.dex */
public class BrokenInputStream extends InputStream {
    public static final BrokenInputStream INSTANCE = new BrokenInputStream();

    /* renamed from: e */
    public final Supplier<Throwable> f104289e;

    public BrokenInputStream() {
        this((Supplier<Throwable>) new Supplier() { // from class: com.sunia.HTREnginev2.su
            @Override // java.util.function.Supplier
            public final Object get() {
                Throwable m65407H;
                m65407H = BrokenInputStream.m65407H();
                return m65407H;
            }
        });
    }

    /* renamed from: H */
    public static /* synthetic */ Throwable m65407H() {
        return new IOException("Broken input stream");
    }

    /* renamed from: I */
    public static /* synthetic */ Throwable m65408I(IOException iOException) {
        return iOException;
    }

    /* renamed from: M */
    public static /* synthetic */ Throwable m65409M(Throwable th) {
        return th;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        throw m65413e0();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw m65413e0();
    }

    /* renamed from: e0 */
    public final RuntimeException m65413e0() {
        return Erase.rethrow(this.f104289e.get());
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        throw m65413e0();
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        throw m65413e0();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        throw m65413e0();
    }

    @Deprecated
    public BrokenInputStream(final IOException iOException) {
        this((Supplier<Throwable>) new Supplier() { // from class: com.sunia.HTREnginev2.tu
            @Override // java.util.function.Supplier
            public final Object get() {
                Throwable m65408I;
                m65408I = BrokenInputStream.m65408I(iOException);
                return m65408I;
            }
        });
    }

    public BrokenInputStream(Supplier<Throwable> supplier) {
        this.f104289e = supplier;
    }

    public BrokenInputStream(final Throwable th) {
        this((Supplier<Throwable>) new Supplier() { // from class: com.sunia.HTREnginev2.uu
            @Override // java.util.function.Supplier
            public final Object get() {
                Throwable m65409M;
                m65409M = BrokenInputStream.m65409M(th);
                return m65409M;
            }
        });
    }
}
