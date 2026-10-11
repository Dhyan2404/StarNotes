package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import onyx.org.apache.commons.io.IOUtils;

/* loaded from: classes11.dex */
public class DemuxInputStream extends InputStream {

    /* renamed from: e */
    public final InheritableThreadLocal<InputStream> f104311e = new InheritableThreadLocal<>();

    public InputStream bindStream(InputStream inputStream) {
        InputStream inputStream2 = this.f104311e.get();
        this.f104311e.set(inputStream);
        return inputStream2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        IOUtils.close(this.f104311e.get());
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        InputStream inputStream = this.f104311e.get();
        if (inputStream != null) {
            return inputStream.read();
        }
        return -1;
    }
}
