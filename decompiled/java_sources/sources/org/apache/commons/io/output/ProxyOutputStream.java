package org.apache.commons.io.output;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.function.IOConsumer;
import org.apache.commons.io.output.ProxyOutputStream;

/* loaded from: classes12.dex */
public class ProxyOutputStream extends FilterOutputStream {
    public ProxyOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public void afterWrite(int i) throws IOException {
    }

    public void beforeWrite(int i) throws IOException {
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        IOUtils.close(((FilterOutputStream) this).out, new IOConsumer() { // from class: com.sunia.HTREnginev2.o9l
            @Override // org.apache.commons.io.function.IOConsumer
            public final void accept(Object obj) {
                ProxyOutputStream.this.handleIOException((IOException) obj);
            }
        });
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            ((FilterOutputStream) this).out.flush();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    public void handleIOException(IOException iOException) throws IOException {
        throw iOException;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        try {
            beforeWrite(1);
            ((FilterOutputStream) this).out.write(i);
            afterWrite(1);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            int length = IOUtils.length(bArr);
            beforeWrite(length);
            ((FilterOutputStream) this).out.write(bArr);
            afterWrite(length);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            beforeWrite(i2);
            ((FilterOutputStream) this).out.write(bArr, i, i2);
            afterWrite(i2);
        } catch (IOException e) {
            handleIOException(e);
        }
    }
}
