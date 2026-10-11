package onyx.org.apache.commons.io.output;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Objects;
import java.util.function.Supplier;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.file.PathUtils;

/* loaded from: classes11.dex */
public class DeferredFileOutputStream extends ThresholdingOutputStream {

    /* renamed from: k */
    public ByteArrayOutputStream f104493k;

    /* renamed from: l */
    public OutputStream f104494l;

    /* renamed from: m */
    public Path f104495m;

    /* renamed from: n */
    public final String f104496n;

    /* renamed from: o */
    public final String f104497o;

    /* renamed from: p */
    public final Path f104498p;

    /* renamed from: q */
    public boolean f104499q;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<DeferredFileOutputStream, Builder> {

        /* renamed from: l */
        public int f104500l;

        /* renamed from: m */
        public Path f104501m;

        /* renamed from: n */
        public String f104502n;

        /* renamed from: o */
        public String f104503o;

        /* renamed from: p */
        public Path f104504p;

        public Builder() {
            setBufferSizeDefault(1024);
            setBufferSize(1024);
        }

        public Builder setDirectory(File file) {
            this.f104504p = DeferredFileOutputStream.m65613M(file, null);
            return this;
        }

        public Builder setOutputFile(File file) {
            this.f104501m = DeferredFileOutputStream.m65613M(file, null);
            return this;
        }

        public Builder setPrefix(String str) {
            this.f104502n = str;
            return this;
        }

        public Builder setSuffix(String str) {
            this.f104503o = str;
            return this;
        }

        public Builder setThreshold(int i) {
            this.f104500l = i;
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public DeferredFileOutputStream get() {
            return new DeferredFileOutputStream(this.f104500l, this.f104501m, this.f104502n, this.f104503o, this.f104504p, getBufferSize());
        }

        public Builder setDirectory(Path path) {
            this.f104504p = DeferredFileOutputStream.m65614e0(path, null);
            return this;
        }

        public Builder setOutputFile(Path path) {
            this.f104501m = DeferredFileOutputStream.m65614e0(path, null);
            return this;
        }
    }

    /* renamed from: I */
    public static int m65612I(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException("Initial buffer size must be at least 0.");
    }

    /* renamed from: M */
    public static Path m65613M(File file, Supplier<Path> supplier) {
        if (file != null) {
            return file.toPath();
        }
        if (supplier == null) {
            return null;
        }
        return supplier.get();
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: e0 */
    public static Path m65614e0(Path path, Supplier<Path> supplier) {
        if (path != null) {
            return path;
        }
        if (supplier == null) {
            return null;
        }
        return supplier.get();
    }

    @Override // onyx.org.apache.commons.io.output.ThresholdingOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f104499q = true;
    }

    public byte[] getData() {
        ByteArrayOutputStream byteArrayOutputStream = this.f104493k;
        if (byteArrayOutputStream != null) {
            return byteArrayOutputStream.toByteArray();
        }
        return null;
    }

    public File getFile() {
        Path path = this.f104495m;
        if (path != null) {
            return path.toFile();
        }
        return null;
    }

    public Path getPath() {
        return this.f104495m;
    }

    @Override // onyx.org.apache.commons.io.output.ThresholdingOutputStream
    public OutputStream getStream() throws IOException {
        return this.f104494l;
    }

    public boolean isInMemory() {
        return !isThresholdExceeded();
    }

    @Override // onyx.org.apache.commons.io.output.ThresholdingOutputStream
    public void thresholdReached() throws IOException {
        String str = this.f104496n;
        if (str != null) {
            this.f104495m = Files.createTempFile(this.f104498p, str, this.f104497o, new FileAttribute[0]);
        }
        PathUtils.createParentDirectories(this.f104495m, null, PathUtils.EMPTY_FILE_ATTRIBUTE_ARRAY);
        OutputStream newOutputStream = Files.newOutputStream(this.f104495m, new OpenOption[0]);
        try {
            this.f104493k.writeTo(newOutputStream);
            this.f104494l = newOutputStream;
            this.f104493k = null;
        } catch (IOException e) {
            newOutputStream.close();
            throw e;
        }
    }

    public InputStream toInputStream() throws IOException {
        if (this.f104499q) {
            return isInMemory() ? this.f104493k.toInputStream() : Files.newInputStream(this.f104495m, new OpenOption[0]);
        }
        throw new IOException("Stream not closed");
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        if (!this.f104499q) {
            throw new IOException("Stream not closed");
        }
        if (isInMemory()) {
            this.f104493k.writeTo(outputStream);
        } else {
            Files.copy(this.f104495m, outputStream);
        }
    }

    @Deprecated
    public DeferredFileOutputStream(int i, File file) {
        this(i, file, (String) null, (String) null, (File) null, 1024);
    }

    public DeferredFileOutputStream(int i, File file, String str, String str2, File file2, int i2) {
        super(i);
        this.f104495m = m65613M(file, null);
        this.f104496n = str;
        this.f104497o = str2;
        this.f104498p = m65613M(file2, new Supplier() { // from class: com.sunia.HTREnginev2.k1f
            @Override // java.util.function.Supplier
            public final Object get() {
                return PathUtils.getTempDirectory();
            }
        });
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(m65612I(i2));
        this.f104493k = byteArrayOutputStream;
        this.f104494l = byteArrayOutputStream;
    }

    @Deprecated
    public DeferredFileOutputStream(int i, int i2, File file) {
        this(i, file, (String) null, (String) null, (File) null, i2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public DeferredFileOutputStream(int i, int i2, String str, String str2, File file) {
        this(i, (File) null, str, str2, file, i2);
        Objects.requireNonNull(str, RequestParameters.PREFIX);
    }

    public DeferredFileOutputStream(int i, Path path, String str, String str2, Path path2, int i2) {
        super(i);
        this.f104495m = m65614e0(path, null);
        this.f104496n = str;
        this.f104497o = str2;
        this.f104498p = m65614e0(path2, new Supplier() { // from class: com.sunia.HTREnginev2.k1f
            @Override // java.util.function.Supplier
            public final Object get() {
                return PathUtils.getTempDirectory();
            }
        });
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(m65612I(i2));
        this.f104493k = byteArrayOutputStream;
        this.f104494l = byteArrayOutputStream;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public DeferredFileOutputStream(int i, String str, String str2, File file) {
        this(i, (File) null, str, str2, file, 1024);
        Objects.requireNonNull(str, RequestParameters.PREFIX);
    }
}
