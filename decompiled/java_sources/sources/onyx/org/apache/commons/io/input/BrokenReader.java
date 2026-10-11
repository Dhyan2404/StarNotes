package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.Reader;
import java.util.function.Supplier;
import onyx.org.apache.commons.io.function.Erase;
import onyx.org.apache.commons.io.input.BrokenReader;

/* loaded from: classes11.dex */
public class BrokenReader extends Reader {
    public static final BrokenReader INSTANCE = new BrokenReader();

    /* renamed from: e */
    public final Supplier<Throwable> f104290e;

    public BrokenReader() {
        this((Supplier<Throwable>) new Supplier() { // from class: com.sunia.HTREnginev2.av
            @Override // java.util.function.Supplier
            public final Object get() {
                Throwable m65414H;
                m65414H = BrokenReader.m65414H();
                return m65414H;
            }
        });
    }

    /* renamed from: H */
    public static /* synthetic */ Throwable m65414H() {
        return new IOException("Broken reader");
    }

    /* renamed from: I */
    public static /* synthetic */ Throwable m65415I(IOException iOException) {
        return iOException;
    }

    /* renamed from: M */
    public static /* synthetic */ Throwable m65416M(Throwable th) {
        return th;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw m65420e0();
    }

    /* renamed from: e0 */
    public final RuntimeException m65420e0() {
        return Erase.rethrow(this.f104290e.get());
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        throw m65420e0();
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        throw m65420e0();
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        throw m65420e0();
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        throw m65420e0();
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        throw m65420e0();
    }

    @Deprecated
    public BrokenReader(final IOException iOException) {
        this((Supplier<Throwable>) new Supplier() { // from class: com.sunia.HTREnginev2.zu
            @Override // java.util.function.Supplier
            public final Object get() {
                Throwable m65415I;
                m65415I = BrokenReader.m65415I(iOException);
                return m65415I;
            }
        });
    }

    public BrokenReader(Supplier<Throwable> supplier) {
        this.f104290e = supplier;
    }

    public BrokenReader(final Throwable th) {
        this((Supplier<Throwable>) new Supplier() { // from class: com.sunia.HTREnginev2.yu
            @Override // java.util.function.Supplier
            public final Object get() {
                Throwable m65416M;
                m65416M = BrokenReader.m65416M(th);
                return m65416M;
            }
        });
    }
}
