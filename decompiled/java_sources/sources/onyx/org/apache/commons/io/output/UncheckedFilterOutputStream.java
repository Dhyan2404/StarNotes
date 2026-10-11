package onyx.org.apache.commons.io.output;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UncheckedIOException;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.function.IOConsumer;
import onyx.org.apache.commons.io.function.IORunnable;
import onyx.org.apache.commons.io.function.IOTriConsumer;
import onyx.org.apache.commons.io.function.Uncheck;
import onyx.org.apache.commons.io.output.UncheckedFilterOutputStream;

/* loaded from: classes11.dex */
public final class UncheckedFilterOutputStream extends FilterOutputStream {

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<UncheckedFilterOutputStream, Builder> {
        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public UncheckedFilterOutputStream get() throws IOException {
            return new UncheckedFilterOutputStream(getOutputStream());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public /* synthetic */ void m65644M() throws IOException {
        super.close();
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e0 */
    public /* synthetic */ void m65645e0() throws IOException {
        super.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public /* synthetic */ void m65647f0(byte[] bArr) throws IOException {
        super.write(bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public /* synthetic */ void m65648g0(byte[] bArr, int i, int i2) throws IOException {
        super.write(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h0 */
    public /* synthetic */ void m65649h0(int i) throws IOException {
        super.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws UncheckedIOException {
        Uncheck.run(new IORunnable() { // from class: com.sunia.HTREnginev2.zqn
            @Override // onyx.org.apache.commons.io.function.IORunnable
            public final void run() {
                UncheckedFilterOutputStream.this.m65644M();
            }
        });
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws UncheckedIOException {
        Uncheck.run(new IORunnable() { // from class: com.sunia.HTREnginev2.xqn
            @Override // onyx.org.apache.commons.io.function.IORunnable
            public final void run() {
                UncheckedFilterOutputStream.this.m65645e0();
            }
        });
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws UncheckedIOException {
        Uncheck.accept(new IOConsumer() { // from class: com.sunia.HTREnginev2.wqn
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                UncheckedFilterOutputStream.this.m65647f0((byte[]) obj);
            }
        }, bArr);
    }

    public UncheckedFilterOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws UncheckedIOException {
        Uncheck.accept(new IOTriConsumer() { // from class: com.sunia.HTREnginev2.yqn
            @Override // onyx.org.apache.commons.io.function.IOTriConsumer
            public final void accept(Object obj, Object obj2, Object obj3) {
                UncheckedFilterOutputStream.this.m65648g0((byte[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
            }
        }, bArr, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws UncheckedIOException {
        Uncheck.accept(new IOConsumer() { // from class: com.sunia.HTREnginev2.arn
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                UncheckedFilterOutputStream.this.m65649h0(((Integer) obj).intValue());
            }
        }, Integer.valueOf(i));
    }
}
