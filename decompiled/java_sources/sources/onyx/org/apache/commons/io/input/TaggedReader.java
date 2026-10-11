package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.util.UUID;
import onyx.org.apache.commons.io.TaggedIOException;

/* loaded from: classes11.dex */
public class TaggedReader extends ProxyReader {

    /* renamed from: e */
    public final Serializable f104393e;

    public TaggedReader(Reader reader) {
        super(reader);
        this.f104393e = UUID.randomUUID();
    }

    @Override // onyx.org.apache.commons.io.input.ProxyReader
    public void handleIOException(IOException iOException) throws IOException {
        throw new TaggedIOException(iOException, this.f104393e);
    }

    public boolean isCauseOf(Throwable th) {
        return TaggedIOException.isTaggedWith(th, this.f104393e);
    }

    public void throwIfCauseOf(Throwable th) throws IOException {
        TaggedIOException.throwCauseIfTaggedWith(th, this.f104393e);
    }
}
