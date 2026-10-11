package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzbhu {
    private final zzbjs zza = zzbjs.zza;
    private zzbhn zzb = zzbhm.IDENTITY;
    private final Map zzc = new HashMap();
    private final List zzd = new ArrayList();
    private final List zze = new ArrayList();
    private final zzbim zzf;
    private final zzbim zzg;
    private final LinkedList zzh;

    public zzbhu() {
        int i = zzbht.zzm;
        this.zzf = zzbht.zzb;
        this.zzg = zzbht.zzc;
        this.zzh = new LinkedList();
    }

    public final zzbht zza() {
        ArrayList arrayList = new ArrayList(this.zzd.size() + this.zze.size() + 3);
        arrayList.addAll(this.zzd);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.zze);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        boolean z = zzbnv.zza;
        return new zzbht(this.zza, this.zzb, new HashMap(this.zzc), false, false, false, true, false, false, false, true, 1, null, 2, 2, new ArrayList(this.zzd), new ArrayList(this.zze), arrayList, this.zzf, this.zzg, new ArrayList(this.zzh));
    }

    public final zzbhu zzb(zzbhn zzbhnVar) {
        zzbhnVar.getClass();
        this.zzb = zzbhnVar;
        return this;
    }
}
