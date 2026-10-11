package com.sun.xml.internal.stream.writers;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

/* loaded from: classes10.dex */
public final class UTF8OutputStreamWriter extends Writer {
    int lastUTF16CodePoint = 0;
    OutputStream out;

    public UTF8OutputStreamWriter(OutputStream outputStream) {
        this.out = outputStream;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.lastUTF16CodePoint != 0) {
            throw new IllegalStateException("Attempting to close a UTF8OutputStreamWriter while awaiting for a UTF-16 code unit");
        }
        this.out.close();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    public String getEncoding() {
        return "UTF-8";
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        int i2 = this.lastUTF16CodePoint;
        if (i2 != 0) {
            int i3 = ((i & 1023) | ((i2 & 1023) << 10)) + 65536;
            if (i3 >= 0 && i3 < 2097152) {
                this.out.write((i3 >> 18) | 240);
                this.out.write(((i3 >> 12) & 63) | 128);
                this.out.write(((i3 >> 6) & 63) | 128);
                this.out.write((i3 & 63) | 128);
                this.lastUTF16CodePoint = 0;
                return;
            }
            throw new IOException("Atttempting to write invalid Unicode code point '" + i3 + CloudStorageConstants.SINGLE_QUOTES);
        }
        if (i < 128) {
            this.out.write(i);
            return;
        }
        if (i < 2048) {
            this.out.write((i >> 6) | 192);
            this.out.write((i & 63) | 128);
        } else if (i <= 65535) {
            if (!XMLChar.isHighSurrogate(i) && !XMLChar.isLowSurrogate(i)) {
                this.out.write((i >> 12) | 224);
                this.out.write(((i >> 6) & 63) | 128);
                this.out.write((i & 63) | 128);
                return;
            }
            this.lastUTF16CodePoint = i;
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) throws IOException {
        if (charSequence == null) {
            write("null");
        } else {
            write(charSequence.toString());
        }
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i, int i2) throws IOException {
        if (charSequence == null) {
            charSequence = "null";
        }
        write(charSequence.subSequence(i, i2).toString());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        write(c);
        return this;
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        for (char c : cArr) {
            write(c);
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            write(cArr[i + i3]);
        }
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            write(str.charAt(i));
        }
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        for (int i3 = 0; i3 < i2; i3++) {
            write(str.charAt(i + i3));
        }
    }
}
