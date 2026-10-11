package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes5.dex */
final class zzbvd extends zzbvh {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public /* synthetic */ zzbvd(zzbvc zzbvcVar) {
        super(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static List zzf(Object obj, long j, int i) {
        zzbva zzbvaVar;
        List list = (List) zzbxm.zzf(obj, j);
        if (list.isEmpty()) {
            List zzbvaVar2 = list instanceof zzbvb ? new zzbva(i) : ((list instanceof zzbwd) && (list instanceof zzbuq)) ? ((zzbuq) list).zzd(i) : new ArrayList(i);
            zzbxm.zzs(obj, j, zzbvaVar2);
            return zzbvaVar2;
        }
        if (zza.isAssignableFrom(list.getClass())) {
            ArrayList arrayList = new ArrayList(list.size() + i);
            arrayList.addAll(list);
            zzbxm.zzs(obj, j, arrayList);
            zzbvaVar = arrayList;
        } else {
            if (!(list instanceof zzbxh)) {
                if (!(list instanceof zzbwd) || !(list instanceof zzbuq)) {
                    return list;
                }
                zzbuq zzbuqVar = (zzbuq) list;
                if (zzbuqVar.zzc()) {
                    return list;
                }
                zzbuq zzd = zzbuqVar.zzd(list.size() + i);
                zzbxm.zzs(obj, j, zzd);
                return zzd;
            }
            zzbva zzbvaVar3 = new zzbva(list.size() + i);
            zzbvaVar3.addAll(zzbvaVar3.size(), (zzbxh) list);
            zzbxm.zzs(obj, j, zzbvaVar3);
            zzbvaVar = zzbvaVar3;
        }
        return zzbvaVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvh
    public final List zza(Object obj, long j) {
        return zzf(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvh
    public final void zzb(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) zzbxm.zzf(obj, j);
        if (list instanceof zzbvb) {
            unmodifiableList = ((zzbvb) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzbwd) && (list instanceof zzbuq)) {
                zzbuq zzbuqVar = (zzbuq) list;
                if (zzbuqVar.zzc()) {
                    zzbuqVar.zzb();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        zzbxm.zzs(obj, j, unmodifiableList);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvh
    public final void zzc(Object obj, Object obj2, long j) {
        List list = (List) zzbxm.zzf(obj2, j);
        List zzf = zzf(obj, j, list.size());
        int size = zzf.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            zzf.addAll(list);
        }
        if (size > 0) {
            list = zzf;
        }
        zzbxm.zzs(obj, j, list);
    }

    private zzbvd() {
        super(null);
    }
}
