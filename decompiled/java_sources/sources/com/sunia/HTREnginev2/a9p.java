package com.sunia.HTREnginev2;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@VisibleForTesting(otherwise = 2)
/* loaded from: classes5.dex */
public final class a9p extends LifecycleCallback {

    /* renamed from: e */
    public List f64480e;

    public a9p(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.f64480e = new ArrayList();
        this.mLifecycleFragment.addCallback("LifecycleObserverOnStop", this);
    }

    /* renamed from: a */
    public static /* bridge */ /* synthetic */ a9p m52983a(Activity activity) {
        a9p a9pVar;
        synchronized (activity) {
            LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
            a9pVar = (a9p) fragment.getCallbackOrNull("LifecycleObserverOnStop", a9p.class);
            if (a9pVar == null) {
                a9pVar = new a9p(fragment);
            }
        }
        return a9pVar;
    }

    /* renamed from: c */
    public final synchronized void m52985c(Runnable runnable) {
        this.f64480e.add(runnable);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    @MainThread
    public final void onStop() {
        List list;
        synchronized (this) {
            list = this.f64480e;
            this.f64480e = new ArrayList();
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
    }
}
