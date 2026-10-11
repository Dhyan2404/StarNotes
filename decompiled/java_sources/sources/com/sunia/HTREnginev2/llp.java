package com.sunia.HTREnginev2;

import com.google.android.gms.internal.measurement.zzs;
import com.google.android.gms.internal.measurement.zzv;
import com.google.android.gms.measurement.internal.zzgq;
import com.google.android.gms.measurement.internal.zzhl;
import java.util.List;

/* loaded from: classes5.dex */
public final class llp implements zzv {

    /* renamed from: a */
    public final /* synthetic */ zzhl f76588a;

    public llp(zzhl zzhlVar) {
        this.f76588a = zzhlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void zza(zzs zzsVar, String str, List<String> list, boolean z, boolean z2) {
        int i = mlp.f77732a[zzsVar.ordinal()];
        zzgq zzo = i != 1 ? i != 2 ? i != 3 ? i != 4 ? this.f76588a.zzj().zzo() : this.f76588a.zzj().zzp() : z ? this.f76588a.zzj().zzw() : !z2 ? this.f76588a.zzj().zzv() : this.f76588a.zzj().zzu() : z ? this.f76588a.zzj().zzn() : !z2 ? this.f76588a.zzj().zzm() : this.f76588a.zzj().zzg() : this.f76588a.zzj().zzc();
        int size = list.size();
        if (size == 1) {
            zzo.zza(str, list.get(0));
            return;
        }
        if (size == 2) {
            zzo.zza(str, list.get(0), list.get(1));
        } else if (size != 3) {
            zzo.zza(str);
        } else {
            zzo.zza(str, list.get(0), list.get(1), list.get(2));
        }
    }
}
