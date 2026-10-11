package org.apache.xmlbeans.impl.common;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.io.Writer;

/* loaded from: classes13.dex */
public class ReaderInputStream extends PushedInputStream {
    public static final int defaultBufferSize = 2048;
    private final char[] buf;
    private final Reader reader;
    private final Writer writer;

    public ReaderInputStream(Reader reader, String str) throws UnsupportedEncodingException {
        this(reader, str, 2048);
    }

    @Override // org.apache.xmlbeans.impl.common.PushedInputStream
    public void fill(int i) throws IOException {
        do {
            int read = this.reader.read(this.buf);
            if (read < 0) {
                return;
            }
            this.writer.write(this.buf, 0, read);
            this.writer.flush();
        } while (available() <= 0);
    }

    public ReaderInputStream(Reader reader, String str, int i) throws UnsupportedEncodingException {
        if (i > 0) {
            this.reader = reader;
            this.writer = new OutputStreamWriter(getOutputStream(), str);
            this.buf = new char[i];
            return;
        }
        throw new IllegalArgumentException("Buffer size <= 0");
    }
}
