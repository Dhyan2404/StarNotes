package onyx.org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.time.Duration;
import java.time.temporal.ChronoUnit;
import java.util.concurrent.TimeUnit;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;

/* loaded from: classes11.dex */
public final class ThrottledInputStream extends CountingInputStream {

    /* renamed from: i */
    public static final /* synthetic */ boolean f104420i = false;

    /* renamed from: f */
    public final long f104421f;

    /* renamed from: g */
    public final long f104422g;

    /* renamed from: h */
    public Duration f104423h;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<ThrottledInputStream, Builder> {

        /* renamed from: l */
        public long f104424l = Long.MAX_VALUE;

        public void setMaxBytesPerSecond(long j) {
            this.f104424l = j;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public ThrottledInputStream get() throws IOException {
            return new ThrottledInputStream(getInputStream(), this.f104424l);
        }
    }

    /* renamed from: I */
    public static long m65503I(long j, long j2, long j3) {
        if (j <= 0 || j2 <= 0 || j3 == 0) {
            return 0L;
        }
        long j4 = (long) (((j / j2) * 1000.0d) - j3);
        if (j4 <= 0) {
            return 0L;
        }
        return j4;
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: H */
    public final void m65504H() throws InterruptedIOException {
        long m65506j = m65506j();
        if (m65506j > 0) {
            this.f104423h = this.f104423h.plus(m65506j, ChronoUnit.MILLIS);
            try {
                TimeUnit.MILLISECONDS.sleep(m65506j);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException("Thread aborted");
            }
        }
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream
    public void beforeRead(int i) throws IOException {
        m65504H();
    }

    /* renamed from: f */
    public final long m65505f() {
        long currentTimeMillis = (System.currentTimeMillis() - this.f104422g) / 1000;
        return currentTimeMillis == 0 ? getByteCount() : getByteCount() / currentTimeMillis;
    }

    /* renamed from: j */
    public final long m65506j() {
        return m65503I(getByteCount(), this.f104421f, System.currentTimeMillis() - this.f104422g);
    }

    public String toString() {
        return "ThrottledInputStream[bytesRead=" + getByteCount() + ", maxBytesPerSec=" + this.f104421f + ", bytesPerSec=" + m65505f() + ", totalSleepDuration=" + this.f104423h + ']';
    }

    /* renamed from: w */
    public Duration m65507w() {
        return this.f104423h;
    }

    public ThrottledInputStream(InputStream inputStream, long j) {
        super(inputStream);
        this.f104422g = System.currentTimeMillis();
        this.f104423h = Duration.ZERO;
        this.f104421f = j;
    }
}
