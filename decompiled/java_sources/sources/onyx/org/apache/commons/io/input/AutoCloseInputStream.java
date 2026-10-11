package onyx.org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;

/* loaded from: classes11.dex */
public class AutoCloseInputStream extends ProxyInputStream {

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<AutoCloseInputStream, Builder> {
        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public AutoCloseInputStream get() throws IOException {
            return new AutoCloseInputStream(getInputStream());
        }
    }

    @Deprecated
    public AutoCloseInputStream(InputStream inputStream) {
        super(inputStream);
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream
    public void afterRead(int i) throws IOException {
        if (i == -1) {
            close();
        }
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterInputStream) this).in.close();
        ((FilterInputStream) this).in = ClosedInputStream.INSTANCE;
    }

    public void finalize() throws Throwable {
        close();
        super.finalize();
    }
}
