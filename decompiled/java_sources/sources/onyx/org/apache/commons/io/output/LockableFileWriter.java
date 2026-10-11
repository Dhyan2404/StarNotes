package onyx.org.apache.commons.io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Objects;
import onyx.org.apache.commons.io.Charsets;
import onyx.org.apache.commons.io.FileUtils;
import onyx.org.apache.commons.io.build.AbstractOrigin;
import onyx.org.apache.commons.io.build.AbstractOriginSupplier;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;

/* loaded from: classes11.dex */
public class LockableFileWriter extends Writer {

    /* renamed from: g */
    public static final String f104508g = ".lck";

    /* renamed from: e */
    public final Writer f104509e;

    /* renamed from: f */
    public final File f104510f;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<LockableFileWriter, Builder> {

        /* renamed from: l */
        public boolean f104511l;

        /* renamed from: m */
        public AbstractOrigin<?, ?> f104512m = AbstractOriginSupplier.newFileOrigin(FileUtils.getTempDirectoryPath());

        public Builder() {
            setBufferSizeDefault(1024);
            setBufferSize(1024);
        }

        public Builder setAppend(boolean z) {
            this.f104511l = z;
            return this;
        }

        public Builder setLockDirectory(File file) {
            if (file == null) {
                file = FileUtils.getTempDirectory();
            }
            this.f104512m = AbstractOriginSupplier.newFileOrigin(file);
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public LockableFileWriter get() throws IOException {
            return new LockableFileWriter(checkOrigin().getFile(), getCharset(), this.f104511l, this.f104512m.getFile().toString());
        }

        public Builder setLockDirectory(String str) {
            if (str == null) {
                str = FileUtils.getTempDirectoryPath();
            }
            this.f104512m = AbstractOriginSupplier.newFileOrigin(str);
            return this;
        }
    }

    @Deprecated
    public LockableFileWriter(File file) throws IOException {
        this(file, false, (String) null);
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.f104509e.close();
        } finally {
            FileUtils.delete(this.f104510f);
        }
    }

    /* renamed from: f */
    public final void m65636f() throws IOException {
        synchronized (LockableFileWriter.class) {
            if (!this.f104510f.createNewFile()) {
                throw new IOException("Can't write file, lock " + this.f104510f.getAbsolutePath() + " exists");
            }
            this.f104510f.deleteOnExit();
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.f104509e.flush();
    }

    /* renamed from: j */
    public final Writer m65637j(File file, Charset charset, boolean z) throws IOException {
        boolean exists = file.exists();
        try {
            return new OutputStreamWriter(new FileOutputStream(file.getAbsolutePath(), z), Charsets.toCharset(charset));
        } catch (IOException | RuntimeException e) {
            FileUtils.deleteQuietly(this.f104510f);
            if (!exists) {
                FileUtils.deleteQuietly(file);
            }
            throw e;
        }
    }

    /* renamed from: w */
    public final void m65638w(File file) throws IOException {
        if (!file.exists()) {
            throw new IOException("Could not find lockDir: " + file.getAbsolutePath());
        }
        if (file.canWrite()) {
            return;
        }
        throw new IOException("Could not write to lockDir: " + file.getAbsolutePath());
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        this.f104509e.write(cArr);
    }

    @Deprecated
    public LockableFileWriter(File file, boolean z) throws IOException {
        this(file, z, (String) null);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        this.f104509e.write(cArr, i, i2);
    }

    @Deprecated
    public LockableFileWriter(File file, boolean z, String str) throws IOException {
        this(file, Charset.defaultCharset(), z, str);
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        this.f104509e.write(i);
    }

    @Deprecated
    public LockableFileWriter(File file, Charset charset) throws IOException {
        this(file, charset, false, (String) null);
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        this.f104509e.write(str);
    }

    @Deprecated
    public LockableFileWriter(File file, Charset charset, boolean z, String str) throws IOException {
        Objects.requireNonNull(file, "file");
        File absoluteFile = file.getAbsoluteFile();
        if (absoluteFile.getParentFile() != null) {
            FileUtils.forceMkdir(absoluteFile.getParentFile());
        }
        if (!absoluteFile.isDirectory()) {
            File file2 = new File(str == null ? FileUtils.getTempDirectoryPath() : str);
            FileUtils.forceMkdir(file2);
            m65638w(file2);
            this.f104510f = new File(file2, absoluteFile.getName() + f104508g);
            m65636f();
            this.f104509e = m65637j(absoluteFile, charset, z);
            return;
        }
        throw new IOException("File specified is a directory");
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        this.f104509e.write(str, i, i2);
    }

    @Deprecated
    public LockableFileWriter(File file, String str) throws IOException {
        this(file, str, false, (String) null);
    }

    @Deprecated
    public LockableFileWriter(File file, String str, boolean z, String str2) throws IOException {
        this(file, Charsets.toCharset(str), z, str2);
    }

    @Deprecated
    public LockableFileWriter(String str) throws IOException {
        this(str, false, (String) null);
    }

    @Deprecated
    public LockableFileWriter(String str, boolean z) throws IOException {
        this(str, z, (String) null);
    }

    @Deprecated
    public LockableFileWriter(String str, boolean z, String str2) throws IOException {
        this(new File(str), z, str2);
    }
}
