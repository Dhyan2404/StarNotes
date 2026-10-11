package com.sun.xml.internal.stream.writers;

import com.sun.org.apache.xerces.internal.util.XMLStringBuffer;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes10.dex */
public class XMLWriter extends Writer {
    private static final boolean DEBUG = false;
    private static final int THRESHHOLD_LENGTH = 4096;
    private XMLStringBuffer buffer;
    private int size;
    private Writer writer;

    public XMLWriter(Writer writer) {
        this(writer, 4096);
    }

    private void conditionalWrite() throws IOException {
        if (this.buffer.length > this.size) {
            writeBufferedData();
        }
    }

    private void ensureOpen() throws IOException {
        if (this.writer == null) {
            throw new IOException("Stream closed");
        }
    }

    private void writeBufferedData() throws IOException {
        Writer writer = this.writer;
        XMLStringBuffer xMLStringBuffer = this.buffer;
        writer.write(xMLStringBuffer.f64120ch, xMLStringBuffer.offset, xMLStringBuffer.length);
        this.buffer.clear();
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.writer == null) {
            return;
        }
        flush();
        this.writer.close();
        this.writer = null;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        ensureOpen();
        writeBufferedData();
        this.writer.flush();
    }

    public Writer getWriter() {
        return this.writer;
    }

    public void reset() {
        this.writer = null;
        this.buffer.clear();
        this.size = 4096;
    }

    public void setWriter(Writer writer) {
        this.writer = writer;
        this.buffer.clear();
        this.size = 4096;
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        ensureOpen();
        this.buffer.append((char) i);
        conditionalWrite();
    }

    public XMLWriter(Writer writer, int i) {
        this.buffer = new XMLStringBuffer(12288);
        this.writer = writer;
        this.size = i;
    }

    public void setWriter(Writer writer, int i) {
        this.writer = writer;
        this.size = i;
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        ensureOpen();
        if (i2 > this.size) {
            writeBufferedData();
            this.writer.write(cArr, i, i2);
        } else {
            this.buffer.append(cArr, i, i2);
            conditionalWrite();
        }
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        write(str.toCharArray(), i, i2);
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        if (str.length() > this.size) {
            writeBufferedData();
            this.writer.write(str);
        } else {
            this.buffer.append(str);
            conditionalWrite();
        }
    }
}
