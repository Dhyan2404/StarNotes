package com.sunia.HTREnginev2;

import androidx.annotation.VisibleForTesting;
import com.google.firebase.concurrent.PausableExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes6.dex */
public final class e0l implements PausableExecutor {

    /* renamed from: e */
    public volatile boolean f68435e;

    /* renamed from: f */
    public final Executor f68436f;

    /* renamed from: g */
    @VisibleForTesting
    public final LinkedBlockingQueue<Runnable> f68437g = new LinkedBlockingQueue<>();

    public e0l(boolean z, Executor executor) {
        this.f68435e = z;
        this.f68436f = executor;
    }

    /* renamed from: a */
    public final void m53885a() {
        if (this.f68435e) {
            return;
        }
        Runnable poll = this.f68437g.poll();
        while (poll != null) {
            this.f68436f.execute(poll);
            poll = !this.f68435e ? this.f68437g.poll() : null;
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f68437g.offer(runnable);
        m53885a();
    }

    @Override // com.google.firebase.concurrent.PausableExecutor
    public boolean isPaused() {
        return this.f68435e;
    }

    @Override // com.google.firebase.concurrent.PausableExecutor
    public void pause() {
        this.f68435e = true;
    }

    @Override // com.google.firebase.concurrent.PausableExecutor
    public void resume() {
        this.f68435e = false;
        m53885a();
    }
}
