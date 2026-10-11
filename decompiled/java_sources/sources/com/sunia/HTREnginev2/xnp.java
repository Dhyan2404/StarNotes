package com.sunia.HTREnginev2;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzjq;

/* loaded from: classes5.dex */
public final class xnp implements zqp {

    /* renamed from: a */
    public final /* synthetic */ zzjq f89891a;

    public xnp(zzjq zzjqVar) {
        this.f89891a = zzjqVar;
    }

    @Override // com.sunia.HTREnginev2.zqp
    public final void zza(String str, String str2, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.f89891a.zzb("auto", str2, bundle);
        } else {
            this.f89891a.zza("auto", str2, bundle, str);
        }
    }
}
