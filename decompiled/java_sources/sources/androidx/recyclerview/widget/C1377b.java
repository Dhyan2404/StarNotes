package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* renamed from: androidx.recyclerview.widget.b */
/* loaded from: classes3.dex */
public class C1377b {

    /* renamed from: d */
    public static final boolean f9859d = false;

    /* renamed from: e */
    public static final String f9860e = "ChildrenHelper";

    /* renamed from: a */
    public final b f9861a;

    /* renamed from: b */
    public final a f9862b = new a();

    /* renamed from: c */
    public final List<View> f9863c = new ArrayList();

    /* renamed from: androidx.recyclerview.widget.b$a */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: c */
        public static final int f9864c = 64;

        /* renamed from: d */
        public static final long f9865d = Long.MIN_VALUE;

        /* renamed from: a */
        public long f9866a = 0;

        /* renamed from: b */
        public a f9867b;

        /* renamed from: a */
        public void m6131a(int i) {
            if (i < 64) {
                this.f9866a &= ~(1 << i);
                return;
            }
            a aVar = this.f9867b;
            if (aVar != null) {
                aVar.m6131a(i - 64);
            }
        }

        /* renamed from: b */
        public int m6132b(int i) {
            a aVar = this.f9867b;
            if (aVar == null) {
                if (i >= 64) {
                    return Long.bitCount(this.f9866a);
                }
                return Long.bitCount(((1 << i) - 1) & this.f9866a);
            }
            if (i >= 64) {
                return aVar.m6132b(i - 64) + Long.bitCount(this.f9866a);
            }
            return Long.bitCount(((1 << i) - 1) & this.f9866a);
        }

        /* renamed from: c */
        public final void m6133c() {
            if (this.f9867b == null) {
                this.f9867b = new a();
            }
        }

        /* renamed from: d */
        public boolean m6134d(int i) {
            if (i < 64) {
                return ((1 << i) & this.f9866a) != 0;
            }
            m6133c();
            return this.f9867b.m6134d(i - 64);
        }

        /* renamed from: e */
        public void m6135e(int i, boolean z) {
            if (i >= 64) {
                m6133c();
                this.f9867b.m6135e(i - 64, z);
                return;
            }
            long j = this.f9866a;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.f9866a = ((j & (~j2)) << 1) | (j & j2);
            if (z) {
                m6138h(i);
            } else {
                m6131a(i);
            }
            if (z2 || this.f9867b != null) {
                m6133c();
                this.f9867b.m6135e(0, z2);
            }
        }

        /* renamed from: f */
        public boolean m6136f(int i) {
            if (i >= 64) {
                m6133c();
                return this.f9867b.m6136f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.f9866a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (~j);
            this.f9866a = j3;
            long j4 = j - 1;
            this.f9866a = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            a aVar = this.f9867b;
            if (aVar != null) {
                if (aVar.m6134d(0)) {
                    m6138h(63);
                }
                this.f9867b.m6136f(0);
            }
            return z;
        }

        /* renamed from: g */
        public void m6137g() {
            this.f9866a = 0L;
            a aVar = this.f9867b;
            if (aVar != null) {
                aVar.m6137g();
            }
        }

        /* renamed from: h */
        public void m6138h(int i) {
            if (i < 64) {
                this.f9866a |= 1 << i;
            } else {
                m6133c();
                this.f9867b.m6138h(i - 64);
            }
        }

        public String toString() {
            if (this.f9867b == null) {
                return Long.toBinaryString(this.f9866a);
            }
            return this.f9867b.toString() + "xx" + Long.toBinaryString(this.f9866a);
        }
    }

    /* renamed from: androidx.recyclerview.widget.b$b */
    /* loaded from: classes3.dex */
    public interface b {
        /* renamed from: a */
        View mo5905a(int i);

        void addView(View view, int i);

        /* renamed from: b */
        void mo5906b(View view);

        /* renamed from: c */
        int mo5907c();

        /* renamed from: d */
        RecyclerView.ViewHolder mo5908d(View view);

        /* renamed from: e */
        void mo5909e(View view, int i, ViewGroup.LayoutParams layoutParams);

        /* renamed from: f */
        void mo5910f(int i);

        /* renamed from: g */
        int mo5911g(View view);

        /* renamed from: h */
        void mo5912h(View view);

        void removeAllViews();

        void removeViewAt(int i);
    }

    public C1377b(b bVar) {
        this.f9861a = bVar;
    }

    /* renamed from: a */
    public void m6111a(View view, int i, boolean z) {
        int mo5907c = i < 0 ? this.f9861a.mo5907c() : m6118h(i);
        this.f9862b.m6135e(mo5907c, z);
        if (z) {
            m6122l(view);
        }
        this.f9861a.addView(view, mo5907c);
    }

