package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.UUID;
import onyx.org.apache.commons.io.TaggedIOException;

/* loaded from: classes11.dex */
public class TaggedInputStream extends ProxyInputStream {

    /* renamed from: e */
    public final Serializable f104392e;

    public TaggedInputStream(InputStream inputStream) {
        super(inputStream);
        this.f104392e = UUID.randomUUID();
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream
    public void handleIOException(IOException iOException) throws IOException {
        throw new TaggedIOException(iOException, this.f104392e);
    }

    public boolean isCauseOf(Throwable th) {
        return TaggedIOException.isTaggedWith(th, this.f104392e);
    }

    public void throwIfCauseOf(Throwable th) throws IOException {
        TaggedIOException.throwCauseIfTaggedWith(th, this.f104392e);
    }
}
