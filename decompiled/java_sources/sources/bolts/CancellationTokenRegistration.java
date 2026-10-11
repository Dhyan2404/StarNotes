package bolts;

import java.io.Closeable;

/* loaded from: classes3.dex */
public class CancellationTokenRegistration implements Closeable {

    /* renamed from: e */
    public final Object f12068e = new Object();

    /* renamed from: f */
    public CancellationTokenSource f12069f;

    /* renamed from: g */
    public Runnable f12070g;

    /* renamed from: h */
    public boolean f12071h;

    public CancellationTokenRegistration(CancellationTokenSource cancellationTokenSource, Runnable runnable) {
        this.f12069f = cancellationTokenSource;
        this.f12070g = runnable;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f12068e) {
            if (this.f12071h) {
                return;
            }
            this.f12071h = true;
            this.f12069f.m7210g0(this);
            this.f12069f = null;
            this.f12070g = null;
        }
    }

    /* renamed from: f */
    public void m7201f() {
        synchronized (this.f12068e) {
            m7202j();
            this.f12070g.run();
            close();
        }
    }

    /* renamed from: j */
    public final void m7202j() {
        if (this.f12071h) {
            throw new IllegalStateException("Object already closed");
        }
    }
}
