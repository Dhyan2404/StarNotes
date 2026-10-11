package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import java.util.Map;
import javax.annotation.CheckForNull;

@vnf
/* loaded from: classes6.dex */
public final class q8j<K, V> extends p8j<K, V> {

    /* renamed from: c */
    @CheckForNull
    public volatile transient C14291a<K, V> f81764c;

    /* renamed from: d */
    @CheckForNull
    public volatile transient C14291a<K, V> f81765d;

    /* renamed from: com.sunia.HTREnginev2.q8j$a */
    /* loaded from: classes6.dex */
    public static final class C14291a<K, V> {

        /* renamed from: a */
        public final K f81766a;

        /* renamed from: b */
        public final V f81767b;

        public C14291a(K k, V v) {
            this.f81766a = k;
            this.f81767b = v;
        }
    }

    public q8j(Map<K, V> map) {
        super(map);
    }

    @Override // com.sunia.HTREnginev2.p8j
    /* renamed from: d */
    public void mo56240d() {
        super.mo56240d();
        this.f81764c = null;
        this.f81765d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.p8j
    @CheckForNull
    /* renamed from: f */
    public V mo56242f(Object obj) {
        Preconditions.checkNotNull(obj);
        V mo56243g = mo56243g(obj);
        if (mo56243g != null) {
            return mo56243g;
        }
        V m56244h = m56244h(obj);
        if (m56244h != null) {
            m56660m(obj, m56244h);
        }
        return m56244h;
    }

    @Override // com.sunia.HTREnginev2.p8j
    @CheckForNull
    /* renamed from: g */
    public V mo56243g(@CheckForNull Object obj) {
        V v = (V) super.mo56243g(obj);
        if (v != null) {
            return v;
        }
        C14291a<K, V> c14291a = this.f81764c;
        if (c14291a != null && c14291a.f81766a == obj) {
            return c14291a.f81767b;
        }
        C14291a<K, V> c14291a2 = this.f81765d;
        if (c14291a2 == null || c14291a2.f81766a != obj) {
            return null;
        }
        m56659l(c14291a2);
        return c14291a2.f81767b;
    }

    /* renamed from: l */
    public final void m56659l(C14291a<K, V> c14291a) {
        this.f81765d = this.f81764c;
        this.f81764c = c14291a;
    }

    /* renamed from: m */
    public final void m56660m(K k, V v) {
        m56659l(new C14291a<>(k, v));
    }
}
