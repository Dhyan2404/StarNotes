package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import onyx.org.apache.commons.io.function.IOSupplier;
import onyx.org.apache.commons.io.function.Uncheck;
import onyx.org.apache.commons.io.input.SequenceReader;

/* loaded from: classes11.dex */
public class SequenceReader extends Reader {

    /* renamed from: e */
    public Reader f104390e;

    /* renamed from: f */
    public final Iterator<? extends Reader> f104391f;

    public SequenceReader(Iterable<? extends Reader> iterable) {
        Objects.requireNonNull(iterable, "readers");
        this.f104391f = iterable.iterator();
        this.f104390e = (Reader) Uncheck.get(new IOSupplier() { // from class: com.sunia.HTREnginev2.ygm
            @Override // onyx.org.apache.commons.io.function.IOSupplier
            public final Object get() {
                Reader m65498j;
                m65498j = SequenceReader.this.m65498j();
                return m65498j;
            }
        });
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        do {
        } while (m65498j() != null);
    }

    /* renamed from: j */
    public final Reader m65498j() throws IOException {
        Reader reader = this.f104390e;
        if (reader != null) {
            reader.close();
        }
        if (this.f104391f.hasNext()) {
            this.f104390e = this.f104391f.next();
        } else {
            this.f104390e = null;
        }
        return this.f104390e;
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        int i = -1;
        while (true) {
            Reader reader = this.f104390e;
            if (reader == null || (i = reader.read()) != -1) {
                break;
            }
            m65498j();
        }
        return i;
    }

    public SequenceReader(Reader... readerArr) {
        this(Arrays.asList(readerArr));
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        Objects.requireNonNull(cArr, "cbuf");
        if (i2 < 0 || i < 0 || i + i2 > cArr.length) {
            throw new IndexOutOfBoundsException("Array Size=" + cArr.length + ", offset=" + i + ", length=" + i2);
        }
        int i3 = 0;
        while (true) {
            Reader reader = this.f104390e;
            if (reader == null) {
                break;
            }
            int read = reader.read(cArr, i, i2);
            if (read == -1) {
                m65498j();
            } else {
                i3 += read;
                i += read;
                i2 -= read;
                if (i2 <= 0) {
                    break;
                }
            }
        }
        if (i3 > 0) {
            return i3;
        }
        return -1;
    }
}