    /* renamed from: b */
    public void m6112b(View view, boolean z) {
        m6111a(view, -1, z);
    }

    /* renamed from: c */
    public void m6113c(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int mo5907c = i < 0 ? this.f9861a.mo5907c() : m6118h(i);
        this.f9862b.m6135e(mo5907c, z);
        if (z) {
            m6122l(view);
        }
        this.f9861a.mo5909e(view, mo5907c, layoutParams);
    }

    /* renamed from: d */
    public void m6114d(int i) {
        int m6118h = m6118h(i);
        this.f9862b.m6136f(m6118h);
        this.f9861a.mo5910f(m6118h);
    }

    /* renamed from: e */
    public View m6115e(int i) {
        int size = this.f9863c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f9863c.get(i2);
            RecyclerView.ViewHolder mo5908d = this.f9861a.mo5908d(view);
            if (mo5908d.getLayoutPosition() == i && !mo5908d.m5889o() && !mo5908d.m5890p()) {
                return view;
            }
        }
        return null;
    }

    /* renamed from: f */
    public View m6116f(int i) {
        return this.f9861a.mo5905a(m6118h(i));
    }

    /* renamed from: g */
    public int m6117g() {
        return this.f9861a.mo5907c() - this.f9863c.size();
    }

    /* renamed from: h */
    public final int m6118h(int i) {
        if (i < 0) {
            return -1;
        }
        int mo5907c = this.f9861a.mo5907c();
        int i2 = i;
        while (i2 < mo5907c) {
            int m6132b = i - (i2 - this.f9862b.m6132b(i2));
            if (m6132b == 0) {
                while (this.f9862b.m6134d(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += m6132b;
        }
        return -1;
    }

    /* renamed from: i */
    public View m6119i(int i) {
        return this.f9861a.mo5905a(i);
    }

    /* renamed from: j */
    public int m6120j() {
        return this.f9861a.mo5907c();
    }

    /* renamed from: k */
    public void m6121k(View view) {
        int mo5911g = this.f9861a.mo5911g(view);
        if (mo5911g >= 0) {
            this.f9862b.m6138h(mo5911g);
            m6122l(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    /* renamed from: l */
    public final void m6122l(View view) {
        this.f9863c.add(view);
        this.f9861a.mo5906b(view);
    }

    /* renamed from: m */
    public int m6123m(View view) {
        int mo5911g = this.f9861a.mo5911g(view);
        if (mo5911g == -1 || this.f9862b.m6134d(mo5911g)) {
            return -1;
        }
        return mo5911g - this.f9862b.m6132b(mo5911g);
    }

    /* renamed from: n */
    public boolean m6124n(View view) {
        return this.f9863c.contains(view);
    }

    /* renamed from: o */
    public void m6125o() {
        this.f9862b.m6137g();
        for (int size = this.f9863c.size() - 1; size >= 0; size--) {
            this.f9861a.mo5912h(this.f9863c.get(size));
            this.f9863c.remove(size);
        }
        this.f9861a.removeAllViews();
    }

    /* renamed from: p */
    public void m6126p(View view) {
        int mo5911g = this.f9861a.mo5911g(view);
        if (mo5911g < 0) {
            return;
        }
        if (this.f9862b.m6136f(mo5911g)) {
            m6130t(view);
        }
        this.f9861a.removeViewAt(mo5911g);
    }

    /* renamed from: q */
    public void m6127q(int i) {
        int m6118h = m6118h(i);
        View mo5905a = this.f9861a.mo5905a(m6118h);
        if (mo5905a == null) {
            return;
        }
        if (this.f9862b.m6136f(m6118h)) {
            m6130t(mo5905a);
        }
        this.f9861a.removeViewAt(m6118h);
    }

    /* renamed from: r */
    public boolean m6128r(View view) {
        int mo5911g = this.f9861a.mo5911g(view);
        if (mo5911g == -1) {
            m6130t(view);
            return true;
        }
        if (!this.f9862b.m6134d(mo5911g)) {
            return false;
        }
        this.f9862b.m6136f(mo5911g);
        m6130t(view);
        this.f9861a.removeViewAt(mo5911g);
        return true;
    }

    /* renamed from: s */
    public void m6129s(View view) {
        int mo5911g = this.f9861a.mo5911g(view);
        if (mo5911g < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (this.f9862b.m6134d(mo5911g)) {
            this.f9862b.m6131a(mo5911g);
            m6130t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    /* renamed from: t */
    public final boolean m6130t(View view) {
        if (!this.f9863c.remove(view)) {
            return false;
        }
        this.f9861a.mo5912h(view);
        return true;
    }

    public String toString() {
        return this.f9862b.toString() + ", hidden list:" + this.f9863c.size();
    }
}
