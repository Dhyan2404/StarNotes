package onyx.org.apache.commons.io.output;

import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.IOExceptionList;
import onyx.org.apache.commons.io.function.IOConsumer;

/* loaded from: classes11.dex */
public class FilterCollectionWriter extends Writer {
    protected final Collection<Writer> EMPTY_WRITERS;
    protected final Collection<Writer> writers;

    public FilterCollectionWriter(Collection<Writer> collection) {
        List emptyList = Collections.emptyList();
        this.EMPTY_WRITERS = emptyList;
        this.writers = collection == null ? emptyList : collection;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        m65634g0(new IOConsumer() { // from class: com.sunia.HTREnginev2.slg
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((Writer) obj).close();
            }
        });
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        m65634g0(new IOConsumer() { // from class: com.sunia.HTREnginev2.tlg
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((Writer) obj).flush();
            }
        });
    }

    /* renamed from: g0 */
    public final FilterCollectionWriter m65634g0(IOConsumer<Writer> iOConsumer) throws IOExceptionList {
        IOConsumer.forAll(iOConsumer, m65635p0());
        return this;
    }

    /* renamed from: p0 */
    public final Stream<Writer> m65635p0() {
        return this.writers.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.wlg
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((Writer) obj);
            }
        });
    }

    @Override // java.io.Writer
    public void write(final char[] cArr) throws IOException {
        m65634g0(new IOConsumer() { // from class: com.sunia.HTREnginev2.ulg
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((Writer) obj).write(cArr);
            }
        });
    }

    @Override // java.io.Writer
    public void write(final char[] cArr, final int i, final int i2) throws IOException {
        m65634g0(new IOConsumer() { // from class: com.sunia.HTREnginev2.amg
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((Writer) obj).write(cArr, i, i2);
            }
        });
    }

    @Override // java.io.Writer
    public void write(final int i) throws IOException {
        m65634g0(new IOConsumer() { // from class: com.sunia.HTREnginev2.xlg
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((Writer) obj).write(i);
            }
        });
    }

    public FilterCollectionWriter(Writer... writerArr) {
        List emptyList = Collections.emptyList();
        this.EMPTY_WRITERS = emptyList;
        this.writers = writerArr != null ? Arrays.asList(writerArr) : emptyList;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(final char c) throws IOException {
        return m65634g0(new IOConsumer() { // from class: com.sunia.HTREnginev2.ylg
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((Writer) obj).append(c);
            }
        });
    }

    @Override // java.io.Writer
    public void write(final String str) throws IOException {
        m65634g0(new IOConsumer() { // from class: com.sunia.HTREnginev2.zlg
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((Writer) obj).write(str);
            }
        });
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(final CharSequence charSequence) throws IOException {
        return m65634g0(new IOConsumer() { // from class: com.sunia.HTREnginev2.qlg
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((Writer) obj).append(charSequence);
            }
        });
    }

    @Override // java.io.Writer
    public void write(final String str, final int i, final int i2) throws IOException {
        m65634g0(new IOConsumer() { // from class: com.sunia.HTREnginev2.rlg
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((Writer) obj).write(str, i, i2);
            }
        });
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(final CharSequence charSequence, final int i, final int i2) throws IOException {
        return m65634g0(new IOConsumer() { // from class: com.sunia.HTREnginev2.vlg
            @Override // onyx.org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ((Writer) obj).append(charSequence, i, i2);
            }
        });
    }
}
