package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.e5l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class g6h<K extends e5l, V> {

    /* renamed from: a */
    public final C13760a<K, V> f70735a = new C13760a<>();

    /* renamed from: b */
    public final Map<K, C13760a<K, V>> f70736b = new HashMap();

    /* renamed from: com.sunia.HTREnginev2.g6h$a */
    /* loaded from: classes3.dex */
    public static class C13760a<K, V> {

        /* renamed from: a */
        public final K f70737a;

        /* renamed from: b */
        public List<V> f70738b;

        /* renamed from: c */
        public C13760a<K, V> f70739c;

        /* renamed from: d */
        public C13760a<K, V> f70740d;

        public C13760a() {
            this(null);
        }

        /* renamed from: a */
        public void m54232a(V v) {
            if (this.f70738b == null) {
                this.f70738b = new ArrayList();
            }
            this.f70738b.add(v);
        }

        @Nullable
        /* renamed from: b */
        public V m54233b() {
            int m54234c = m54234c();
            if (m54234c > 0) {
                return this.f70738b.remove(m54234c - 1);
            }
            return null;
        }

        /* renamed from: c */
        public int m54234c() {
            List<V> list = this.f70738b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        public C13760a(K k) {
            this.f70740d = this;
            this.f70739c = this;
            this.f70737a = k;
        }
    }

    /* renamed from: e */
    public static <K, V> void m54225e(C13760a<K, V> c13760a) {
        C13760a<K, V> c13760a2 = c13760a.f70740d;
        c13760a2.f70739c = c13760a.f70739c;
        c13760a.f70739c.f70740d = c13760a2;
    }

    /* renamed from: g */
    public static <K, V> void m54226g(C13760a<K, V> c13760a) {
        c13760a.f70739c.f70740d = c13760a;
        c13760a.f70740d.f70739c = c13760a;
    }

    @Nullable
    /* renamed from: a */
    public V m54227a(K k) {
        C13760a<K, V> c13760a = this.f70736b.get(k);
        if (c13760a == null) {
            c13760a = new C13760a<>(k);
            this.f70736b.put(k, c13760a);
        } else {
            k.mo8766a();
        }
        m54228b(c13760a);
        return c13760a.m54233b();
    }

    /* renamed from: b */
    public final void m54228b(C13760a<K, V> c13760a) {
        m54225e(c13760a);
        C13760a<K, V> c13760a2 = this.f70735a;
        c13760a.f70740d = c13760a2;
        c13760a.f70739c = c13760a2.f70739c;
        m54226g(c13760a);
    }

    /* renamed from: c */
    public final void m54229c(C13760a<K, V> c13760a) {
        m54225e(c13760a);
        C13760a<K, V> c13760a2 = this.f70735a;
        c13760a.f70740d = c13760a2.f70740d;
        c13760a.f70739c = c13760a2;
        m54226g(c13760a);
    }

    /* renamed from: d */
    public void m54230d(K k, V v) {
        C13760a<K, V> c13760a = this.f70736b.get(k);
        if (c13760a == null) {
            c13760a = new C13760a<>(k);
            m54229c(c13760a);
            this.f70736b.put(k, c13760a);
        } else {
            k.mo8766a();
        }
        c13760a.m54232a(v);
    }

    @Nullable
    /* renamed from: f */
    public V m54231f() {
        for (C13760a c13760a = this.f70735a.f70740d; !c13760a.equals(this.f70735a); c13760a = c13760a.f70740d) {
            V v = (V) c13760a.m54233b();
            if (v != null) {
                return v;
            }
            m54225e(c13760a);
            this.f70736b.remove(c13760a.f70737a);
            ((e5l) c13760a.f70737a).mo8766a();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        C13760a c13760a = this.f70735a.f70739c;
        boolean z = false;
        while (!c13760a.equals(this.f70735a)) {
            sb.append('{');
            sb.append(c13760a.f70737a);
            sb.append(':');
            sb.append(c13760a.m54234c());
            sb.append("}, ");
            c13760a = c13760a.f70739c;
            z = true;
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
