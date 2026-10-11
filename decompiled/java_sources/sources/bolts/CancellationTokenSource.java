package bolts;

import com.sunia.HTREnginev2.C13585ct;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class CancellationTokenSource implements Closeable {

    /* renamed from: e */
    public final Object f12072e = new Object();

    /* renamed from: f */
    public final List<CancellationTokenRegistration> f12073f = new ArrayList();

    /* renamed from: g */
    public final ScheduledExecutorService f12074g = C13585ct.m53508d();

    /* renamed from: h */
    public ScheduledFuture<?> f12075h;

    /* renamed from: i */
    public boolean f12076i;

    /* renamed from: j */
    public boolean f12077j;

    /* renamed from: bolts.CancellationTokenSource$a */
    /* loaded from: classes3.dex */
    public class RunnableC1694a implements Runnable {
        public RunnableC1694a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (CancellationTokenSource.this.f12072e) {
                CancellationTokenSource.this.f12075h = null;
            }
            CancellationTokenSource.this.cancel();
        }
    }

    /* renamed from: H */
    public final void m7205H() {
        ScheduledFuture<?> scheduledFuture = this.f12075h;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f12075h = null;
        }
    }

    /* renamed from: I */
    public final void m7206I(List<CancellationTokenRegistration> list) {
        Iterator<CancellationTokenRegistration> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().m7201f();
        }
    }

    /* renamed from: M */
    public CancellationTokenRegistration m7207M(Runnable runnable) {
        CancellationTokenRegistration cancellationTokenRegistration;
        synchronized (this.f12072e) {
            m7209f0();
            cancellationTokenRegistration = new CancellationTokenRegistration(this, runnable);
            if (this.f12076i) {
                cancellationTokenRegistration.m7201f();
            } else {
                this.f12073f.add(cancellationTokenRegistration);
            }
        }
        return cancellationTokenRegistration;
    }

    public void cancel() {
        synchronized (this.f12072e) {
            m7209f0();
            if (this.f12076i) {
                return;
            }
            m7205H();
            this.f12076i = true;
            m7206I(new ArrayList(this.f12073f));
        }
    }

    public void cancelAfter(long j) {
        m7211w(j, TimeUnit.MILLISECONDS);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f12072e) {
            if (this.f12077j) {
                return;
            }
            m7205H();
            Iterator<CancellationTokenRegistration> it2 = this.f12073f.iterator();
            while (it2.hasNext()) {
                it2.next().close();
            }
            this.f12073f.clear();
            this.f12077j = true;
        }
    }

    /* renamed from: e0 */
    public void m7208e0() throws CancellationException {
        synchronized (this.f12072e) {
            m7209f0();
            if (this.f12076i) {
                throw new CancellationException();
            }
        }
    }

    /* renamed from: f0 */
    public final void m7209f0() {
        if (this.f12077j) {
            throw new IllegalStateException("Object already closed");
        }
    }

    /* renamed from: g0 */
    public void m7210g0(CancellationTokenRegistration cancellationTokenRegistration) {
        synchronized (this.f12072e) {
            m7209f0();
            this.f12073f.remove(cancellationTokenRegistration);
        }
    }

    public CancellationToken getToken() {
        CancellationToken cancellationToken;
        synchronized (this.f12072e) {
            m7209f0();
            cancellationToken = new CancellationToken(this);
        }
        return cancellationToken;
    }

    public boolean isCancellationRequested() {
        boolean z;
        synchronized (this.f12072e) {
            m7209f0();
            z = this.f12076i;
        }
        return z;
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(isCancellationRequested()));
    }

    /* renamed from: w */
    public final void m7211w(long j, TimeUnit timeUnit) {
        if (j < -1) {
            throw new IllegalArgumentException("Delay must be >= -1");
        }
        if (j == 0) {
            cancel();
            return;
        }
        synchronized (this.f12072e) {
            if (this.f12076i) {
                return;
            }
            m7205H();
            if (j != -1) {
                this.f12075h = this.f12074g.schedule(new RunnableC1694a(), j, timeUnit);
            }
        }
    }
}
