package onyx.org.apache.commons.io.output;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Objects;
import onyx.org.apache.commons.io.Charsets;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.IOUtils;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;

/* loaded from: classes11.dex */
public class FileWriterWithEncoding extends ProxyWriter {

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<FileWriterWithEncoding, Builder> {

        /* renamed from: l */
        public boolean f104506l;

        /* renamed from: m */
        public CharsetEncoder f104507m = super.getCharset().newEncoder();

        public Builder setAppend(boolean z) {
            this.f104506l = z;
            return this;
        }

        public Builder setCharsetEncoder(CharsetEncoder charsetEncoder) {
            this.f104507m = charsetEncoder;
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public FileWriterWithEncoding get() throws IOException {
            if (this.f104507m != null && getCharset() != null && !this.f104507m.charset().equals(getCharset())) {
                throw new IllegalStateException(String.format("Mismatched Charset(%s) and CharsetEncoder(%s)", getCharset(), this.f104507m.charset()));
            }
            Object obj = this.f104507m;
            if (obj == null) {
                obj = getCharset();
            }
            return new FileWriterWithEncoding(FileWriterWithEncoding.m65617j(checkOrigin().getFile(), obj, this.f104506l));
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: j */
    public static OutputStreamWriter m65617j(File file, Object obj, boolean z) throws IOException {
        Objects.requireNonNull(file, "file");
        boolean exists = file.exists();
        try {
            OutputStream newOutputStream = FileUtils.newOutputStream(file, z);
            if (obj != null && !(obj instanceof Charset)) {
                return obj instanceof CharsetEncoder ? new OutputStreamWriter(newOutputStream, (CharsetEncoder) obj) : new OutputStreamWriter(newOutputStream, (String) obj);
            }
            return new OutputStreamWriter(newOutputStream, Charsets.toCharset((Charset) obj));
        } catch (IOException | RuntimeException e) {
            try {
                IOUtils.close((Closeable) null);
            } catch (IOException e2) {
                e.addSuppressed(e2);
            }
            if (exists) {
                throw e;
            }
            FileUtils.deleteQuietly(file);
            throw e;
        }
    }

    @Deprecated
    public FileWriterWithEncoding(File file, Charset charset) throws IOException {
        this(file, charset, false);
    }

    @Deprecated
    public FileWriterWithEncoding(File file, Charset charset, boolean z) throws IOException {
        this(m65617j(file, charset, z));
    }

    @Deprecated
    public FileWriterWithEncoding(File file, CharsetEncoder charsetEncoder) throws IOException {
        this(file, charsetEncoder, false);
    }

    @Deprecated
    public FileWriterWithEncoding(File file, CharsetEncoder charsetEncoder, boolean z) throws IOException {
        this(m65617j(file, charsetEncoder, z));
    }

    @Deprecated
    public FileWriterWithEncoding(File file, String str) throws IOException {
        this(file, str, false);
    }

    @Deprecated
    public FileWriterWithEncoding(File file, String str, boolean z) throws IOException {
        this(m65617j(file, str, z));
    }

    public FileWriterWithEncoding(OutputStreamWriter outputStreamWriter) {
        super(outputStreamWriter);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, Charset charset) throws IOException {
        this(new File(str), charset, false);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, Charset charset, boolean z) throws IOException {
        this(new File(str), charset, z);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, CharsetEncoder charsetEncoder) throws IOException {
        this(new File(str), charsetEncoder, false);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, CharsetEncoder charsetEncoder, boolean z) throws IOException {
        this(new File(str), charsetEncoder, z);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, String str2) throws IOException {
        this(new File(str), str2, false);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, String str2, boolean z) throws IOException {
        this(new File(str), str2, z);
    }
}
