package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public class RequestFutureTarget<R> implements FutureTarget<R>, RequestListener<R> {

    /* renamed from: o */
    public static final C2025a f15315o = new C2025a();

    /* renamed from: e */
    public final int f15316e;

    /* renamed from: f */
    public final int f15317f;

    /* renamed from: g */
    public final boolean f15318g;

    /* renamed from: h */
    public final C2025a f15319h;

    /* renamed from: i */
    @Nullable
    @GuardedBy("this")
    public R f15320i;

    /* renamed from: j */
    @Nullable
    @GuardedBy("this")
    public Request f15321j;

    /* renamed from: k */
    @GuardedBy("this")
    public boolean f15322k;

    /* renamed from: l */
    @GuardedBy("this")
    public boolean f15323l;

    /* renamed from: m */
    @GuardedBy("this")
    public boolean f15324m;

    /* renamed from: n */
    @Nullable
    @GuardedBy("this")
    public GlideException f15325n;

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.request.RequestFutureTarget$a */
    /* loaded from: classes3.dex */
    public static class C2025a {
        /* renamed from: a */
        public void m9103a(Object obj) {
            obj.notifyAll();
        }

        /* renamed from: b */
        public void m9104b(Object obj, long j) throws InterruptedException {
            obj.wait(j);
        }
    }

    public RequestFutureTarget(int i, int i2) {
        this(i, i2, true, f15315o);
    }

    /* renamed from: a */
    public final synchronized R m9102a(Long l) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.f15318g && !isDone()) {
            Util.assertBackgroundThread();
        }
        if (this.f15322k) {
            throw new CancellationException();
        }
        if (this.f15324m) {
            throw new ExecutionException(this.f15325n);
        }
        if (this.f15323l) {
            return this.f15320i;
        }
        if (l == null) {
            this.f15319h.m9104b(this, 0L);
        } else if (l.longValue() > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            long longValue = l.longValue() + currentTimeMillis;
            while (!isDone() && currentTimeMillis < longValue) {
                this.f15319h.m9104b(this, longValue - currentTimeMillis);
                currentTimeMillis = System.currentTimeMillis();
            }
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        if (this.f15324m) {
            throw new ExecutionException(this.f15325n);
        }
        if (this.f15322k) {
            throw new CancellationException();
        }
        if (!this.f15323l) {
            throw new TimeoutException();
        }
        return this.f15320i;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (isDone()) {
                return false;
            }
            this.f15322k = true;
            this.f15319h.m9103a(this);
            Request request = null;
            if (z) {
                Request request2 = this.f15321j;
                this.f15321j = null;
                request = request2;
            }
            if (request != null) {
                request.clear();
            }
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public R get() throws InterruptedException, ExecutionException {
        try {
            return m9102a(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    @Nullable
    public synchronized Request getRequest() {
        return this.f15321j;
    }

    @Override // com.bumptech.glide.request.target.Target
    public void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        sizeReadyCallback.onSizeReady(this.f15316e, this.f15317f);
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isCancelled() {
        return this.f15322k;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isDone() {
        boolean z;
        if (!this.f15322k && !this.f15323l) {
            z = this.f15324m;
        }
        return z;
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void onLoadFailed(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadStarted(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void onResourceReady(@NonNull R r, @Nullable Transition<? super R> transition) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void setRequest(@Nullable Request request) {
        this.f15321j = request;
    }

    public RequestFutureTarget(int i, int i2, boolean z, C2025a c2025a) {
        this.f15316e = i;
        this.f15317f = i2;
        this.f15318g = z;
        this.f15319h = c2025a;
    }

    @Override // com.bumptech.glide.request.RequestListener
    public synchronized boolean onLoadFailed(@Nullable GlideException glideException, Object obj, Target<R> target, boolean z) {
        this.f15324m = true;
        this.f15325n = glideException;
        this.f15319h.m9103a(this);
        return false;
    }

    @Override // com.bumptech.glide.request.RequestListener
    public synchronized boolean onResourceReady(R r, Object obj, Target<R> target, DataSource dataSource, boolean z) {
        this.f15323l = true;
        this.f15320i = r;
        this.f15319h.m9103a(this);
        return false;
    }

    @Override // java.util.concurrent.Future
    public R get(long j, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return m9102a(Long.valueOf(timeUnit.toMillis(j)));
    }
}
