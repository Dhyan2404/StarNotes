package com.sunia.HTREnginev2;

import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.C1790h;
import com.android.billingclient.api.C1791i;
import com.google.android.gms.internal.play_billing.zzej;
import java.util.concurrent.TimeoutException;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public final class pip implements zzej {

    /* renamed from: a */
    public final /* synthetic */ Consumer f80837a;

    /* renamed from: b */
    public final /* synthetic */ Runnable f80838b;

    /* renamed from: c */
    public final /* synthetic */ C1790h f80839c;

    /* renamed from: d */
    public final /* synthetic */ int f80840d;

    public pip(C1790h c1790h, int i, Consumer consumer, Runnable runnable) {
        this.f80840d = i;
        this.f80837a = consumer;
        this.f80838b = runnable;
        this.f80839c = c1790h;
    }

    @Override // com.google.android.gms.internal.play_billing.zzej
    public final void zza(Throwable th) {
        if (th instanceof TimeoutException) {
            this.f80839c.m7913D1(114, 28, C1791i.f13566G);
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", th);
        } else {
            this.f80839c.m7913D1(107, 28, C1791i.f13566G);
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClientTesting", "An error occurred while retrieving billing override.", th);
        }
        this.f80838b.run();
    }

    @Override // com.google.android.gms.internal.play_billing.zzej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        boolean m7904A1;
        BillingResult m7911B1;
        Integer num = (Integer) obj;
        int intValue = num.intValue();
        C1790h c1790h = this.f80839c;
        m7904A1 = C1790h.m7904A1(intValue);
        if (!m7904A1) {
            this.f80838b.run();
        } else {
            m7911B1 = c1790h.m7911B1(this.f80840d, num.intValue());
            this.f80837a.accept(m7911B1);
        }
    }
}
