package onyx.org.apache.commons.io.input;

import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.nio.ByteBuffer;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.Supplier;
import onyx.org.apache.commons.io.build.AbstractStreamBuilder;
import onyx.org.apache.commons.io.input.ReadAheadInputStream;

/* loaded from: classes11.dex */
public class ReadAheadInputStream extends FilterInputStream {

    /* renamed from: s */
    public static final ThreadLocal<byte[]> f104349s = ThreadLocal.withInitial(new Supplier() { // from class: com.sunia.HTREnginev2.wcl
        @Override // java.util.function.Supplier
        public final Object get() {
            byte[] m65462g0;
            m65462g0 = ReadAheadInputStream.m65462g0();
            return m65462g0;
        }
    });

    /* renamed from: t */
    public static final /* synthetic */ boolean f104350t = false;

    /* renamed from: e */
    public final ReentrantLock f104351e;

    /* renamed from: f */
    public ByteBuffer f104352f;

    /* renamed from: g */
    public ByteBuffer f104353g;

    /* renamed from: h */
    public boolean f104354h;

    /* renamed from: i */
    public boolean f104355i;

    /* renamed from: j */
    public boolean f104356j;

    /* renamed from: k */
    public Throwable f104357k;

    /* renamed from: l */
    public boolean f104358l;

    /* renamed from: m */
    public boolean f104359m;

    /* renamed from: n */
    public boolean f104360n;

    /* renamed from: o */
    public final AtomicBoolean f104361o;

    /* renamed from: p */
    public final ExecutorService f104362p;

    /* renamed from: q */
    public final boolean f104363q;

    /* renamed from: r */
    public final Condition f104364r;

    /* loaded from: classes11.dex */
    public static class Builder extends AbstractStreamBuilder<ReadAheadInputStream, Builder> {

        /* renamed from: l */
        public ExecutorService f104365l;

        public Builder setExecutorService(ExecutorService executorService) {
            this.f104365l = executorService;
            return this;
        }

        @Override // onyx.org.apache.commons.io.function.IOSupplier
        public ReadAheadInputStream get() throws IOException {
            InputStream inputStream = getInputStream();
            int bufferSize = getBufferSize();
            ExecutorService executorService = this.f104365l;
            if (executorService == null) {
                executorService = ReadAheadInputStream.m65459H();
            }
            return new ReadAheadInputStream(inputStream, bufferSize, executorService, this.f104365l == null);
        }
    }

