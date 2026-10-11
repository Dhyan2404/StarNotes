package com.sun.org.apache.regexp.internal;

import java.io.IOException;
import java.io.Reader;

/* loaded from: classes10.dex */
public final class ReaderCharacterIterator implements CharacterIterator {
    private final StringBuffer buff = new StringBuffer(512);
    private boolean closed = false;
    private final Reader reader;

    public ReaderCharacterIterator(Reader reader) {
        this.reader = reader;
    }

    private void ensure(int i) throws IOException {
        if (!this.closed && i >= this.buff.length()) {
            read((i + 1) - this.buff.length());
        }
    }

    private int read(int i) throws IOException {
        if (this.closed) {
            return 0;
        }
        char[] cArr = new char[i];
        int i2 = 0;
        while (true) {
            int read = this.reader.read(cArr);
            if (read < 0) {
                this.closed = true;
                break;
            }
            i2 += read;
            this.buff.append(cArr, 0, read);
            if (i2 >= i) {
                break;
            }
        }
        return i2;
    }

    private void readAll() throws IOException {
        while (!this.closed) {
            read(1000);
        }
    }

    @Override // com.sun.org.apache.regexp.internal.CharacterIterator
    public char charAt(int i) {
        try {
            ensure(i);
            return this.buff.charAt(i);
        } catch (IOException e) {
            throw new StringIndexOutOfBoundsException(e.getMessage());
        }
    }

    @Override // com.sun.org.apache.regexp.internal.CharacterIterator
    public boolean isEnd(int i) {
        if (this.buff.length() > i) {
            return false;
        }
        try {
            ensure(i);
            return this.buff.length() <= i;
        } catch (IOException e) {
            throw new StringIndexOutOfBoundsException(e.getMessage());
        }
    }

    @Override // com.sun.org.apache.regexp.internal.CharacterIterator
    public String substring(int i, int i2) {
        try {
            ensure(i2);
            return this.buff.toString().substring(i, i2);
        } catch (IOException e) {
            throw new StringIndexOutOfBoundsException(e.getMessage());
        }
    }

    @Override // com.sun.org.apache.regexp.internal.CharacterIterator
    public String substring(int i) {
        try {
            readAll();
            return this.buff.toString().substring(i);
        } catch (IOException e) {
            throw new StringIndexOutOfBoundsException(e.getMessage());
        }
    }
}
