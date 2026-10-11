package onyx.org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.Appendable;

/* loaded from: classes11.dex */
public class AppendableOutputStream<T extends Appendable> extends OutputStream {

    /* renamed from: e */
    public final T f104485e;

    public AppendableOutputStream(T t) {
        this.f104485e = t;
    }

    public T getAppendable() {
        return this.f104485e;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f104485e.append((char) i);
    }
}
