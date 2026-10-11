package com.sunia.HTREnginev2;

import androidx.annotation.BinderThread;
import com.google.android.gms.common.api.internal.zaaw;
import com.google.android.gms.common.api.internal.zabi;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class o9p extends com.google.android.gms.signin.internal.zac {

    /* renamed from: a */
    public final WeakReference f79490a;

    public o9p(zaaw zaawVar) {
        this.f79490a = new WeakReference(zaawVar);
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae
    @BinderThread
    public final void zab(com.google.android.gms.signin.internal.zak zakVar) {
        zabi zabiVar;
        zaaw zaawVar = (zaaw) this.f79490a.get();
        if (zaawVar == null) {
            return;
        }
        zabiVar = zaawVar.f29184a;
        zabiVar.m22081f(new n9p(this, zaawVar, zaawVar, zakVar));
    }
}
