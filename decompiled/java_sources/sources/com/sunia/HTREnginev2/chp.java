package com.sunia.HTREnginev2;

import com.android.billingclient.api.C1783a;
import com.android.billingclient.api.PurchaseHistoryResponseListener;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class chp implements Callable {

    /* renamed from: e */
    public final /* synthetic */ String f66844e;

    /* renamed from: f */
    public final /* synthetic */ PurchaseHistoryResponseListener f66845f;

    /* renamed from: g */
    public final /* synthetic */ C1783a f66846g;

    public chp(C1783a c1783a, String str, PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        this.f66844e = str;
        this.f66845f = purchaseHistoryResponseListener;
        this.f66846g = c1783a;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        hip m7833D0;
        m7833D0 = this.f66846g.m7833D0(this.f66844e);
        this.f66845f.onPurchaseHistoryResponse(m7833D0.m54558a(), m7833D0.m54559b());
        return null;
    }
}
