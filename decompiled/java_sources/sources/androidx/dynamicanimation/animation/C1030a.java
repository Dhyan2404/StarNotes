package androidx.dynamicanimation.animation;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Choreographer;
import androidx.annotation.RequiresApi;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;

/* renamed from: androidx.dynamicanimation.animation.a */
/* loaded from: classes3.dex */
public class C1030a {

    /* renamed from: g */
    public static final long f6906g = 10;

    /* renamed from: h */
    public static final ThreadLocal<C1030a> f6907h = new ThreadLocal<>();

    /* renamed from: d */
    public c f6911d;

    /* renamed from: a */
    public final SimpleArrayMap<b, Long> f6908a = new SimpleArrayMap<>();

    /* renamed from: b */
    public final ArrayList<b> f6909b = new ArrayList<>();

    /* renamed from: c */
    public final a f6910c = new a();

    /* renamed from: e */
    public long f6912e = 0;

    /* renamed from: f */
    public boolean f6913f = false;

    /* renamed from: androidx.dynamicanimation.animation.a$a */
    /* loaded from: classes3.dex */
    public class a {
        public a() {
        }

        /* renamed from: a */
        public void m4208a() {
            C1030a.this.f6912e = SystemClock.uptimeMillis();
            C1030a c1030a = C1030a.this;
            c1030a.m4203c(c1030a.f6912e);
            if (C1030a.this.f6909b.size() > 0) {
                C1030a.this.m4204f().mo4209a();
            }
        }
    }

    /* renamed from: androidx.dynamicanimation.animation.a$b */
    /* loaded from: classes3.dex */
    public interface b {
        boolean doAnimationFrame(long j);
    }

    /* renamed from: androidx.dynamicanimation.animation.a$c */
    /* loaded from: classes3.dex */
    public static abstract class c {

        /* renamed from: a */
        public final a f6915a;

        public c(a aVar) {
            this.f6915a = aVar;
        }

        /* renamed from: a */
        public abstract void mo4209a();
    }

    /* renamed from: androidx.dynamicanimation.animation.a$d */
    /* loaded from: classes3.dex */
    public static class d extends c {

        /* renamed from: b */
        public final Runnable f6916b;

        /* renamed from: c */
        public final Handler f6917c;

        /* renamed from: d */
        public long f6918d;

        /* renamed from: androidx.dynamicanimation.animation.a$d$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.f6918d = SystemClock.uptimeMillis();
                d.this.f6915a.m4208a();
            }
        }

        public d(a aVar) {
            super(aVar);
            this.f6918d = -1L;
            this.f6916b = new a();
            this.f6917c = new Handler(Looper.myLooper());
        }

        @Override // androidx.dynamicanimation.animation.C1030a.c
        /* renamed from: a */
        public void mo4209a() {
            this.f6917c.postDelayed(this.f6916b, Math.max(10 - (SystemClock.uptimeMillis() - this.f6918d), 0L));
        }
    }

    @RequiresApi(16)
    /* renamed from: androidx.dynamicanimation.animation.a$e */
    /* loaded from: classes3.dex */
    public static class e extends c {

        /* renamed from: b */
        public final Choreographer f6920b;

        /* renamed from: c */
        public final Choreographer.FrameCallback f6921c;

        /* renamed from: androidx.dynamicanimation.animation.a$e$a */
        /* loaded from: classes3.dex */
        public class a implements Choreographer.FrameCallback {
            public a() {
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j) {
                e.this.f6915a.m4208a();
            }
        }

        public e(a aVar) {
            super(aVar);
            this.f6920b = Choreographer.getInstance();
            this.f6921c = new a();
        }

        @Override // androidx.dynamicanimation.animation.C1030a.c
        /* renamed from: a */
        public void mo4209a() {
            this.f6920b.postFrameCallback(this.f6921c);
        }
    }

    /* renamed from: d */
    public static long m4199d() {
        ThreadLocal<C1030a> threadLocal = f6907h;
        if (threadLocal.get() == null) {
            return 0L;
        }
        return threadLocal.get().f6912e;
    }

    /* renamed from: e */
    public static C1030a m4200e() {
        ThreadLocal<C1030a> threadLocal = f6907h;
        if (threadLocal.get() == null) {
            threadLocal.set(new C1030a());
        }
        return threadLocal.get();
    }

    /* renamed from: a */
    public void m4201a(b bVar, long j) {
        if (this.f6909b.size() == 0) {
            m4204f().mo4209a();
        }
        if (!this.f6909b.contains(bVar)) {
            this.f6909b.add(bVar);
        }
        if (j > 0) {
            this.f6908a.put(bVar, Long.valueOf(SystemClock.uptimeMillis() + j));
        }
    }

    /* renamed from: b */
    public final void m4202b() {
        if (this.f6913f) {
            for (int size = this.f6909b.size() - 1; size >= 0; size--) {
                if (this.f6909b.get(size) == null) {
                    this.f6909b.remove(size);
                }
            }
            this.f6913f = false;
        }
    }

    /* renamed from: c */
    public void m4203c(long j) {
        long uptimeMillis = SystemClock.uptimeMillis();
        for (int i = 0; i < this.f6909b.size(); i++) {
            b bVar = this.f6909b.get(i);
            if (bVar != null && m4205g(bVar, uptimeMillis)) {
                bVar.doAnimationFrame(j);
            }
        }
        m4202b();
    }

    /* renamed from: f */
    public c m4204f() {
        if (this.f6911d == null) {
            this.f6911d = new e(this.f6910c);
        }
        return this.f6911d;
    }

    /* renamed from: g */
    public final boolean m4205g(b bVar, long j) {
        Long l = this.f6908a.get(bVar);
        if (l == null) {
            return true;
        }
        if (l.longValue() >= j) {
            return false;
        }
        this.f6908a.remove(bVar);
        return true;
    }

    /* renamed from: h */
    public void m4206h(b bVar) {
        this.f6908a.remove(bVar);
        int indexOf = this.f6909b.indexOf(bVar);
        if (indexOf >= 0) {
            this.f6909b.set(indexOf, null);
            this.f6913f = true;
        }
    }

    /* renamed from: i */
    public void m4207i(c cVar) {
        this.f6911d = cVar;
    }
}
