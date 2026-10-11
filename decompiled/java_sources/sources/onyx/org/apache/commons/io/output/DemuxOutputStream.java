package onyx.org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import onyx.org.apache.commons.io.IOUtils;

/* loaded from: classes11.dex */
public class DemuxOutputStream extends OutputStream {

    /* renamed from: e */
    public final InheritableThreadLocal<OutputStream> f104505e = new InheritableThreadLocal<>();

    public OutputStream bindStream(OutputStream outputStream) {
        OutputStream outputStream2 = this.f104505e.get();
        this.f104505e.set(outputStream);
        return outputStream2;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        IOUtils.close(this.f104505e.get());
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        OutputStream outputStream = this.f104505e.get();
        if (outputStream != null) {
            outputStream.flush();
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        OutputStream outputStream = this.f104505e.get();
        if (outputStream != null) {
            outputStream.write(i);
        }
    }
}
