package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.Method;

/* loaded from: classes5.dex */
final class zzbkm extends zzbkp {
    final /* synthetic */ Method zza;
    final /* synthetic */ int zzb;

    public zzbkm(Method method, int i) {
        this.zza = method;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbkp
    public final Object zza(Class cls) throws Exception {
        zzbkp.zzb(cls);
        return this.zza.invoke(null, cls, Integer.valueOf(this.zzb));
    }
}
