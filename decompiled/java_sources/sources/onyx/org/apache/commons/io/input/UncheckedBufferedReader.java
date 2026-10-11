package onyx.org.apache.commons.io.input;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.io.UncheckedIOException;
import java.nio.CharBuffer;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.function.IOConsumer;
import onyx.org.apache.commons.io.function.IOFunction;
import onyx.org.apache.commons.io.function.IORunnable;
import onyx.org.apache.commons.io.function.IOSupplier;
import onyx.org.apache.commons.io.function.IOTriFunction;
import onyx.org.apache.commons.io.function.Uncheck;
import onyx.org.apache.commons.io.input.UncheckedBufferedReader;

/* loaded from: classes11.dex */
public final class UncheckedBufferedReader extends BufferedReader {

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<UncheckedBufferedReader, Builder> {
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h */
        public /* synthetic */ UncheckedBufferedReader m65529h() throws IOException {
            return new UncheckedBufferedReader(getReader(), getBufferSize());
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public UncheckedBufferedReader get() {
            return (UncheckedBufferedReader) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.nqn
                @Override // onyx.org.apache.commons.io.function.IOSupplier
                public final Object get() {
                    UncheckedBufferedReader m65529h;
                    m65529h = UncheckedBufferedReader.Builder.this.m65529h();
                    return m65529h;
                }
            });
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i0 */
    public /* synthetic */ void m65516i0() throws IOException {
        super.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j0 */
    public /* synthetic */ void m65518j0(int i) throws IOException {
        super.mark(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k0 */
    public /* synthetic */ Integer m65519k0() throws IOException {
        return Integer.valueOf(super.read());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public /* synthetic */ Integer m65520l0(char[] cArr) throws IOException {
        return Integer.valueOf(super.read(cArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m0 */
    public /* synthetic */ Integer m65521m0(char[] cArr, int i, int i2) throws IOException {
        return Integer.valueOf(super.read(cArr, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n0 */
    public /* synthetic */ Integer m65522n0(CharBuffer charBuffer) throws IOException {
        return Integer.valueOf(super.read(charBuffer));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o0 */
    public /* synthetic */ String m65523o0() throws IOException {
        return super.readLine();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p0 */
    public /* synthetic */ Boolean m65524p0() throws IOException {
        return Boolean.valueOf(super.ready());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q0 */
    public /* synthetic */ void m65525q0() throws IOException {
        super.reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r0 */
    public /* synthetic */ Long m65526r0(long j) throws IOException {
        return Long.valueOf(super.skip(j));
    }

    @Override // java.io.BufferedReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws UncheckedIOException {
        Uncheck.run(new IORunnable() { // from class: com.sunia.HTREnginev2.gqn
            @Override // onyx.org.apache.commons.io.function.IORunnable
            public final void run() {
                UncheckedBufferedReader.this.m65516i0();
            }
        });
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public void mark(int i) throws UncheckedIOException {
        Uncheck.accept(new IOConsumer() { // from class: com.sunia.HTREnginev2.fqn
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                UncheckedBufferedReader.this.m65518j0(((Integer) obj).intValue());
            }
        }, Integer.valueOf(i));
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public int read() throws UncheckedIOException {
        return ((Integer) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.hqn
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                Integer m65519k0;
                m65519k0 = UncheckedBufferedReader.this.m65519k0();
                return m65519k0;
            }
        })).intValue();
    }

    @Override // java.io.BufferedReader
    public String readLine() throws UncheckedIOException {
        return (String) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.iqn
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                String m65523o0;
                m65523o0 = UncheckedBufferedReader.this.m65523o0();
                return m65523o0;
            }
        });
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public boolean ready() throws UncheckedIOException {
        return ((Boolean) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.kqn
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                Boolean m65524p0;
                m65524p0 = UncheckedBufferedReader.this.m65524p0();
                return m65524p0;
            }
        })).booleanValue();
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public void reset() throws UncheckedIOException {
        Uncheck.run(new IORunnable() { // from class: com.sunia.HTREnginev2.dqn
            @Override // onyx.org.apache.commons.io.function.IORunnable
            public final void run() {
                UncheckedBufferedReader.this.m65525q0();
            }
        });
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public long skip(long j) throws UncheckedIOException {
        return ((Long) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.jqn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Long m65526r0;
                m65526r0 = UncheckedBufferedReader.this.m65526r0(((Long) obj).longValue());
                return m65526r0;
            }
        }, Long.valueOf(j))).longValue();
    }

    public UncheckedBufferedReader(Reader reader, int i) {
        super(reader, i);
    }

    @Override // java.io.Reader
    public int read(char[] cArr) throws UncheckedIOException {
        return ((Integer) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.lqn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Integer m65520l0;
                m65520l0 = UncheckedBufferedReader.this.m65520l0((char[]) obj);
                return m65520l0;
            }
        }, cArr)).intValue();
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) throws UncheckedIOException {
        return ((Integer) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.eqn
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                Integer m65521m0;
                m65521m0 = UncheckedBufferedReader.this.m65521m0((char[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
                return m65521m0;
            }
        }, cArr, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) throws UncheckedIOException {
        return ((Integer) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.mqn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Integer m65522n0;
                m65522n0 = UncheckedBufferedReader.this.m65522n0((CharBuffer) obj);
                return m65522n0;
            }
        }, charBuffer)).intValue();
    }
}
