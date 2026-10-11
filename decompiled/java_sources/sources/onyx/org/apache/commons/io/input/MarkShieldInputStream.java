package onyx.org.apache.commons.io.input;

import com.sunia.HTREnginev2.xwn;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes11.dex */
public class MarkShieldInputStream extends ProxyInputStream {
    public MarkShieldInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw xwn.m58361c();
    }
}
