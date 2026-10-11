package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzhy;
import com.google.android.gms.measurement.internal.zznv;

/* loaded from: classes5.dex */
public final class uqp implements zqp {

    /* renamed from: a */
    public final /* synthetic */ zznv f86765a;

    public uqp(zznv zznvVar) {
        this.f86765a = zznvVar;
    }

    @Override // com.sunia.HTREnginev2.zqp
    public final void zza(String str, String str2, Bundle bundle) {
        zzhy zzhyVar;
        zzhy zzhyVar2;
        if (!TextUtils.isEmpty(str)) {
            this.f86765a.zzl().zzb(new wqp(this, str, str2, bundle));
            return;
        }
        zzhyVar = this.f86765a.f30004l;
        if (zzhyVar != null) {
            zzhyVar2 = this.f86765a.f30004l;
            zzhyVar2.zzj().zzg().zza("AppId not known when logging event", str2);
        }
    }
}
