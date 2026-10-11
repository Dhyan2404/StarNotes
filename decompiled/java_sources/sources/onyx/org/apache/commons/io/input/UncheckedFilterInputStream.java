package onyx.org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.function.IOFunction;
import onyx.org.apache.commons.io.function.IORunnable;
import onyx.org.apache.commons.io.function.IOSupplier;
import onyx.org.apache.commons.io.function.IOTriFunction;
import onyx.org.apache.commons.io.function.Uncheck;
import onyx.org.apache.commons.io.input.UncheckedFilterInputStream;

/* loaded from: classes11.dex */
public final class UncheckedFilterInputStream extends FilterInputStream {

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<UncheckedFilterInputStream, Builder> {
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h */
        public /* synthetic */ UncheckedFilterInputStream m65545h() throws IOException {
            return new UncheckedFilterInputStream(getInputStream());
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public UncheckedFilterInputStream get() {
            return (UncheckedFilterInputStream) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.vqn
                @Override // onyx.org.apache.commons.io.function.IOSupplier
                public final Object get() {
                    UncheckedFilterInputStream m65545h;
                    m65545h = UncheckedFilterInputStream.Builder.this.m65545h();
                    return m65545h;
                }
            });
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public /* synthetic */ Integer m65535f0() throws IOException {
        return Integer.valueOf(super.available());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public /* synthetic */ void m65536g0() throws IOException {
        super.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h0 */
    public /* synthetic */ Integer m65537h0() throws IOException {
        return Integer.valueOf(super.read());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i0 */
    public /* synthetic */ Integer m65538i0(byte[] bArr) throws IOException {
        return Integer.valueOf(super.read(bArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j0 */
    public /* synthetic */ Integer m65540j0(byte[] bArr, int i, int i2) throws IOException {
        return Integer.valueOf(super.read(bArr, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k0 */
    public /* synthetic */ void m65541k0() throws IOException {
        super.reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public /* synthetic */ Long m65542l0(long j) throws IOException {
        return Long.valueOf(super.skip(j));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws UncheckedIOException {
        return ((Integer) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.sqn
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                Integer m65535f0;
                m65535f0 = UncheckedFilterInputStream.this.m65535f0();
                return m65535f0;
            }
        })).intValue();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws UncheckedIOException {
        Uncheck.run(new IORunnable() { // from class: com.sunia.HTREnginev2.tqn
            @Override // onyx.org.apache.commons.io.function.IORunnable
            public final void run() {
                UncheckedFilterInputStream.this.m65536g0();
            }
        });
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws UncheckedIOException {
        return ((Integer) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.uqn
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                Integer m65537h0;
                m65537h0 = UncheckedFilterInputStream.this.m65537h0();
                return m65537h0;
            }
        })).intValue();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws UncheckedIOException {
        Uncheck.run(new IORunnable() { // from class: com.sunia.HTREnginev2.oqn
            @Override // onyx.org.apache.commons.io.function.IORunnable
            public final void run() {
                UncheckedFilterInputStream.this.m65541k0();
            }
        });
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws UncheckedIOException {
        return ((Long) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.qqn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Long m65542l0;
                m65542l0 = UncheckedFilterInputStream.this.m65542l0(((Long) obj).longValue());
                return m65542l0;
            }
        }, Long.valueOf(j))).longValue();
    }

    public UncheckedFilterInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws UncheckedIOException {
        return ((Integer) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.pqn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Integer m65538i0;
                m65538i0 = UncheckedFilterInputStream.this.m65538i0((byte[]) obj);
                return m65538i0;
            }
        }, bArr)).intValue();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws UncheckedIOException {
        return ((Integer) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.rqn
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                Integer m65540j0;
                m65540j0 = UncheckedFilterInputStream.this.m65540j0((byte[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
                return m65540j0;
            }
        }, bArr, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
    }
}
