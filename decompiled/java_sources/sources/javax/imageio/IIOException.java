package javax.imageio;

import java.io.IOException;

/* loaded from: classes5.dex */
public class IIOException extends IOException {
    private static final long serialVersionUID = -3216210718638985251L;

    public IIOException(String str) {
        super(str);
    }

    public IIOException(String str, Throwable th) {
        super(str);
        initCause(th);
    }
}
