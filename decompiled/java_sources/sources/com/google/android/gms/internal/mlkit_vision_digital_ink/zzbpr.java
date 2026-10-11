package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.mlkit.common.sdkinternal.LazyInstanceMap;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.common.sdkinternal.SharedPrefManager;

/* loaded from: classes5.dex */
final class zzbpr extends LazyInstanceMap {
    private zzbpr() {
    }

    @Override // com.google.mlkit.common.sdkinternal.LazyInstanceMap
    public final /* bridge */ /* synthetic */ Object create(Object obj) {
        zzbpc zzbpcVar = (zzbpc) obj;
        MlKitContext mlKitContext = MlKitContext.getInstance();
        return new zzbph(mlKitContext.getApplicationContext(), (SharedPrefManager) mlKitContext.get(SharedPrefManager.class), new zzbpd(MlKitContext.getInstance().getApplicationContext(), zzbpcVar), zzbpcVar.zzb());
    }

    public /* synthetic */ zzbpr(zzbpq zzbpqVar) {
    }
}
