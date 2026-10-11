package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbwl extends zzbwv {
    public zzbwl(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwv
    public final void zza() {
        if (!zzj()) {
            for (int i = 0; i < zzb(); i++) {
                ((zzbtv) zzg(i).getKey()).zzg();
            }
            Iterator it2 = zzc().iterator();
            while (it2.hasNext()) {
                ((zzbtv) ((Map.Entry) it2.next()).getKey()).zzg();
            }
        }
        super.zza();
    }
}
