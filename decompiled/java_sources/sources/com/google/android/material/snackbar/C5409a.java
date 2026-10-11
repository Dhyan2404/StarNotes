package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

/* renamed from: com.google.android.material.snackbar.a */
/* loaded from: classes6.dex */
public class C5409a {

    /* renamed from: e */
    public static final int f32573e = 0;

    /* renamed from: f */
    public static final int f32574f = 1500;

    /* renamed from: g */
    public static final int f32575g = 2750;

    /* renamed from: h */
    public static C5409a f32576h;

    /* renamed from: a */
    @NonNull
    public final Object f32577a = new Object();

    /* renamed from: b */
    @NonNull
    public final Handler f32578b = new Handler(Looper.getMainLooper(), new a());

    /* renamed from: c */
    @Nullable
    public c f32579c;

    /* renamed from: d */
    @Nullable
    public c f32580d;

    /* renamed from: com.google.android.material.snackbar.a$a */
    /* loaded from: classes6.dex */
    public class a implements Handler.Callback {
        public a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            if (message.what != 0) {
                return false;
            }
            C5409a.this.m25071d((c) message.obj);
            return true;
        }
    }

    /* renamed from: com.google.android.material.snackbar.a$b */
    /* loaded from: classes6.dex */
    public interface b {
        /* renamed from: a */
        void mo25052a(int i);

        void show();
    }

    /* renamed from: com.google.android.material.snackbar.a$c */
    /* loaded from: classes6.dex */
    public static class c {

        /* renamed from: a */
        @NonNull
        public final WeakReference<b> f32582a;

        /* renamed from: b */
        public int f32583b;

        /* renamed from: c */
        public boolean f32584c;

        public c(int i, b bVar) {
            this.f32582a = new WeakReference<>(bVar);
            this.f32583b = i;
        }

        /* renamed from: a */
        public boolean m25083a(@Nullable b bVar) {
            return bVar != null && this.f32582a.get() == bVar;
        }
    }

    /* renamed from: c */
    public static C5409a m25068c() {
        if (f32576h == null) {
            f32576h = new C5409a();
        }
        return f32576h;
    }

    /* renamed from: a */
    public final boolean m25069a(@NonNull c cVar, int i) {
        b bVar = cVar.f32582a.get();
        if (bVar == null) {
            return false;
        }
        this.f32578b.removeCallbacksAndMessages(cVar);
        bVar.mo25052a(i);
        return true;
    }

    /* renamed from: b */
    public void m25070b(b bVar, int i) {
        synchronized (this.f32577a) {
            if (m25074g(bVar)) {
                m25069a(this.f32579c, i);
            } else if (m25075h(bVar)) {
                m25069a(this.f32580d, i);
            }
        }
    }

    /* renamed from: d */
    public void m25071d(@NonNull c cVar) {
        synchronized (this.f32577a) {
            if (this.f32579c == cVar || this.f32580d == cVar) {
                m25069a(cVar, 2);
            }
        }
    }

    /* renamed from: e */
    public boolean m25072e(b bVar) {
        boolean m25074g;
        synchronized (this.f32577a) {
            m25074g = m25074g(bVar);
        }
        return m25074g;
    }

    /* renamed from: f */
    public boolean m25073f(b bVar) {
        boolean z;
        synchronized (this.f32577a) {
            z = m25074g(bVar) || m25075h(bVar);
        }
        return z;
    }

    /* renamed from: g */
    public final boolean m25074g(b bVar) {
        c cVar = this.f32579c;
        return cVar != null && cVar.m25083a(bVar);
    }

    /* renamed from: h */
    public final boolean m25075h(b bVar) {
        c cVar = this.f32580d;
        return cVar != null && cVar.m25083a(bVar);
    }

    /* renamed from: i */
    public void m25076i(b bVar) {
        synchronized (this.f32577a) {
            if (m25074g(bVar)) {
                this.f32579c = null;
                if (this.f32580d != null) {
                    m25082o();
                }
            }
        }
    }

    /* renamed from: j */
    public void m25077j(b bVar) {
        synchronized (this.f32577a) {
            if (m25074g(bVar)) {
                m25080m(this.f32579c);
            }
        }
    }

    /* renamed from: k */
    public void m25078k(b bVar) {
        synchronized (this.f32577a) {
            if (m25074g(bVar)) {
                c cVar = this.f32579c;
                if (!cVar.f32584c) {
                    cVar.f32584c = true;
                    this.f32578b.removeCallbacksAndMessages(cVar);
                }
            }
        }
    }

    /* renamed from: l */
    public void m25079l(b bVar) {
        synchronized (this.f32577a) {
            if (m25074g(bVar)) {
                c cVar = this.f32579c;
                if (cVar.f32584c) {
                    cVar.f32584c = false;
                    m25080m(cVar);
                }
            }
        }
    }

    /* renamed from: m */
    public final void m25080m(@NonNull c cVar) {
        int i = cVar.f32583b;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? 1500 : f32575g;
        }
        this.f32578b.removeCallbacksAndMessages(cVar);
        Handler handler = this.f32578b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i);
    }

    /* renamed from: n */
    public void m25081n(int i, b bVar) {
        synchronized (this.f32577a) {
            if (m25074g(bVar)) {
                c cVar = this.f32579c;
                cVar.f32583b = i;
                this.f32578b.removeCallbacksAndMessages(cVar);
                m25080m(this.f32579c);
                return;
            }
            if (m25075h(bVar)) {
                this.f32580d.f32583b = i;
            } else {
                this.f32580d = new c(i, bVar);
            }
            c cVar2 = this.f32579c;
            if (cVar2 == null || !m25069a(cVar2, 4)) {
                this.f32579c = null;
                m25082o();
            }
        }
    }

    /* renamed from: o */
    public final void m25082o() {
        c cVar = this.f32580d;
        if (cVar != null) {
            this.f32579c = cVar;
            this.f32580d = null;
            b bVar = cVar.f32582a.get();
            if (bVar != null) {
                bVar.show();
            } else {
                this.f32579c = null;
            }
        }
    }
}
