package com.twelvemonkeys.io;

import com.sunia.HTREnginev2.cpf;
import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public class CompoundReader extends Reader {

    /* renamed from: e */
    public Reader f94221e;

    /* renamed from: f */
    public List<Reader> f94222f;
    protected final Object finalLock;

    /* renamed from: g */
    public int f94223g;

    /* renamed from: h */
    public int f94224h;

    /* renamed from: i */
    public int f94225i;

    /* renamed from: j */
    public int f94226j;
    protected final boolean markSupported;

    public CompoundReader(Iterator<Reader> it2) {
        super(Validate.notNull(it2, "readers"));
        this.finalLock = it2;
        this.f94222f = new ArrayList();
        while (true) {
            boolean z = true;
            while (it2.hasNext()) {
                Reader next = it2.next();
                if (next == null) {
                    throw new NullPointerException("readers cannot contain null-elements");
                }
                this.f94222f.add(next);
                z = (z && next.markSupported()) ? z : false;
            }
            this.markSupported = z;
            this.f94221e = nextReader();
            return;
        }
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Iterator<Reader> it2 = this.f94222f.iterator();
        while (it2.hasNext()) {
            it2.next().close();
        }
        this.f94222f = null;
    }

    public final void ensureOpen() throws IOException {
        if (this.f94222f == null) {
            throw new IOException("Stream closed");
        }
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        if (i < 0) {
            throw new IllegalArgumentException("Read limit < 0");
        }
        synchronized (this.finalLock) {
            ensureOpen();
            this.f94225i = this.f94226j;
            this.f94224h = this.f94223g;
            this.f94221e.mark(i);
        }
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return this.markSupported;
    }

    public final Reader nextReader() {
        if (this.f94223g >= this.f94222f.size()) {
            this.f94221e = new cpf();
        } else {
            List<Reader> list = this.f94222f;
            int i = this.f94223g;
            this.f94223g = i + 1;
            this.f94221e = list.get(i);
        }
        this.f94226j = 0;
        return this.f94221e;
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        synchronized (this.finalLock) {
            int read = this.f94221e.read();
            if (read < 0 && this.f94223g < this.f94222f.size()) {
                nextReader();
                return read();
            }
            this.f94226j++;
            return read;
        }
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        return this.f94221e.ready();
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        int i;
        synchronized (this.finalLock) {
            ensureOpen();
            int i2 = this.f94223g;
            if (i2 != this.f94224h) {
                while (true) {
                    i = this.f94224h;
                    if (i2 < i) {
                        break;
                    }
                    this.f94222f.get(i2).reset();
                    i2--;
                }
                this.f94223g = i - 1;
                nextReader();
            }
            this.f94221e.reset();
            this.f94226j = this.f94225i;
        }
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        synchronized (this.finalLock) {
            long skip = this.f94221e.skip(j);
            if (skip != 0 || this.f94223g >= this.f94222f.size()) {
                this.f94226j = (int) (this.f94226j + skip);
                return skip;
            }
            nextReader();
            return skip(j);
        }
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        synchronized (this.finalLock) {
            int read = this.f94221e.read(cArr, i, i2);
            if (read < 0 && this.f94223g < this.f94222f.size()) {
                nextReader();
                return read(cArr, i, i2);
            }
            this.f94226j += read;
            return read;
        }
    }
}
