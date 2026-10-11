package onyx.org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.UUID;
import onyx.org.apache.commons.io.TaggedIOException;

/* loaded from: classes11.dex */
public class TaggedOutputStream extends ProxyOutputStream {

    /* renamed from: e */
    public final Serializable f104514e;

    public TaggedOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.f104514e = UUID.randomUUID();
    }

    @Override // onyx.org.apache.commons.io.output.ProxyOutputStream
    public void handleIOException(IOException iOException) throws IOException {
        throw new TaggedIOException(iOException, this.f104514e);
    }

    public boolean isCauseOf(Exception exc) {
        return TaggedIOException.isTaggedWith(exc, this.f104514e);
    }

    public void throwIfCauseOf(Exception exc) throws IOException {
        TaggedIOException.throwCauseIfTaggedWith(exc, this.f104514e);
    }
}
