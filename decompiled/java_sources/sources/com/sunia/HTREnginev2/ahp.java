package com.sunia.HTREnginev2;

import com.android.billingclient.api.C1783a;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.zzcv;
import com.google.android.gms.internal.play_billing.zzco;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class ahp implements Callable {

    /* renamed from: e */
    public final /* synthetic */ String f64709e;

    /* renamed from: f */
    public final /* synthetic */ PurchasesResponseListener f64710f;

    /* renamed from: g */
    public final /* synthetic */ C1783a f64711g;

    public ahp(C1783a c1783a, String str, PurchasesResponseListener purchasesResponseListener) {
        this.f64709e = str;
        this.f64710f = purchasesResponseListener;
        this.f64711g = c1783a;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzcv m7861W;
        m7861W = this.f64711g.m7861W(this.f64709e, 9);
        if (m7861W.zzb() != null) {
            this.f64710f.onQueryPurchasesResponse(m7861W.zza(), m7861W.zzb());
            return null;
        }
        this.f64710f.onQueryPurchasesResponse(m7861W.zza(), zzco.zzl());
        return null;
    }
}
