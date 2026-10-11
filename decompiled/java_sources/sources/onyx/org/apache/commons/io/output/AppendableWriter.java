package onyx.org.apache.commons.io.output;

import java.io.IOException;
import java.io.Writer;
import java.lang.Appendable;
import java.util.Objects;

/* loaded from: classes11.dex */
public class AppendableWriter<T extends Appendable> extends Writer {

    /* renamed from: e */
    public final T f104486e;

    public AppendableWriter(T t) {
        this.f104486e = t;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
    }

    public T getAppendable() {
        return this.f104486e;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        Objects.requireNonNull(cArr, "Character array is missing");
        if (i2 >= 0 && i + i2 <= cArr.length) {
            for (int i3 = 0; i3 < i2; i3++) {
                this.f104486e.append(cArr[i + i3]);
            }
            return;
        }
        throw new IndexOutOfBoundsException("Array Size=" + cArr.length + ", offset=" + i + ", length=" + i2);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        this.f104486e.append(c);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) throws IOException {
        this.f104486e.append(charSequence);
        return this;
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        this.f104486e.append((char) i);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i, int i2) throws IOException {
        this.f104486e.append(charSequence, i, i2);
        return this;
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        Objects.requireNonNull(str, "String is missing");
        this.f104486e.append(str, i, i2 + i);
    }
}
