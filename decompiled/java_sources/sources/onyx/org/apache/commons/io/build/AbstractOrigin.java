package onyx.org.apache.commons.io.build;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Objects;
import onyx.org.apache.commons.io.IOUtils;
import onyx.org.apache.commons.io.RandomAccessFileMode;
import onyx.org.apache.commons.io.RandomAccessFiles;
import onyx.org.apache.commons.io.build.AbstractOrigin;
import onyx.org.apache.commons.io.input.CharSequenceInputStream;
import onyx.org.apache.commons.io.input.CharSequenceReader;
import onyx.org.apache.commons.io.input.ReaderInputStream;
import onyx.org.apache.commons.io.output.WriterOutputStream;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public abstract class AbstractOrigin<T, B extends AbstractOrigin<T, B>> extends AbstractSupplier<T, B> {

    /* renamed from: a */
    public final T f104205a;

    /* loaded from: classes11.dex */
    public static class ByteArrayOrigin extends AbstractOrigin<byte[], ByteArrayOrigin> {
        public ByteArrayOrigin(byte[] bArr) {
            super(bArr);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public byte[] getByteArray() {
            return get();
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public InputStream getInputStream(OpenOption... openOptionArr) throws IOException {
            return new ByteArrayInputStream((byte[]) this.f104205a);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public Reader getReader(Charset charset) throws IOException {
            return new InputStreamReader(getInputStream(new OpenOption[0]), charset);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public long size() throws IOException {
            return ((byte[]) this.f104205a).length;
        }
    }

    /* loaded from: classes11.dex */
    public static class CharSequenceOrigin extends AbstractOrigin<CharSequence, CharSequenceOrigin> {
        public CharSequenceOrigin(CharSequence charSequence) {
            super(charSequence);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public byte[] getByteArray() {
            return ((CharSequence) this.f104205a).toString().getBytes(Charset.defaultCharset());
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public CharSequence getCharSequence(Charset charset) {
            return get();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public InputStream getInputStream(OpenOption... openOptionArr) throws IOException {
            return ((CharSequenceInputStream.Builder) CharSequenceInputStream.builder().setCharSequence(getCharSequence(Charset.defaultCharset()))).get();
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public Reader getReader(Charset charset) throws IOException {
            return new CharSequenceReader(get());
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public long size() throws IOException {
            return ((CharSequence) this.f104205a).length();
        }
    }

    /* loaded from: classes11.dex */
    public static class FileOrigin extends AbstractOrigin<File, FileOrigin> {
        public FileOrigin(File file) {
            super(file);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public byte[] getByteArray(long j, int i) throws IOException {
            RandomAccessFile create = RandomAccessFileMode.READ_ONLY.create((File) this.f104205a);
            try {
                byte[] read = RandomAccessFiles.read(create, j, i);
                if (create != null) {
                    create.close();
                }
                return read;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (create != null) {
                        try {
                            create.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public File getFile() {
            return get();
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public Path getPath() {
            return get().toPath();
        }
    }

    /* loaded from: classes11.dex */
    public static class InputStreamOrigin extends AbstractOrigin<InputStream, InputStreamOrigin> {
        public InputStreamOrigin(InputStream inputStream) {
            super(inputStream);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public byte[] getByteArray() throws IOException {
            return IOUtils.toByteArray((InputStream) this.f104205a);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public InputStream getInputStream(OpenOption... openOptionArr) {
            return get();
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public Reader getReader(Charset charset) throws IOException {
            return new InputStreamReader(getInputStream(new OpenOption[0]), charset);
        }
    }

    /* loaded from: classes11.dex */
    public static class OutputStreamOrigin extends AbstractOrigin<OutputStream, OutputStreamOrigin> {
        public OutputStreamOrigin(OutputStream outputStream) {
            super(outputStream);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public OutputStream getOutputStream(OpenOption... openOptionArr) {
            return get();
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public Writer getWriter(Charset charset, OpenOption... openOptionArr) throws IOException {
            return new OutputStreamWriter((OutputStream) this.f104205a, charset);
        }
    }

    /* loaded from: classes11.dex */
    public static class PathOrigin extends AbstractOrigin<Path, PathOrigin> {
        public PathOrigin(Path path) {
            super(path);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public byte[] getByteArray(long j, int i) throws IOException {
            RandomAccessFile create = RandomAccessFileMode.READ_ONLY.create((Path) this.f104205a);
            try {
                byte[] read = RandomAccessFiles.read(create, j, i);
                if (create != null) {
                    create.close();
                }
                return read;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (create != null) {
                        try {
                            create.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public File getFile() {
            return get().toFile();
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public Path getPath() {
            return get();
        }
    }

    /* loaded from: classes11.dex */
    public static class ReaderOrigin extends AbstractOrigin<Reader, ReaderOrigin> {
        public ReaderOrigin(Reader reader) {
            super(reader);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public byte[] getByteArray() throws IOException {
            return IOUtils.toByteArray((Reader) this.f104205a, Charset.defaultCharset());
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public CharSequence getCharSequence(Charset charset) throws IOException {
            return IOUtils.toString((Reader) this.f104205a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public InputStream getInputStream(OpenOption... openOptionArr) throws IOException {
            return ((ReaderInputStream.Builder) ReaderInputStream.builder().setReader((Reader) this.f104205a)).setCharset(Charset.defaultCharset()).get();
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public Reader getReader(Charset charset) throws IOException {
            return get();
        }
    }

    /* loaded from: classes11.dex */
    public static class URIOrigin extends AbstractOrigin<URI, URIOrigin> {
        public URIOrigin(URI uri) {
            super(uri);
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public File getFile() {
            return getPath().toFile();
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public Path getPath() {
            return Paths.get(get());
        }
    }

    /* loaded from: classes11.dex */
    public static class WriterOrigin extends AbstractOrigin<Writer, WriterOrigin> {
        public WriterOrigin(Writer writer) {
            super(writer);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public OutputStream getOutputStream(OpenOption... openOptionArr) throws IOException {
            return ((WriterOutputStream.Builder) WriterOutputStream.builder().setWriter((Writer) this.f104205a)).setCharset(Charset.defaultCharset()).get();
        }

        @Override // onyx.org.apache.commons.io.build.AbstractOrigin
        public Writer getWriter(Charset charset, OpenOption... openOptionArr) throws IOException {
            return get();
        }
    }

    public AbstractOrigin(T t) {
        Objects.requireNonNull(t, "origin");
        this.f104205a = t;
    }

    /* renamed from: c */
    public final String m65192c() {
        return getClass().getSimpleName();
    }

    @Override // onyx.org.apache.commons.io.function.IOSupplier
    public T get() {
        return this.f104205a;
    }

    public byte[] getByteArray() throws IOException {
        return Files.readAllBytes(getPath());
    }

    public CharSequence getCharSequence(Charset charset) throws IOException {
        return new String(getByteArray(), charset);
    }

    public File getFile() {
        throw new UnsupportedOperationException(String.format("%s#getFile() for %s origin %s", m65192c(), this.f104205a.getClass().getSimpleName(), this.f104205a));
    }

    public InputStream getInputStream(OpenOption... openOptionArr) throws IOException {
        return Files.newInputStream(getPath(), openOptionArr);
    }

    public OutputStream getOutputStream(OpenOption... openOptionArr) throws IOException {
        return Files.newOutputStream(getPath(), openOptionArr);
    }

    public Path getPath() {
        throw new UnsupportedOperationException(String.format("%s#getPath() for %s origin %s", m65192c(), this.f104205a.getClass().getSimpleName(), this.f104205a));
    }

    public Reader getReader(Charset charset) throws IOException {
        return Files.newBufferedReader(getPath(), charset);
    }

    public Writer getWriter(Charset charset, OpenOption... openOptionArr) throws IOException {
        return Files.newBufferedWriter(getPath(), charset, openOptionArr);
    }

    public long size() throws IOException {
        return Files.size(getPath());
    }

    public String toString() {
        return m65192c() + IteratorUtils.f104923a + this.f104205a.toString() + IteratorUtils.f104924b;
    }

    public byte[] getByteArray(long j, int i) throws IOException {
        int i2;
        byte[] byteArray = getByteArray();
        int intExact = Math.toIntExact(j);
        if (intExact >= 0 && i >= 0 && (i2 = intExact + i) >= 0 && i2 <= byteArray.length) {
            return Arrays.copyOfRange(byteArray, intExact, i2);
        }
        throw new IllegalArgumentException("Couldn't read array (start: " + intExact + ", length: " + i + ", data length: " + byteArray.length + ").");
    }
}
