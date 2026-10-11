package onyx.org.apache.commons.io.input;

import java.io.FilterReader;
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
import onyx.org.apache.commons.io.input.UncheckedFilterReader;

/* loaded from: classes11.dex */
public final class UncheckedFilterReader extends FilterReader {

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<UncheckedFilterReader, Builder> {
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h */
        public /* synthetic */ UncheckedFilterReader m65565h() throws IOException {
            return new UncheckedFilterReader(getReader());
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public UncheckedFilterReader get() {
            return (UncheckedFilterReader) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.krn
                @Override // onyx.org.apache.commons.io.function.IOSupplier
                public final Object get() {
                    UncheckedFilterReader m65565h;
                    m65565h = UncheckedFilterReader.Builder.this.m65565h();
                    return m65565h;
                }
            });
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h0 */
    public /* synthetic */ void m65553h0() throws IOException {
        super.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i0 */
    public /* synthetic */ void m65554i0(int i) throws IOException {
        super.mark(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j0 */
    public /* synthetic */ Integer m65556j0() throws IOException {
        return Integer.valueOf(super.read());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k0 */
    public /* synthetic */ Integer m65557k0(char[] cArr) throws IOException {
        return Integer.valueOf(super.read(cArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public /* synthetic */ Integer m65558l0(char[] cArr, int i, int i2) throws IOException {
        return Integer.valueOf(super.read(cArr, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m0 */
    public /* synthetic */ Integer m65559m0(CharBuffer charBuffer) throws IOException {
        return Integer.valueOf(super.read(charBuffer));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n0 */
    public /* synthetic */ Boolean m65560n0() throws IOException {
        return Boolean.valueOf(super.ready());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o0 */
    public /* synthetic */ void m65561o0() throws IOException {
        super.reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p0 */
    public /* synthetic */ Long m65562p0(long j) throws IOException {
        return Long.valueOf(super.skip(j));
    }

    @Override // java.io.FilterReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws UncheckedIOException {
        Uncheck.run(new IORunnable() { // from class: com.sunia.HTREnginev2.drn
            @Override // onyx.org.apache.commons.io.function.IORunnable
            public final void run() {
                UncheckedFilterReader.this.m65553h0();
            }
        });
    }

    @Override // java.io.FilterReader, java.io.Reader
    public void mark(int i) throws UncheckedIOException {
        Uncheck.accept(new IOConsumer() { // from class: com.sunia.HTREnginev2.irn
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                UncheckedFilterReader.this.m65554i0(((Integer) obj).intValue());
            }
        }, Integer.valueOf(i));
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read() throws UncheckedIOException {
        return ((Integer) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.brn
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                Integer m65556j0;
                m65556j0 = UncheckedFilterReader.this.m65556j0();
                return m65556j0;
            }
        })).intValue();
    }

    @Override // java.io.FilterReader, java.io.Reader
    public boolean ready() throws UncheckedIOException {
        return ((Boolean) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.grn
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                Boolean m65560n0;
                m65560n0 = UncheckedFilterReader.this.m65560n0();
                return m65560n0;
            }
        })).booleanValue();
    }

    @Override // java.io.FilterReader, java.io.Reader
    public void reset() throws UncheckedIOException {
        Uncheck.run(new IORunnable() { // from class: com.sunia.HTREnginev2.crn
            @Override // onyx.org.apache.commons.io.function.IORunnable
            public final void run() {
                UncheckedFilterReader.this.m65561o0();
            }
        });
    }

    @Override // java.io.FilterReader, java.io.Reader
    public long skip(long j) throws UncheckedIOException {
        return ((Long) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.frn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Long m65562p0;
                m65562p0 = UncheckedFilterReader.this.m65562p0(((Long) obj).longValue());
                return m65562p0;
            }
        }, Long.valueOf(j))).longValue();
    }

    public UncheckedFilterReader(Reader reader) {
        super(reader);
    }

    @Override // java.io.Reader
    public int read(char[] cArr) throws UncheckedIOException {
        return ((Integer) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.jrn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Integer m65557k0;
                m65557k0 = UncheckedFilterReader.this.m65557k0((char[]) obj);
                return m65557k0;
            }
        }, cArr)).intValue();
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) throws UncheckedIOException {
        return ((Integer) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.ern
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                Integer m65558l0;
                m65558l0 = UncheckedFilterReader.this.m65558l0((char[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
                return m65558l0;
            }
        }, cArr, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) throws UncheckedIOException {
        return ((Integer) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.hrn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Integer m65559m0;
                m65559m0 = UncheckedFilterReader.this.m65559m0((CharBuffer) obj);
                return m65559m0;
            }
        }, charBuffer)).intValue();
    }
}
