package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Objects;
import onyx.org.apache.commons.io.RandomAccessFileMode;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;

/* loaded from: classes11.dex */
public class RandomAccessFileInputStream extends InputStream {

    /* renamed from: e */
    public final boolean f104345e;

    /* renamed from: f */
    public final RandomAccessFile f104346f;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<RandomAccessFileInputStream, Builder> {

        /* renamed from: l */
        public RandomAccessFile f104347l;

        /* renamed from: m */
        public boolean f104348m;

        public Builder setCloseOnClose(boolean z) {
            this.f104348m = z;
            return this;
        }

        public Builder setRandomAccessFile(RandomAccessFile randomAccessFile) {
            this.f104347l = randomAccessFile;
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public RandomAccessFileInputStream get() throws IOException {
            if (this.f104347l != null) {
                if (getOrigin() == null) {
                    return new RandomAccessFileInputStream(this.f104347l, this.f104348m);
                }
                throw new IllegalStateException(String.format("Only set one of RandomAccessFile (%s) or origin (%s)", this.f104347l, getOrigin()));
            }
            return new RandomAccessFileInputStream(RandomAccessFileMode.READ_ONLY.create(checkOrigin().getFile()), this.f104348m);
        }
    }

    @Deprecated
    public RandomAccessFileInputStream(RandomAccessFile randomAccessFile) {
        this(randomAccessFile, false);
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        long availableLong = availableLong();
        if (availableLong > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) availableLong;
    }

    public long availableLong() throws IOException {
        return this.f104346f.length() - this.f104346f.getFilePointer();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this.f104345e) {
            this.f104346f.close();
        }
    }

    public RandomAccessFile getRandomAccessFile() {
        return this.f104346f;
    }

    public boolean isCloseOnClose() {
        return this.f104345e;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.f104346f.read();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (j <= 0) {
            return 0L;
        }
        long filePointer = this.f104346f.getFilePointer();
        long length = this.f104346f.length();
        if (filePointer >= length) {
            return 0L;
        }
        long j2 = j + filePointer;
        if (j2 > length) {
            j2 = length - 1;
        }
        if (j2 > 0) {
            this.f104346f.seek(j2);
        }
        return this.f104346f.getFilePointer() - filePointer;
    }

    @Deprecated
    public RandomAccessFileInputStream(RandomAccessFile randomAccessFile, boolean z) {
        Objects.requireNonNull(randomAccessFile, "file");
        this.f104346f = randomAccessFile;
        this.f104345e = z;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.f104346f.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.f104346f.read(bArr, i, i2);
    }
}
