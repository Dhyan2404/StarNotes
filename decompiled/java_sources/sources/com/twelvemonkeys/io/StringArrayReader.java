package com.twelvemonkeys.io;

import com.sunia.HTREnginev2.cpf;
import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* loaded from: classes10.dex */
public class StringArrayReader extends StringReader {

    /* renamed from: e */
    public StringReader f94256e;

    /* renamed from: f */
    public String[] f94257f;
    protected final Object finalLock;

    /* renamed from: g */
    public int f94258g;

    /* renamed from: h */
    public int f94259h;

    /* renamed from: i */
    public int f94260i;

    /* renamed from: j */
    public int f94261j;

    public StringArrayReader(String[] strArr) {
        super("");
        Validate.notNull(strArr, "strings");
        ((StringReader) this).lock = strArr;
        this.finalLock = strArr;
        this.f94257f = (String[]) strArr.clone();
        nextReader();
    }

    @Override // java.io.StringReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        this.f94257f = null;
        this.f94256e.close();
    }

    public final void ensureOpen() throws IOException {
        if (this.f94257f == null) {
            throw new IOException("Stream closed");
        }
    }

    @Override // java.io.StringReader, java.io.Reader
    public void mark(int i) throws IOException {
        if (i < 0) {
            throw new IllegalArgumentException("Read limit < 0");
        }
        synchronized (this.finalLock) {
            ensureOpen();
            this.f94260i = this.f94261j;
            this.f94259h = this.f94258g;
            this.f94256e.mark(i);
        }
    }

    @Override // java.io.StringReader, java.io.Reader
    public boolean markSupported() {
        return true;
    }

    public final Reader nextReader() {
        int i = this.f94258g;
        String[] strArr = this.f94257f;
        if (i >= strArr.length) {
            this.f94256e = new cpf();
        } else {
            this.f94258g = i + 1;
            this.f94256e = new StringReader(strArr[i]);
        }
        this.f94261j = 0;
        return this.f94256e;
    }

    @Override // java.io.StringReader, java.io.Reader
    public int read() throws IOException {
        synchronized (this.finalLock) {
            int read = this.f94256e.read();
            if (read < 0 && this.f94258g < this.f94257f.length) {
                nextReader();
                return read();
            }
            this.f94261j++;
            return read;
        }
    }

    @Override // java.io.StringReader, java.io.Reader
    public boolean ready() throws IOException {
        return this.f94256e.ready();
    }

    @Override // java.io.StringReader, java.io.Reader
    public void reset() throws IOException {
        synchronized (this.finalLock) {
            ensureOpen();
            int i = this.f94258g;
            int i2 = this.f94259h;
            if (i != i2) {
                this.f94258g = i2 - 1;
                nextReader();
                this.f94256e.skip(this.f94260i);
            } else {
                this.f94256e.reset();
            }
            this.f94261j = this.f94260i;
        }
    }

    @Override // java.io.StringReader, java.io.Reader
    public long skip(long j) throws IOException {
        synchronized (this.finalLock) {
            long skip = this.f94256e.skip(j);
            if (skip != 0 || this.f94258g >= this.f94257f.length) {
                this.f94261j = (int) (this.f94261j + skip);
                return skip;
            }
            nextReader();
            return skip(j);
        }
    }

    @Override // java.io.StringReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        synchronized (this.finalLock) {
            int read = this.f94256e.read(cArr, i, i2);
            if (read < 0 && this.f94258g < this.f94257f.length) {
                nextReader();
                return read(cArr, i, i2);
            }
            this.f94261j += read;
            return read;
        }
    }
}
