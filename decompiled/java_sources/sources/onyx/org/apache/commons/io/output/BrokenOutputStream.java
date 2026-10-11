package onyx.org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.util.function.Supplier;
import onyx.org.apache.commons.io.function.Erase;
import onyx.org.apache.commons.io.output.BrokenOutputStream;

/* loaded from: classes11.dex */
public class BrokenOutputStream extends OutputStream {
    public static final BrokenOutputStream INSTANCE = new BrokenOutputStream();

    /* renamed from: e */
    public final Supplier<Throwable> f104487e;

    public BrokenOutputStream() {
        this((Supplier<Throwable>) new Supplier() { // from class: com.sunia.HTREnginev2.vu
            @Override // java.util.function.Supplier
            public final Object get() {
                Throwable m65596H;
                m65596H = BrokenOutputStream.m65596H();
                return m65596H;
            }
        });
    }

    /* renamed from: H */
    public static /* synthetic */ Throwable m65596H() {
        return new IOException("Broken output stream");
    }

    /* renamed from: I */
    public static /* synthetic */ Throwable m65597I(IOException iOException) {
        return iOException;
    }

    /* renamed from: M */
    public static /* synthetic */ Throwable m65598M(Throwable th) {
        return th;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw m65602e0();
    }

    /* renamed from: e0 */
    public final RuntimeException m65602e0() {
        return Erase.rethrow(this.f104487e.get());
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        throw m65602e0();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        throw m65602e0();
    }

    @Deprecated
    public BrokenOutputStream(final IOException iOException) {
        this((Supplier<Throwable>) new Supplier() { // from class: com.sunia.HTREnginev2.xu
            @Override // java.util.function.Supplier
            public final Object get() {
                Throwable m65597I;
                m65597I = BrokenOutputStream.m65597I(iOException);
                return m65597I;
            }
        });
    }

    public BrokenOutputStream(Supplier<Throwable> supplier) {
        this.f104487e = supplier;
    }

    public BrokenOutputStream(final Throwable th) {
        this((Supplier<Throwable>) new Supplier() { // from class: com.sunia.HTREnginev2.wu
            @Override // java.util.function.Supplier
            public final Object get() {
                Throwable m65598M;
                m65598M = BrokenOutputStream.m65598M(th);
                return m65598M;
            }
        });
    }
}
