package com.sunia.HTREnginev2;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzkd;
import com.google.android.gms.internal.play_billing.zzkl;
import com.google.android.gms.internal.play_billing.zzks;
import com.google.android.gms.internal.play_billing.zzku;
import com.google.android.gms.internal.play_billing.zzli;
import com.google.android.gms.internal.play_billing.zzlk;
import com.google.android.gms.internal.play_billing.zzlq;
import com.google.android.gms.internal.play_billing.zzlu;

/* loaded from: classes3.dex */
public final class gjp implements fjp {

    /* renamed from: b */
    public zzku f71097b;

    /* renamed from: c */
    public final hjp f71098c;

    public gjp(Context context, zzku zzkuVar) {
        this.f71098c = new hjp(context);
        this.f71097b = zzkuVar;
    }

    @Override // com.sunia.HTREnginev2.fjp
    /* renamed from: a */
    public final void mo54119a(zzlq zzlqVar) {
        try {
            hjp hjpVar = this.f71098c;
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f71097b);
            zzc.zzp(zzlqVar);
            hjpVar.m54562a((zzlk) zzc.zzf());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.sunia.HTREnginev2.fjp
    /* renamed from: b */
    public final void mo54120b(@Nullable zzlu zzluVar) {
        if (zzluVar == null) {
            return;
        }
        try {
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f71097b);
            zzc.zzq(zzluVar);
            this.f71098c.m54562a((zzlk) zzc.zzf());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.sunia.HTREnginev2.fjp
    /* renamed from: c */
    public final void mo54121c(@Nullable zzjz zzjzVar) {
        if (zzjzVar == null) {
            return;
        }
        try {
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f71097b);
            zzc.zza(zzjzVar);
            this.f71098c.m54562a((zzlk) zzc.zzf());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.sunia.HTREnginev2.fjp
    /* renamed from: d */
    public final void mo54122d(@Nullable zzkd zzkdVar, int i) {
        try {
            zzks zzksVar = (zzks) this.f71097b.zzn();
            zzksVar.zza(i);
            this.f71097b = (zzku) zzksVar.zzf();
            mo54125g(zzkdVar);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.sunia.HTREnginev2.fjp
    /* renamed from: e */
    public final void mo54123e(zzkl zzklVar) {
        try {
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f71097b);
            zzc.zzn(zzklVar);
            this.f71098c.m54562a((zzlk) zzc.zzf());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.sunia.HTREnginev2.fjp
    /* renamed from: f */
    public final void mo54124f(@Nullable zzjz zzjzVar, int i) {
        try {
            zzks zzksVar = (zzks) this.f71097b.zzn();
            zzksVar.zza(i);
            this.f71097b = (zzku) zzksVar.zzf();
            mo54121c(zzjzVar);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.sunia.HTREnginev2.fjp
    /* renamed from: g */
    public final void mo54125g(@Nullable zzkd zzkdVar) {
        if (zzkdVar == null) {
            return;
        }
        try {
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f71097b);
            zzc.zzm(zzkdVar);
            this.f71098c.m54562a((zzlk) zzc.zzf());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }
}
