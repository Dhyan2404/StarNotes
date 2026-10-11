package onyx.org.apache.commons.io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.io.Writer;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.function.IOConsumer;
import onyx.org.apache.commons.io.function.IOFunction;
import onyx.org.apache.commons.io.function.IORunnable;
import onyx.org.apache.commons.io.function.IOTriConsumer;
import onyx.org.apache.commons.io.function.IOTriFunction;
import onyx.org.apache.commons.io.function.Uncheck;
import onyx.org.apache.commons.io.output.UncheckedFilterWriter;

/* loaded from: classes11.dex */
public final class UncheckedFilterWriter extends FilterWriter {

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<UncheckedFilterWriter, Builder> {
        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public UncheckedFilterWriter get() throws IOException {
            return new UncheckedFilterWriter(getWriter());
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i0 */
    public /* synthetic */ Writer m65660i0(char c) throws IOException {
        return super.append(c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j0 */
    public /* synthetic */ Writer m65662j0(CharSequence charSequence) throws IOException {
        return super.append(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k0 */
    public /* synthetic */ Writer m65663k0(CharSequence charSequence, int i, int i2) throws IOException {
        return super.append(charSequence, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l0 */
    public /* synthetic */ void m65664l0() throws IOException {
        super.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m0 */
    public /* synthetic */ void m65665m0() throws IOException {
        super.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n0 */
    public /* synthetic */ void m65666n0(char[] cArr) throws IOException {
        super.write(cArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o0 */
    public /* synthetic */ void m65667o0(char[] cArr, int i, int i2) throws IOException {
        super.write(cArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p0 */
    public /* synthetic */ void m65668p0(int i) throws IOException {
        super.write(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q0 */
    public /* synthetic */ void m65669q0(String str) throws IOException {
        super.write(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r0 */
    public /* synthetic */ void m65670r0(String str, int i, int i2) throws IOException {
        super.write(str, i, i2);
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws UncheckedIOException {
        Uncheck.run(new IORunnable() { // from class: com.sunia.HTREnginev2.mrn
            @Override // onyx.org.apache.commons.io.function.IORunnable
            public final void run() {
                UncheckedFilterWriter.this.m65664l0();
            }
        });
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Flushable
    public void flush() throws UncheckedIOException {
        Uncheck.run(new IORunnable() { // from class: com.sunia.HTREnginev2.prn
            @Override // onyx.org.apache.commons.io.function.IORunnable
            public final void run() {
                UncheckedFilterWriter.this.m65665m0();
            }
        });
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws UncheckedIOException {
        Uncheck.accept(new IOConsumer() { // from class: com.sunia.HTREnginev2.lrn
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                UncheckedFilterWriter.this.m65666n0((char[]) obj);
            }
        }, cArr);
    }

    public UncheckedFilterWriter(Writer writer) {
        super(writer);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) throws UncheckedIOException {
        Uncheck.accept(new IOTriConsumer() { // from class: com.sunia.HTREnginev2.nrn
            @Override // onyx.org.apache.commons.io.function.IOTriConsumer
            public final void accept(Object obj, Object obj2, Object obj3) {
                UncheckedFilterWriter.this.m65667o0((char[]) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
            }
        }, cArr, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i) throws UncheckedIOException {
        Uncheck.accept(new IOConsumer() { // from class: com.sunia.HTREnginev2.rrn
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                UncheckedFilterWriter.this.m65668p0(((Integer) obj).intValue());
            }
        }, Integer.valueOf(i));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws UncheckedIOException {
        return (Writer) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.qrn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Writer m65660i0;
                m65660i0 = UncheckedFilterWriter.this.m65660i0(((Character) obj).charValue());
                return m65660i0;
            }
        }, Character.valueOf(c));
    }

    @Override // java.io.Writer
    public void write(String str) throws UncheckedIOException {
        Uncheck.accept(new IOConsumer() { // from class: com.sunia.HTREnginev2.urn
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                UncheckedFilterWriter.this.m65669q0((String) obj);
            }
        }, str);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) throws UncheckedIOException {
        return (Writer) Uncheck.apply(new IOFunction() { // from class: com.sunia.HTREnginev2.trn
            @Override // onyx.org.apache.commons.io.function.IOFunction
            public final Object apply(Object obj) {
                Writer m65662j0;
                m65662j0 = UncheckedFilterWriter.this.m65662j0((CharSequence) obj);
                return m65662j0;
            }
        }, charSequence);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(String str, int i, int i2) throws UncheckedIOException {
        Uncheck.accept(new IOTriConsumer() { // from class: com.sunia.HTREnginev2.srn
            @Override // onyx.org.apache.commons.io.function.IOTriConsumer
            public final void accept(Object obj, Object obj2, Object obj3) {
                UncheckedFilterWriter.this.m65670r0((String) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
            }
        }, str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i, int i2) throws UncheckedIOException {
        return (Writer) Uncheck.apply(new IOTriFunction() { // from class: com.sunia.HTREnginev2.orn
            @Override // onyx.org.apache.commons.io.function.IOTriFunction
            public final Object apply(Object obj, Object obj2, Object obj3) {
                Writer m65663k0;
                m65663k0 = UncheckedFilterWriter.this.m65663k0((CharSequence) obj, ((Integer) obj2).intValue(), ((Integer) obj3).intValue());
                return m65663k0;
            }
        }, charSequence, Integer.valueOf(i), Integer.valueOf(i2));
    }
}
