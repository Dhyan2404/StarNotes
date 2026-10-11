package onyx.org.apache.commons.io.output;

import java.io.FilterWriter;
import java.io.Writer;

/* loaded from: classes11.dex */
public class CloseShieldWriter extends ProxyWriter {
    @Deprecated
    public CloseShieldWriter(Writer writer) {
        super(writer);
    }

    public static CloseShieldWriter wrap(Writer writer) {
        return new CloseShieldWriter(writer);
    }

    @Override // onyx.org.apache.commons.io.output.ProxyWriter, java.io.FilterWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ((FilterWriter) this).out = ClosedWriter.INSTANCE;
    }
}
