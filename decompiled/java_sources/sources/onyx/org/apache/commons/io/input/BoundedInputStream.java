package onyx.org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;

/* loaded from: classes11.dex */
public class BoundedInputStream extends ProxyInputStream {

    /* renamed from: e */
    public long f104276e;

    /* renamed from: f */
    public long f104277f;

    /* renamed from: g */
    public final long f104278g;

    /* renamed from: h */
    public boolean f104279h;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractC18640a<Builder> {
        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public BoundedInputStream get() throws IOException {
            return new BoundedInputStream(getInputStream(), m65404g(), m65405h(), m65406i());
        }
    }

    /* renamed from: onyx.org.apache.commons.io.input.BoundedInputStream$a */
    /* loaded from: classes11.dex */
    public static abstract class AbstractC18640a<T extends AbstractC18640a<T>> extends AbstractStreamBuilder<BoundedInputStream, T> {

        /* renamed from: l */
        public long f104280l;

        /* renamed from: m */
        public long f104281m = -1;

        /* renamed from: n */
        public boolean f104282n = true;

        /* renamed from: g */
        public long m65404g() {
            return this.f104280l;
        }

        /* renamed from: h */
        public long m65405h() {
            return this.f104281m;
        }

        /* renamed from: i */
        public boolean m65406i() {
            return this.f104282n;
        }

        public T setCount(long j) {
            this.f104280l = Math.max(0L, j);
            return (T) asThis();
        }

        public T setMaxCount(long j) {
            this.f104281m = Math.max(-1L, j);
            return (T) asThis();
        }

        public T setPropagateClose(boolean z) {
            this.f104282n = z;
            return (T) asThis();
        }
    }

    @Deprecated
    public BoundedInputStream(InputStream inputStream) {
        this(inputStream, -1L);
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream
    public synchronized void afterRead(int i) throws IOException {
        if (i != -1) {
            this.f104276e += i;
        }
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        if (!m65402f()) {
            return ((FilterInputStream) this).in.available();
        }
        onMaxLength(this.f104278g, getCount());
        return 0;
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f104279h) {
            ((FilterInputStream) this).in.close();
        }
    }

    /* renamed from: f */
    public final boolean m65402f() {
        return this.f104278g >= 0 && getCount() >= this.f104278g;
    }

    public synchronized long getCount() {
        return this.f104276e;
    }

    public long getMaxCount() {
        return this.f104278g;
    }

    @Deprecated
    public long getMaxLength() {
        return this.f104278g;
    }

    public long getRemaining() {
        return Math.max(0L, getMaxCount() - getCount());
    }

    public boolean isPropagateClose() {
        return this.f104279h;
    }

    /* renamed from: j */
    public final long m65403j(long j) {
        long j2 = this.f104278g;
        return j2 >= 0 ? Math.min(j, j2 - getCount()) : j;
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        ((FilterInputStream) this).in.mark(i);
        this.f104277f = this.f104276e;
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return ((FilterInputStream) this).in.markSupported();
    }

    public void onMaxLength(long j, long j2) throws IOException {
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (m65402f()) {
            onMaxLength(this.f104278g, getCount());
            return -1;
        }
        return super.read();
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        ((FilterInputStream) this).in.reset();
        this.f104276e = this.f104277f;
    }

    @Deprecated
    public void setPropagateClose(boolean z) {
        this.f104279h = z;
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) throws IOException {
        long skip;
        skip = super.skip(m65403j(j));
        this.f104276e += skip;
        return skip;
    }

    public String toString() {
        return ((FilterInputStream) this).in.toString();
    }

    @Deprecated
    public BoundedInputStream(InputStream inputStream, long j) {
        this(inputStream, 0L, j, true);
    }

    public BoundedInputStream(InputStream inputStream, long j, long j2, boolean z) {
        super(inputStream);
        this.f104276e = j;
        this.f104278g = j2;
        this.f104279h = z;
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // onyx.org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (m65402f()) {
            onMaxLength(this.f104278g, getCount());
            return -1;
        }
        return super.read(bArr, i, (int) m65403j(i2));
    }
}
