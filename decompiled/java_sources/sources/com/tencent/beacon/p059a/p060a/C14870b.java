package com.tencent.beacon.p059a.p060a;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p061b.C14882j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.tencent.beacon.a.a.b */
/* loaded from: classes10.dex */
public final class C14870b {

    /* renamed from: a */
    private static volatile C14870b f92534a;

    /* renamed from: c */
    private final Object f92536c = new Object();

    /* renamed from: f */
    private AtomicBoolean f92539f = new AtomicBoolean(false);

    /* renamed from: b */
    private final SparseArray<List<InterfaceC14872d>> f92535b = new SparseArray<>();

    /* renamed from: d */
    private final SparseArray<List<C14871c>> f92537d = new SparseArray<>();

    /* renamed from: e */
    private final SparseArray<Object> f92538e = new SparseArray<>();

    private C14870b() {
    }

    /* renamed from: a */
    public static C14870b m58921a() {
        if (f92534a == null) {
            synchronized (C14870b.class) {
                if (f92534a == null) {
                    f92534a = new C14870b();
                }
            }
        }
        return f92534a;
    }

    /* renamed from: c */
    private void m58924c(C14871c c14871c) {
        m58925d(c14871c);
        synchronized (m58922b(c14871c.f92540a)) {
            List<InterfaceC14872d> m58923c = m58923c(c14871c.f92540a);
            if (m58923c == null) {
                return;
            }
            Iterator<InterfaceC14872d> it2 = m58923c.iterator();
            while (it2.hasNext()) {
                try {
                    it2.next().mo58930a(c14871c);
                } catch (Throwable th) {
                    C14954c.m59393a(th);
                    if (this.f92539f.compareAndSet(false, true)) {
                        C14882j.m58961e().m58954a("512", "dispatchEvent error", th);
                    }
                }
            }
        }
    }

    /* renamed from: d */
    private void m58925d(C14871c c14871c) {
    }

    /* renamed from: b */
    public void m58929b(@NonNull C14871c c14871c) {
        synchronized (m58922b(c14871c.f92540a)) {
            C14871c c14871c2 = new C14871c(c14871c.f92540a, c14871c.f92541b);
            List<C14871c> list = this.f92537d.get(c14871c2.f92540a);
            if (list == null) {
                list = new ArrayList<>();
                this.f92537d.put(c14871c2.f92540a, list);
            }
            list.add(c14871c2);
            m58924c(c14871c);
        }
    }

    /* renamed from: a */
    public void m58927a(int i, InterfaceC14872d interfaceC14872d) {
        synchronized (m58922b(i)) {
            List<InterfaceC14872d> list = this.f92535b.get(i);
            if (list == null) {
                list = new ArrayList<>();
                this.f92535b.put(i, list);
            }
            if (list.contains(interfaceC14872d)) {
                return;
            }
            list.add(interfaceC14872d);
            List<C14871c> list2 = this.f92537d.get(i);
            if (list2 != null) {
                Iterator<C14871c> it2 = list2.iterator();
                while (it2.hasNext()) {
                    try {
                        interfaceC14872d.mo58930a(it2.next());
                    } catch (Throwable th) {
                        C14954c.m59393a(th);
                    }
                }
                if (i == 6 || i == 12) {
                    m58926a(i);
                }
            }
        }
    }

    /* renamed from: b */
    private Object m58922b(int i) {
        Object obj;
        synchronized (this.f92536c) {
            obj = this.f92538e.get(i);
            if (obj == null) {
                obj = new Object();
                this.f92538e.put(i, obj);
            }
        }
        return obj;
    }

    /* renamed from: c */
    private List<InterfaceC14872d> m58923c(int i) {
        List<InterfaceC14872d> list = this.f92535b.get(i);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list;
    }

    /* renamed from: a */
    public void m58928a(@NonNull C14871c c14871c) {
        AbstractC14874b.m58931a().mo58941a(new RunnableC14869a(this, c14871c));
    }

    /* renamed from: a */
    public void m58926a(int i) {
        synchronized (m58922b(i)) {
            this.f92537d.remove(i);
        }
    }
}
