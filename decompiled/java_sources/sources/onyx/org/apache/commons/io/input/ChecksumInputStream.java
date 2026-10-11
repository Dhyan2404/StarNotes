package onyx.org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;

/* loaded from: classes11.dex */
public final class ChecksumInputStream extends CountingInputStream {

    /* renamed from: f */
    public final long f104300f;

    /* renamed from: g */
    public final long f104301g;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<ChecksumInputStream, Builder> {

        /* renamed from: l */
        public Checksum f104302l;

        /* renamed from: m */
        public long f104303m = -1;

        /* renamed from: n */
        public long f104304n;

        public Builder setChecksum(Checksum checksum) {
            this.f104302l = checksum;
            return this;
        }

        public Builder setCountThreshold(long j) {
            this.f104303m = j;
            return this;
        }

        public Builder setExpectedChecksumValue(long j) {
            this.f104304n = j;
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public ChecksumInputStream get() throws IOException {
            return new ChecksumInputStream(getInputStream(), this.f104302l, this.f104304n, this.f104303m);
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // onyx.org.apache.commons.io.input.CountingInputStream, onyx.org.apache.commons.io.input.ProxyInputStream
    public synchronized void afterRead(int i) throws IOException {
        super.afterRead(i);
        if (((this.f104301g > 0 && getByteCount() >= this.f104301g) || i == -1) && this.f104300f != m65439f().getValue()) {
            throw new IOException("Checksum verification failed.");
        }
    }

    /* renamed from: f */
    public final Checksum m65439f() {
        return ((CheckedInputStream) ((FilterInputStream) this).in).getChecksum();
    }

    public long getRemaining() {
        return this.f104301g - getByteCount();
    }

    public ChecksumInputStream(InputStream inputStream, Checksum checksum, long j, long j2) {
        super(new CheckedInputStream(inputStream, checksum));
        this.f104301g = j2;
        this.f104300f = j;
    }
}
