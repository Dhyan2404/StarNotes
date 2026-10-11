package com.bumptech.glide.load.engine;

import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.C1958e;
import com.bumptech.glide.util.Preconditions;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* renamed from: com.bumptech.glide.load.engine.a */
/* loaded from: classes3.dex */
public final class C1936a {

    /* renamed from: a */
    public final boolean f14616a;

    /* renamed from: b */
    public final Executor f14617b;

    /* renamed from: c */
    @VisibleForTesting
    public final Map<Key, d> f14618c;

    /* renamed from: d */
    public final ReferenceQueue<C1958e<?>> f14619d;

    /* renamed from: e */
    public C1958e.a f14620e;

    /* renamed from: f */
    public volatile boolean f14621f;

    /* renamed from: g */
    @Nullable
    public volatile c f14622g;

    /* renamed from: com.bumptech.glide.load.engine.a$a */
    /* loaded from: classes3.dex */
    public class a implements ThreadFactory {

        /* renamed from: com.bumptech.glide.load.engine.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class RunnableC20572a implements Runnable {

            /* renamed from: e */
            public final /* synthetic */ Runnable f14623e;

            public RunnableC20572a(Runnable runnable) {
                this.f14623e = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                this.f14623e.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(new RunnableC20572a(runnable), "glide-active-resources");
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.a$b */
    /* loaded from: classes3.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1936a.this.m8744b();
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.a$c */
    /* loaded from: classes3.dex */
    public interface c {
        /* renamed from: a */
        void m8751a();
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.a$d */
    /* loaded from: classes3.dex */
    public static final class d extends WeakReference<C1958e<?>> {

        /* renamed from: a */
        public final Key f14626a;

        /* renamed from: b */
        public final boolean f14627b;

        /* renamed from: c */
        @Nullable
        public Resource<?> f14628c;

        public d(@NonNull Key key, @NonNull C1958e<?> c1958e, @NonNull ReferenceQueue<? super C1958e<?>> referenceQueue, boolean z) {
            super(c1958e, referenceQueue);
            this.f14626a = (Key) Preconditions.checkNotNull(key);
            this.f14628c = (c1958e.m8858c() && z) ? (Resource) Preconditions.checkNotNull(c1958e.m8857b()) : null;
            this.f14627b = c1958e.m8858c();
        }

        /* renamed from: a */
        public void m8752a() {
            this.f14628c = null;
            clear();
        }
    }

    public C1936a(boolean z) {
        this(z, Executors.newSingleThreadExecutor(new a()));
    }

    /* renamed from: a */
    public synchronized void m8743a(Key key, C1958e<?> c1958e) {
        d put = this.f14618c.put(key, new d(key, c1958e, this.f14619d, this.f14616a));
        if (put != null) {
            put.m8752a();
        }
    }

    /* renamed from: b */
    public void m8744b() {
        while (!this.f14621f) {
            try {
                m8745c((d) this.f14619d.remove());
                c cVar = this.f14622g;
                if (cVar != null) {
                    cVar.m8751a();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: c */
    public void m8745c(@NonNull d dVar) {
        Resource<?> resource;
        synchronized (this) {
            this.f14618c.remove(dVar.f14626a);
            if (dVar.f14627b && (resource = dVar.f14628c) != null) {
                this.f14620e.onResourceReleased(dVar.f14626a, new C1958e<>(resource, true, false, dVar.f14626a, this.f14620e));
            }
        }
    }

    /* renamed from: d */
    public synchronized void m8746d(Key key) {
        d remove = this.f14618c.remove(key);
        if (remove != null) {
            remove.m8752a();
        }
    }

    @Nullable
    /* renamed from: e */
    public synchronized C1958e<?> m8747e(Key key) {
        d dVar = this.f14618c.get(key);
        if (dVar == null) {
            return null;
        }
        C1958e<?> c1958e = dVar.get();
        if (c1958e == null) {
            m8745c(dVar);
        }
        return c1958e;
    }

    @VisibleForTesting
    /* renamed from: f */
    public void m8748f(c cVar) {
        this.f14622g = cVar;
    }

    /* renamed from: g */
    public void m8749g(C1958e.a aVar) {
        synchronized (aVar) {
            synchronized (this) {
                this.f14620e = aVar;
            }
        }
    }

    @VisibleForTesting
    /* renamed from: h */
    public void m8750h() {
        this.f14621f = true;
        Executor executor = this.f14617b;
        if (executor instanceof ExecutorService) {
            com.bumptech.glide.util.Executors.shutdownAndAwaitTermination((ExecutorService) executor);
        }
    }

    @VisibleForTesting
    public C1936a(boolean z, Executor executor) {
        this.f14618c = new HashMap();
        this.f14619d = new ReferenceQueue<>();
        this.f14616a = z;
        this.f14617b = executor;
        executor.execute(new b());
    }
}
