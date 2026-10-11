package com.onegravity.rteditor.utils.io;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes7.dex */
public class LineIterator implements Iterator<String> {

    /* renamed from: e */
    public final BufferedReader f40593e;

    /* renamed from: f */
    public String f40594f;

    /* renamed from: g */
    public boolean f40595g = false;

    public LineIterator(Reader reader) throws IllegalArgumentException {
        if (reader == null) {
            throw new IllegalArgumentException("Reader must not be null");
        }
        if (reader instanceof BufferedReader) {
            this.f40593e = (BufferedReader) reader;
        } else {
            this.f40593e = new BufferedReader(reader);
        }
    }

    public static void closeQuietly(LineIterator lineIterator) {
        if (lineIterator != null) {
            lineIterator.close();
        }
    }

    public void close() {
        this.f40595g = true;
        IOUtils.closeQuietly((Reader) this.f40593e);
        this.f40594f = null;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        String readLine;
        if (this.f40594f != null) {
            return true;
        }
        if (this.f40595g) {
            return false;
        }
        do {
            try {
                readLine = this.f40593e.readLine();
                if (readLine == null) {
                    this.f40595g = true;
                    return false;
                }
            } catch (IOException e) {
                close();
                throw new IllegalStateException(e);
            }
        } while (!isValidLine(readLine));
        this.f40594f = readLine;
        return true;
    }

    public boolean isValidLine(String str) {
        return true;
    }

    public String nextLine() {
        if (!hasNext()) {
            throw new NoSuchElementException("No more lines");
        }
        String str = this.f40594f;
        this.f40594f = null;
        return str;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Remove unsupported on LineIterator");
    }

    @Override // java.util.Iterator
    public String next() {
        return nextLine();
    }
}
