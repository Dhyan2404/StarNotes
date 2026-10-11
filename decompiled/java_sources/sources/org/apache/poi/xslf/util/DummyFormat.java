package org.apache.poi.xslf.util;

import java.awt.Graphics2D;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;

/* loaded from: classes13.dex */
public class DummyFormat implements OutputFormat {
    private final UnsynchronizedByteArrayOutputStream bos;
    private final DummyGraphics2d dummy2d;

    public DummyFormat() {
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            this.bos = unsynchronizedByteArrayOutputStream;
            this.dummy2d = new DummyGraphics2d(new PrintStream((OutputStream) unsynchronizedByteArrayOutputStream, true, StandardCharsets.UTF_8.name()));
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // org.apache.poi.xslf.util.OutputFormat
    public Graphics2D addSlide(double d, double d2) {
        this.bos.reset();
        return this.dummy2d;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.bos.reset();
    }

    @Override // org.apache.poi.xslf.util.OutputFormat
    public void writeDocument(MFProxy mFProxy, File file) {
    }

    @Override // org.apache.poi.xslf.util.OutputFormat
    public void writeSlide(MFProxy mFProxy, File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            this.bos.writeTo(fileOutputStream);
            this.bos.reset();
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
