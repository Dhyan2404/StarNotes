package androidx.recyclerview.widget;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: androidx.recyclerview.widget.g */
/* loaded from: classes3.dex */
public class C1382g<T> implements ThreadUtil<T> {

    /* renamed from: androidx.recyclerview.widget.g$a */
    /* loaded from: classes3.dex */
    public class a implements ThreadUtil.MainThreadCallback<T> {

        /* renamed from: f */
        public static final int f9959f = 1;

        /* renamed from: g */
        public static final int f9960g = 2;

        /* renamed from: h */
        public static final int f9961h = 3;

        /* renamed from: a */
        public final c f9962a = new c();

        /* renamed from: b */
        public final Handler f9963b = new Handler(Looper.getMainLooper());

        /* renamed from: c */
        public Runnable f9964c = new RunnableC20570a();

        /* renamed from: d */
        public final /* synthetic */ ThreadUtil.MainThreadCallback f9965d;

        /* renamed from: androidx.recyclerview.widget.g$a$a, reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class RunnableC20570a implements Runnable {
            public RunnableC20570a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                d m6222a = a.this.f9962a.m6222a();
                while (m6222a != null) {
                    int i = m6222a.f9984b;
                    if (i == 1) {
                        a.this.f9965d.updateItemCount(m6222a.f9985c, m6222a.f9986d);
                    } else if (i == 2) {
                        a.this.f9965d.addTile(m6222a.f9985c, (TileList.Tile) m6222a.f9990h);
                    } else if (i != 3) {
                        Log.e("ThreadUtil", "Unsupported message, what=" + m6222a.f9984b);
                    } else {
                        a.this.f9965d.removeTile(m6222a.f9985c, m6222a.f9986d);
                    }
                    m6222a = a.this.f9962a.m6222a();
                }
            }
        }

        public a(ThreadUtil.MainThreadCallback mainThreadCallback) {
            this.f9965d = mainThreadCallback;
        }

        /* renamed from: a */
        public final void m6218a(d dVar) {
            this.f9962a.m6224c(dVar);
            this.f9963b.post(this.f9964c);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void addTile(int i, TileList.Tile<T> tile) {
            m6218a(d.m6228c(2, i, tile));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void removeTile(int i, int i2) {
            m6218a(d.m6226a(3, i, i2));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void updateItemCount(int i, int i2) {
            m6218a(d.m6226a(1, i, i2));
        }
    }

    /* renamed from: androidx.recyclerview.widget.g$b */
    /* loaded from: classes3.dex */
    public class b implements ThreadUtil.BackgroundCallback<T> {

        /* renamed from: g */
        public static final int f9968g = 1;

        /* renamed from: h */
        public static final int f9969h = 2;

        /* renamed from: i */
        public static final int f9970i = 3;

        /* renamed from: j */
        public static final int f9971j = 4;

        /* renamed from: a */
        public final c f9972a = new c();

        /* renamed from: b */
        public final Executor f9973b = AsyncTask.THREAD_POOL_EXECUTOR;

        /* renamed from: c */
        public AtomicBoolean f9974c = new AtomicBoolean(false);

        /* renamed from: d */
        public Runnable f9975d = new a();

        /* renamed from: e */
        public final /* synthetic */ ThreadUtil.BackgroundCallback f9976e;

        /* renamed from: androidx.recyclerview.widget.g$b$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    d m6222a = b.this.f9972a.m6222a();
                    if (m6222a == null) {
                        b.this.f9974c.set(false);
                        return;
                    }
                    int i = m6222a.f9984b;
                    if (i == 1) {
                        b.this.f9972a.m6223b(1);
                        b.this.f9976e.refresh(m6222a.f9985c);
                    } else if (i == 2) {
                        b.this.f9972a.m6223b(2);
                        b.this.f9972a.m6223b(3);
                        b.this.f9976e.updateRange(m6222a.f9985c, m6222a.f9986d, m6222a.f9987e, m6222a.f9988f, m6222a.f9989g);
                    } else if (i == 3) {
                        b.this.f9976e.loadTile(m6222a.f9985c, m6222a.f9986d);
                    } else if (i != 4) {
                        Log.e("ThreadUtil", "Unsupported message, what=" + m6222a.f9984b);
                    } else {
                        b.this.f9976e.recycleTile((TileList.Tile) m6222a.f9990h);
                    }
                }
            }
        }

        public b(ThreadUtil.BackgroundCallback backgroundCallback) {
            this.f9976e = backgroundCallback;
        }

        /* renamed from: a */
        public final void m6219a() {
            if (this.f9974c.compareAndSet(false, true)) {
                this.f9973b.execute(this.f9975d);
            }
        }

        /* renamed from: b */
        public final void m6220b(d dVar) {
            this.f9972a.m6224c(dVar);
            m6219a();
        }

        /* renamed from: c */
        public final void m6221c(d dVar) {
            this.f9972a.m6225d(dVar);
            m6219a();
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void loadTile(int i, int i2) {
            m6220b(d.m6226a(3, i, i2));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void recycleTile(TileList.Tile<T> tile) {
            m6220b(d.m6228c(4, 0, tile));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void refresh(int i) {
            m6221c(d.m6228c(1, i, null));
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void updateRange(int i, int i2, int i3, int i4, int i5) {
            m6221c(d.m6227b(2, i, i2, i3, i4, i5, null));
        }
    }

    /* renamed from: androidx.recyclerview.widget.g$c */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a */
        public d f9979a;

        /* renamed from: b */
        public final Object f9980b = new Object();

        /* renamed from: a */
        public d m6222a() {
            synchronized (this.f9980b) {
                d dVar = this.f9979a;
                if (dVar == null) {
                    return null;
                }
                this.f9979a = dVar.f9983a;
                return dVar;
            }
        }

        /* renamed from: b */
        public void m6223b(int i) {
            d dVar;
            synchronized (this.f9980b) {
                while (true) {
                    dVar = this.f9979a;
                    if (dVar == null || dVar.f9984b != i) {
                        break;
                    }
                    this.f9979a = dVar.f9983a;
                    dVar.m6229d();
                }
                if (dVar != null) {
                    d dVar2 = dVar.f9983a;
                    while (dVar2 != null) {
                        d dVar3 = dVar2.f9983a;
                        if (dVar2.f9984b == i) {
                            dVar.f9983a = dVar3;
                            dVar2.m6229d();
                        } else {
                            dVar = dVar2;
                        }
                        dVar2 = dVar3;
                    }
                }
            }
        }

        /* renamed from: c */
        public void m6224c(d dVar) {
            synchronized (this.f9980b) {
                d dVar2 = this.f9979a;
                if (dVar2 == null) {
                    this.f9979a = dVar;
                    return;
                }
                while (true) {
                    d dVar3 = dVar2.f9983a;
                    if (dVar3 == null) {
                        dVar2.f9983a = dVar;
                        return;
                    }
                    dVar2 = dVar3;
                }
            }
        }

        /* renamed from: d */
        public void m6225d(d dVar) {
            synchronized (this.f9980b) {
                dVar.f9983a = this.f9979a;
                this.f9979a = dVar;
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.g$d */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: i */
        public static d f9981i;

        /* renamed from: j */
        public static final Object f9982j = new Object();

        /* renamed from: a */
        public d f9983a;

        /* renamed from: b */
        public int f9984b;

        /* renamed from: c */
        public int f9985c;

        /* renamed from: d */
        public int f9986d;

        /* renamed from: e */
        public int f9987e;

        /* renamed from: f */
        public int f9988f;

        /* renamed from: g */
        public int f9989g;

        /* renamed from: h */
        public Object f9990h;

        /* renamed from: a */
        public static d m6226a(int i, int i2, int i3) {
            return m6227b(i, i2, i3, 0, 0, 0, null);
        }

        /* renamed from: b */
        public static d m6227b(int i, int i2, int i3, int i4, int i5, int i6, Object obj) {
            d dVar;
            synchronized (f9982j) {
                dVar = f9981i;
                if (dVar == null) {
                    dVar = new d();
                } else {
                    f9981i = dVar.f9983a;
                    dVar.f9983a = null;
                }
                dVar.f9984b = i;
                dVar.f9985c = i2;
                dVar.f9986d = i3;
                dVar.f9987e = i4;
                dVar.f9988f = i5;
                dVar.f9989g = i6;
                dVar.f9990h = obj;
            }
            return dVar;
        }

        /* renamed from: c */
        public static d m6228c(int i, int i2, Object obj) {
            return m6227b(i, i2, 0, 0, 0, 0, obj);
        }

        /* renamed from: d */
        public void m6229d() {
            this.f9983a = null;
            this.f9989g = 0;
            this.f9988f = 0;
            this.f9987e = 0;
            this.f9986d = 0;
            this.f9985c = 0;
            this.f9984b = 0;
            this.f9990h = null;
            synchronized (f9982j) {
                d dVar = f9981i;
                if (dVar != null) {
                    this.f9983a = dVar;
                }
                f9981i = this;
            }
        }
    }

    @Override // androidx.recyclerview.widget.ThreadUtil
    /* renamed from: a */
    public ThreadUtil.MainThreadCallback<T> mo6063a(ThreadUtil.MainThreadCallback<T> mainThreadCallback) {
        return new a(mainThreadCallback);
    }

    @Override // androidx.recyclerview.widget.ThreadUtil
    /* renamed from: b */
    public ThreadUtil.BackgroundCallback<T> mo6064b(ThreadUtil.BackgroundCallback<T> backgroundCallback) {
        return new b(backgroundCallback);
    }
}
