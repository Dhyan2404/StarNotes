package onyx.org.apache.commons.io;

import com.sunia.HTREnginev2.pyi;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

/* loaded from: classes11.dex */
public class LineIterator implements Iterator<String>, Closeable {

    /* renamed from: e */
    public final BufferedReader f104197e;

    /* renamed from: f */
    public String f104198f;

    /* renamed from: g */
    public boolean f104199g;

    public LineIterator(Reader reader) {
        Objects.requireNonNull(reader, "reader");
        if (reader instanceof BufferedReader) {
            this.f104197e = (BufferedReader) reader;
        } else {
            this.f104197e = new BufferedReader(reader);
        }
    }

    @Deprecated
    public static void closeQuietly(LineIterator lineIterator) {
        IOUtils.closeQuietly(lineIterator);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f104199g = true;
        this.f104198f = null;
        IOUtils.close(this.f104197e);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        String readLine;
        if (this.f104198f != null) {
            return true;
        }
        if (this.f104199g) {
            return false;
        }
        do {
            try {
                readLine = this.f104197e.readLine();
                if (readLine == null) {
                    this.f104199g = true;
                    return false;
                }
            } catch (IOException e) {
                IOUtils.closeQuietly(this, new pyi(e));
                throw new IllegalStateException(e);
            }
        } while (!isValidLine(readLine));
        this.f104198f = readLine;
        return true;
    }

    public boolean isValidLine(String str) {
        return true;
    }

    public String nextLine() {
        if (!hasNext()) {
            throw new NoSuchElementException("No more lines");
        }
        String str = this.f104198f;
        this.f104198f = null;
        return str;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove not supported");
    }

    @Override // java.util.Iterator
    public String next() {
        return nextLine();
    }
}
