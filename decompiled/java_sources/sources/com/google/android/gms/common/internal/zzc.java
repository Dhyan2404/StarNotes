package com.google.android.gms.common.internal;

import android.util.Log;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public abstract class zzc {

    /* renamed from: a */
    @Nullable
    public Object f29407a;

    /* renamed from: b */
    public boolean f29408b = false;

    /* renamed from: c */
    public final /* synthetic */ BaseGmsClient f29409c;

    public zzc(BaseGmsClient baseGmsClient, Object obj) {
        this.f29409c = baseGmsClient;
        this.f29407a = obj;
    }

    public abstract void zza(Object obj);

    public abstract void zzc();

    public final void zze() {
        Object obj;
        synchronized (this) {
            obj = this.f29407a;
            if (this.f29408b) {
                Log.w("GmsClient", "Callback proxy " + toString() + " being reused. This is not safe.");
            }
        }
        if (obj != null) {
            zza(obj);
        }
        synchronized (this) {
            this.f29408b = true;
        }
        zzg();
    }

    public final void zzf() {
        synchronized (this) {
            this.f29407a = null;
        }
    }

    public final void zzg() {
        ArrayList arrayList;
        ArrayList arrayList2;
        zzf();
        arrayList = this.f29409c.zzt;
        synchronized (arrayList) {
            arrayList2 = this.f29409c.zzt;
            arrayList2.remove(this);
        }
    }
}