    /* renamed from: H */
    public static /* synthetic */ ExecutorService m65459H() {
        return m65464i0();
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public /* synthetic */ void m65461f0(byte[] bArr) {
        this.f104351e.lock();
        try {
            if (this.f104358l) {
                this.f104355i = false;
                return;
            }
            this.f104360n = true;
            this.f104351e.unlock();
            int length = bArr.length;
            int i = 0;
            int i2 = 0;
            do {
                try {
                    i2 = ((FilterInputStream) this).in.read(bArr, i, length);
                    if (i2 > 0) {
                        i += i2;
                        length -= i2;
                        if (length <= 0) {
                            break;
                        }
                    } else {
                        break;
                    }
                } catch (Throwable th) {
                    try {
                        if (th instanceof Error) {
                            throw th;
                        }
                        this.f104351e.lock();
                        try {
                            this.f104353g.limit(i);
                            if (i2 >= 0 && !(th instanceof EOFException)) {
                                this.f104356j = true;
                                this.f104357k = th;
                                this.f104355i = false;
                                m65471k0();
                            }
                            this.f104354h = true;
                            this.f104355i = false;
                            m65471k0();
                        } finally {
                        }
                    } catch (Throwable th2) {
                        this.f104351e.lock();
                        try {
                            this.f104353g.limit(i);
                            if (i2 < 0 || (th instanceof EOFException)) {
                                this.f104354h = true;
                            } else {
                                this.f104356j = true;
                                this.f104357k = th;
                            }
                            this.f104355i = false;
                            m65471k0();
                            this.f104351e.unlock();
                            m65468M();
                            throw th2;
                        } finally {
                        }
                    }
                }
            } while (!this.f104361o.get());
            this.f104351e.lock();
            try {
                this.f104353g.limit(i);
                if (i2 < 0) {
                    this.f104354h = true;
                }
                this.f104355i = false;
                m65471k0();
                this.f104351e.unlock();
                m65468M();
            } finally {
            }
        } finally {
        }
    }

    /* renamed from: g0 */
    public static /* synthetic */ byte[] m65462g0() {
        return new byte[1];
    }

    /* renamed from: h0 */
    public static Thread m65463h0(Runnable runnable) {
        Thread thread = new Thread(runnable, "commons-io-read-ahead");
        thread.setDaemon(true);
        return thread;
    }

    /* renamed from: i0 */
    public static ExecutorService m65464i0() {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.sunia.HTREnginev2.ycl
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread m65463h0;
                m65463h0 = ReadAheadInputStream.m65463h0(runnable);
                return m65463h0;
            }
        });
    }

    /* renamed from: I */
    public final void m65467I() throws IOException {
        if (this.f104356j) {
            Throwable th = this.f104357k;
            if (!(th instanceof IOException)) {
                throw new IOException(this.f104357k);
            }
            throw ((IOException) th);
        }
    }

    /* renamed from: M */
    public final void m65468M() {
        this.f104351e.lock();
        boolean z = false;
        try {
            this.f104360n = false;
            if (this.f104358l) {
                if (!this.f104359m) {
                    z = true;
                }
            }
            if (z) {
                try {
                    super.close();
                } catch (IOException unused) {
                }
            }
        } finally {
            this.f104351e.unlock();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        this.f104351e.lock();
        try {
            int min = (int) Math.min(2147483647L, this.f104352f.remaining() + this.f104353g.remaining());
            return min;
        } finally {
            this.f104351e.unlock();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f104351e.lock();
        try {
            if (this.f104358l) {
                return;
            }
            boolean z = true;
            this.f104358l = true;
            if (this.f104360n) {
                z = false;
            } else {
                this.f104359m = true;
            }
            this.f104351e.unlock();
            if (this.f104363q) {
                try {
                    try {
                        this.f104362p.shutdownNow();
                        this.f104362p.awaitTermination(Long.MAX_VALUE, TimeUnit.SECONDS);
                    } catch (InterruptedException e) {
                        InterruptedIOException interruptedIOException = new InterruptedIOException(e.getMessage());
                        interruptedIOException.initCause(e);
                        throw interruptedIOException;
                    }
                } finally {
                    if (z) {
                        super.close();
                    }
                }
            }
        } finally {
            this.f104351e.unlock();
        }
    }

    /* renamed from: e0 */
    public final boolean m65469e0() {
        return (this.f104352f.hasRemaining() || this.f104353g.hasRemaining() || !this.f104354h) ? false : true;
    }

    /* renamed from: j0 */
    public final void m65470j0() throws IOException {
        this.f104351e.lock();
        try {
            final byte[] array = this.f104353g.array();
            if (!this.f104354h && !this.f104355i) {
                m65467I();
                this.f104353g.position(0);
                this.f104353g.flip();
                this.f104355i = true;
                this.f104351e.unlock();
                this.f104362p.execute(new Runnable() { // from class: com.sunia.HTREnginev2.adl
                    @Override // java.lang.Runnable
                    public final void run() {
                        ReadAheadInputStream.this.m65461f0(array);
                    }
                });
            }
        } finally {
            this.f104351e.unlock();
        }
    }

    /* renamed from: k0 */
    public final void m65471k0() {
        this.f104351e.lock();
        try {
            this.f104364r.signalAll();
        } finally {
            this.f104351e.unlock();
        }
    }

    /* renamed from: l0 */
    public final long m65472l0(long j) throws IOException {
        m65474n0();
        if (m65469e0()) {
            return 0L;
        }
        if (available() >= j) {
            int remaining = ((int) j) - this.f104352f.remaining();
            this.f104352f.position(0);
            this.f104352f.flip();
            ByteBuffer byteBuffer = this.f104353g;
            byteBuffer.position(remaining + byteBuffer.position());
            m65473m0();
            m65470j0();
            return j;
        }
        long available = available();
        this.f104352f.position(0);
        this.f104352f.flip();
        this.f104353g.position(0);
        this.f104353g.flip();
        long skip = ((FilterInputStream) this).in.skip(j - available);
        m65470j0();
        return available + skip;
    }

    /* renamed from: m0 */
    public final void m65473m0() {
        ByteBuffer byteBuffer = this.f104352f;
        this.f104352f = this.f104353g;
        this.f104353g = byteBuffer;
    }

    /* renamed from: n0 */
    public final void m65474n0() throws IOException {
        this.f104351e.lock();
        try {
            try {
                this.f104361o.set(true);
                while (this.f104355i) {
                    this.f104364r.await();
                }
                try {
                    this.f104361o.set(false);
                    this.f104351e.unlock();
                    m65467I();
                } finally {
                }
            } catch (InterruptedException e) {
                InterruptedIOException interruptedIOException = new InterruptedIOException(e.getMessage());
                interruptedIOException.initCause(e);
                throw interruptedIOException;
            }
        } catch (Throwable th) {
            try {
                this.f104361o.set(false);
                throw th;
            } finally {
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.f104352f.hasRemaining()) {
            return this.f104352f.get() & 255;
        }
        byte[] bArr = f104349s.get();
        bArr[0] = 0;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        if (j <= 0) {
            return 0L;
        }
        if (j <= this.f104352f.remaining()) {
            ByteBuffer byteBuffer = this.f104352f;
            byteBuffer.position(((int) j) + byteBuffer.position());
            return j;
        }
        this.f104351e.lock();
        try {
            return m65472l0(j);
        } finally {
            this.f104351e.unlock();
        }
    }

    @Deprecated
    public ReadAheadInputStream(InputStream inputStream, int i) {
        this(inputStream, i, m65464i0(), true);
    }

    @Deprecated
    public ReadAheadInputStream(InputStream inputStream, int i, ExecutorService executorService) {
        this(inputStream, i, executorService, false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadAheadInputStream(InputStream inputStream, int i, ExecutorService executorService, boolean z) {
        super(inputStream);
        Objects.requireNonNull(inputStream, "inputStream");
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f104351e = reentrantLock;
        this.f104361o = new AtomicBoolean();
        this.f104364r = reentrantLock.newCondition();
        if (i > 0) {
            Objects.requireNonNull(executorService, "executorService");
            this.f104362p = executorService;
            this.f104363q = z;
            this.f104352f = ByteBuffer.allocate(i);
            this.f104353g = ByteBuffer.allocate(i);
            this.f104352f.flip();
            this.f104353g.flip();
            return;
        }
        throw new IllegalArgumentException("bufferSizeInBytes should be greater than 0, but the value is " + i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        if (!this.f104352f.hasRemaining()) {
            this.f104351e.lock();
            try {
                m65474n0();
                if (!this.f104353g.hasRemaining()) {
                    m65470j0();
                    m65474n0();
                    if (m65469e0()) {
                        this.f104351e.unlock();
                        return -1;
                    }
                }
                m65473m0();
                m65470j0();
            } finally {
                this.f104351e.unlock();
            }
        }
        int min = Math.min(i2, this.f104352f.remaining());
        this.f104352f.get(bArr, i, min);
        return min;
    }
}
