package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: androidx.fragment.app.d */
/* loaded from: classes3.dex */
public class C1125d {

    /* renamed from: a */
    @NonNull
    public final CopyOnWriteArrayList<a> f7687a = new CopyOnWriteArrayList<>();

    /* renamed from: b */
    @NonNull
    public final FragmentManager f7688b;

    /* renamed from: androidx.fragment.app.d$a */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a */
        @NonNull
        public final FragmentManager.FragmentLifecycleCallbacks f7689a;

        /* renamed from: b */
        public final boolean f7690b;

        public a(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z) {
            this.f7689a = fragmentLifecycleCallbacks;
            this.f7690b = z;
        }
    }

    public C1125d(@NonNull FragmentManager fragmentManager) {
        this.f7688b = fragmentManager;
    }

    /* renamed from: a */
    public void m4809a(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z) {
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4809a(fragment, bundle, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentActivityCreated(this.f7688b, fragment, bundle);
            }
        }
    }

    /* renamed from: b */
    public void m4810b(@NonNull Fragment fragment, boolean z) {
        Context m4623b = this.f7688b.getHost().m4623b();
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4810b(fragment, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentAttached(this.f7688b, fragment, m4623b);
            }
        }
    }

    /* renamed from: c */
    public void m4811c(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z) {
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4811c(fragment, bundle, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentCreated(this.f7688b, fragment, bundle);
            }
        }
    }

    /* renamed from: d */
    public void m4812d(@NonNull Fragment fragment, boolean z) {
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4812d(fragment, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentDestroyed(this.f7688b, fragment);
            }
        }
    }

    /* renamed from: e */
    public void m4813e(@NonNull Fragment fragment, boolean z) {
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4813e(fragment, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentDetached(this.f7688b, fragment);
            }
        }
    }

    /* renamed from: f */
    public void m4814f(@NonNull Fragment fragment, boolean z) {
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4814f(fragment, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentPaused(this.f7688b, fragment);
            }
        }
    }

    /* renamed from: g */
    public void m4815g(@NonNull Fragment fragment, boolean z) {
        Context m4623b = this.f7688b.getHost().m4623b();
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4815g(fragment, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentPreAttached(this.f7688b, fragment, m4623b);
            }
        }
    }

    /* renamed from: h */
    public void m4816h(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z) {
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4816h(fragment, bundle, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentPreCreated(this.f7688b, fragment, bundle);
            }
        }
    }

    /* renamed from: i */
    public void m4817i(@NonNull Fragment fragment, boolean z) {
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4817i(fragment, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentResumed(this.f7688b, fragment);
            }
        }
    }

    /* renamed from: j */
    public void m4818j(@NonNull Fragment fragment, @NonNull Bundle bundle, boolean z) {
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4818j(fragment, bundle, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentSaveInstanceState(this.f7688b, fragment, bundle);
            }
        }
    }

    /* renamed from: k */
    public void m4819k(@NonNull Fragment fragment, boolean z) {
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4819k(fragment, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentStarted(this.f7688b, fragment);
            }
        }
    }

    /* renamed from: l */
    public void m4820l(@NonNull Fragment fragment, boolean z) {
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4820l(fragment, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentStopped(this.f7688b, fragment);
            }
        }
    }

    /* renamed from: m */
    public void m4821m(@NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle, boolean z) {
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4821m(fragment, view, bundle, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentViewCreated(this.f7688b, fragment, view, bundle);
            }
        }
    }

    /* renamed from: n */
    public void m4822n(@NonNull Fragment fragment, boolean z) {
        Fragment m4736t0 = this.f7688b.m4736t0();
        if (m4736t0 != null) {
            m4736t0.getParentFragmentManager().m4734s0().m4822n(fragment, true);
        }
        Iterator<a> it2 = this.f7687a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!z || next.f7690b) {
                next.f7689a.onFragmentViewDestroyed(this.f7688b, fragment);
            }
        }
    }

    /* renamed from: o */
    public void m4823o(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z) {
        this.f7687a.add(new a(fragmentLifecycleCallbacks, z));
    }

    /* renamed from: p */
    public void m4824p(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        synchronized (this.f7687a) {
            int size = this.f7687a.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                if (this.f7687a.get(i).f7689a == fragmentLifecycleCallbacks) {
                    this.f7687a.remove(i);
                    break;
                }
                i++;
            }
        }
    }
}
