package onyx.org.apache.commons.io.output;

import java.io.IOException;
import java.io.Serializable;
import java.io.Writer;
import java.util.UUID;
import onyx.org.apache.commons.io.TaggedIOException;

/* loaded from: classes11.dex */
public class TaggedWriter extends ProxyWriter {

    /* renamed from: e */
    public final Serializable f104515e;

    public TaggedWriter(Writer writer) {
        super(writer);
        this.f104515e = UUID.randomUUID();
    }

    @Override // onyx.org.apache.commons.io.output.ProxyWriter
    public void handleIOException(IOException iOException) throws IOException {
        throw new TaggedIOException(iOException, this.f104515e);
    }

    public boolean isCauseOf(Exception exc) {
        return TaggedIOException.isTaggedWith(exc, this.f104515e);
    }

    public void throwIfCauseOf(Exception exc) throws IOException {
        TaggedIOException.throwCauseIfTaggedWith(exc, this.f104515e);
    }
}
