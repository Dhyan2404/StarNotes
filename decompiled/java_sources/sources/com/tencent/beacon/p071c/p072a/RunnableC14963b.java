package com.tencent.beacon.p071c.p072a;

import android.app.Activity;
import com.tencent.beacon.p071c.C14967c;
import java.lang.ref.WeakReference;

/* renamed from: com.tencent.beacon.c.a.b */
/* loaded from: classes10.dex */
public class RunnableC14963b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ WeakReference f92921a;

    /* renamed from: b */
    final /* synthetic */ C14964c f92922b;

    public RunnableC14963b(C14964c c14964c, WeakReference weakReference) {
        this.f92922b = c14964c;
        this.f92921a = weakReference;
    }

    @Override // java.lang.Runnable
    public void run() {
        new C14967c(((Activity) this.f92921a.get()).getApplicationContext()).m59434a();
    }
}
