package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.IntentFilter;
import androidx.annotation.Nullable;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.UserChoiceBillingListener;
import com.android.billingclient.api.zzco;

/* loaded from: classes3.dex */
public final class cqp {

    /* renamed from: a */
    public final Context f67090a;

    /* renamed from: b */
    public final PurchasesUpdatedListener f67091b;

    /* renamed from: c */
    public final com.android.billingclient.api.zzb f67092c;

    /* renamed from: d */
    public final UserChoiceBillingListener f67093d;

    /* renamed from: e */
    public final fjp f67094e;

    /* renamed from: f */
    public final bpp f67095f = new bpp(this, true);

    /* renamed from: g */
    public final bpp f67096g = new bpp(this, false);

    /* renamed from: h */
    public boolean f67097h;

    public cqp(Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzco zzcoVar, com.android.billingclient.api.zzb zzbVar, UserChoiceBillingListener userChoiceBillingListener, fjp fjpVar) {
        this.f67090a = context;
        this.f67091b = purchasesUpdatedListener;
        this.f67092c = zzbVar;
        this.f67093d = userChoiceBillingListener;
        this.f67094e = fjpVar;
    }

    @Nullable
    /* renamed from: d */
    public final PurchasesUpdatedListener m53502d() {
        return this.f67091b;
    }

    /* renamed from: f */
    public final void m53503f() {
        this.f67095f.m53320c(this.f67090a);
        this.f67096g.m53320c(this.f67090a);
    }

    /* renamed from: g */
    public final void m53504g(boolean z) {
        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        IntentFilter intentFilter2 = new IntentFilter("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intentFilter2.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
        this.f67097h = z;
        this.f67096g.m53318a(this.f67090a, intentFilter2);
        if (this.f67097h) {
            this.f67095f.m53319b(this.f67090a, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST");
        } else {
            this.f67095f.m53318a(this.f67090a, intentFilter);
        }
    }
}
