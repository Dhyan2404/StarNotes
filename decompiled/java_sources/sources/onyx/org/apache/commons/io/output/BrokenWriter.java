package onyx.org.apache.commons.io.output;

import java.io.IOException;
import java.io.Writer;
import java.util.function.Supplier;
import onyx.org.apache.commons.io.function.Erase;
import onyx.org.apache.commons.io.output.BrokenWriter;

/* loaded from: classes11.dex */
public class BrokenWriter extends Writer {
    public static final BrokenWriter INSTANCE = new BrokenWriter();

    /* renamed from: e */
    public final Supplier<Throwable> f104488e;

    public BrokenWriter() {
        this((Supplier<Throwable>) new Supplier() { // from class: com.sunia.HTREnginev2.dv
            @Override // java.util.function.Supplier
            public final Object get() {
                Throwable m65603H;
                m65603H = BrokenWriter.m65603H();
                return m65603H;
            }
        });
    }

    /* renamed from: H */
    public static /* synthetic */ Throwable m65603H() {
        return new IOException("Broken writer");
    }

    /* renamed from: I */
    public static /* synthetic */ Throwable m65604I(IOException iOException) {
        return iOException;
    }

    /* renamed from: M */
    public static /* synthetic */ Throwable m65605M(Throwable th) {
        return th;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw m65609e0();
    }

    /* renamed from: e0 */
    public final RuntimeException m65609e0() {
        return Erase.rethrow(this.f104488e.get());
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        throw m65609e0();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        throw m65609e0();
    }

    @Deprecated
    public BrokenWriter(final IOException iOException) {
        this((Supplier<Throwable>) new Supplier() { // from class: com.sunia.HTREnginev2.cv
            @Override // java.util.function.Supplier
            public final Object get() {
                Throwable m65604I;
                m65604I = BrokenWriter.m65604I(iOException);
                return m65604I;
            }
        });
    }

    public BrokenWriter(Supplier<Throwable> supplier) {
        this.f104488e = supplier;
    }

    public BrokenWriter(final Throwable th) {
        this((Supplier<Throwable>) new Supplier() { // from class: com.sunia.HTREnginev2.bv
            @Override // java.util.function.Supplier
            public final Object get() {
                Throwable m65605M;
                m65605M = BrokenWriter.m65605M(th);
                return m65605M;
            }
        });
    }
}
