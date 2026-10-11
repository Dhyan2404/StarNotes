package com.sunia.HTREnginev2;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.gms.internal.play_billing.zzlk;

/* loaded from: classes3.dex */
public final class hjp {

    /* renamed from: a */
    public boolean f72267a;

    /* renamed from: b */
    public Transport f72268b;

    public hjp(Context context) {
        try {
            TransportRuntime.initialize(context);
            this.f72268b = TransportRuntime.getInstance().newFactory(CCTDestination.INSTANCE).getTransport("PLAY_BILLING_LIBRARY", zzlk.class, Encoding.m17394of("proto"), new Transformer() { // from class: com.android.billingclient.api.zzcm
                @Override // com.google.android.datatransport.Transformer
                public final Object apply(Object obj) {
                    return ((zzlk) obj).zzh();
                }
            });
        } catch (Throwable unused) {
            this.f72267a = true;
        }
    }

    /* renamed from: a */
    public final void m54562a(zzlk zzlkVar) {
        if (this.f72267a) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            this.f72268b.send(Event.ofData(zzlkVar));
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingLogger", "logging failed.");
        }
    }
}
