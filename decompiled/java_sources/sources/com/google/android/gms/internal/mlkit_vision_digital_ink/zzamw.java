package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;
import java.util.Set;

/* loaded from: classes5.dex */
public final class zzamw {
    private static final zzams zza = new zzamu();
    private static final zzamr zzb = new zzamv();

    public static zzamo zza(Set set) {
        zzamo zzamoVar = new zzamo(zza, null);
        zzamoVar.zza(zzb);
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            zzamoVar.zzg((zzamf) it2.next());
        }
        return zzamoVar;
    }
}
