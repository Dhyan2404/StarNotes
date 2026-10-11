package onyx.org.apache.commons.io.build;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.nio.file.Path;
import java.nio.file.Paths;
import onyx.org.apache.commons.io.build.AbstractOrigin;
import onyx.org.apache.commons.io.build.AbstractOriginSupplier;

/* loaded from: classes11.dex */
public abstract class AbstractOriginSupplier<T, B extends AbstractOriginSupplier<T, B>> extends AbstractSupplier<T, B> {

    /* renamed from: a */
    public AbstractOrigin<?, ?> f104206a;

    public static AbstractOrigin.ByteArrayOrigin newByteArrayOrigin(byte[] bArr) {
        return new AbstractOrigin.ByteArrayOrigin(bArr);
    }

    public static AbstractOrigin.CharSequenceOrigin newCharSequenceOrigin(CharSequence charSequence) {
        return new AbstractOrigin.CharSequenceOrigin(charSequence);
    }

    public static AbstractOrigin.FileOrigin newFileOrigin(File file) {
        return new AbstractOrigin.FileOrigin(file);
    }

    public static AbstractOrigin.InputStreamOrigin newInputStreamOrigin(InputStream inputStream) {
        return new AbstractOrigin.InputStreamOrigin(inputStream);
    }

    public static AbstractOrigin.OutputStreamOrigin newOutputStreamOrigin(OutputStream outputStream) {
        return new AbstractOrigin.OutputStreamOrigin(outputStream);
    }

    public static AbstractOrigin.PathOrigin newPathOrigin(Path path) {
        return new AbstractOrigin.PathOrigin(path);
    }

    public static AbstractOrigin.ReaderOrigin newReaderOrigin(Reader reader) {
        return new AbstractOrigin.ReaderOrigin(reader);
    }

    public static AbstractOrigin.URIOrigin newURIOrigin(URI uri) {
        return new AbstractOrigin.URIOrigin(uri);
    }

    public static AbstractOrigin.WriterOrigin newWriterOrigin(Writer writer) {
        return new AbstractOrigin.WriterOrigin(writer);
    }

    public AbstractOrigin<?, ?> checkOrigin() {
        AbstractOrigin<?, ?> abstractOrigin = this.f104206a;
        if (abstractOrigin != null) {
            return abstractOrigin;
        }
        throw new IllegalStateException("origin == null");
    }

    public AbstractOrigin<?, ?> getOrigin() {
        return this.f104206a;
    }

    public boolean hasOrigin() {
        return this.f104206a != null;
    }

    public B setByteArray(byte[] bArr) {
        return setOrigin(newByteArrayOrigin(bArr));
    }

    public B setCharSequence(CharSequence charSequence) {
        return setOrigin(newCharSequenceOrigin(charSequence));
    }

    public B setFile(File file) {
        return setOrigin(newFileOrigin(file));
    }

    public B setInputStream(InputStream inputStream) {
        return setOrigin(newInputStreamOrigin(inputStream));
    }

    public B setOrigin(AbstractOrigin<?, ?> abstractOrigin) {
        this.f104206a = abstractOrigin;
        return (B) asThis();
    }

    public B setOutputStream(OutputStream outputStream) {
        return setOrigin(newOutputStreamOrigin(outputStream));
    }

    public B setPath(Path path) {
        return setOrigin(newPathOrigin(path));
    }

    public B setReader(Reader reader) {
        return setOrigin(newReaderOrigin(reader));
    }

    public B setURI(URI uri) {
        return setOrigin(newURIOrigin(uri));
    }

    public B setWriter(Writer writer) {
        return setOrigin(newWriterOrigin(writer));
    }

    public static AbstractOrigin.FileOrigin newFileOrigin(String str) {
        return new AbstractOrigin.FileOrigin(new File(str));
    }

    public static AbstractOrigin.PathOrigin newPathOrigin(String str) {
        return new AbstractOrigin.PathOrigin(Paths.get(str, new String[0]));
    }

    public B setFile(String str) {
        return setOrigin(newFileOrigin(str));
    }

    public B setPath(String str) {
        return setOrigin(newPathOrigin(str));
    }
}
