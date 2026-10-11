package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.EOFException;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes5.dex */
public final class zzbht {
    static final zzbhn zza = zzbhm.IDENTITY;
    static final zzbim zzb = zzbil.DOUBLE;
    static final zzbim zzc = zzbil.LAZILY_PARSED_NUMBER;
    public static final /* synthetic */ int zzm = 0;
    final List zzd;
    final zzbjs zze;
    final zzbhn zzf;
    final Map zzg;
    final List zzh;
    final List zzi;
    final zzbim zzj;
    final zzbim zzk;
    final List zzl;
    private final ThreadLocal zzn;
    private final ConcurrentMap zzo;
    private final zzbjq zzp;
    private final zzbky zzq;

    public zzbht() {
        zzbjs zzbjsVar = zzbjs.zza;
        throw null;
    }

    public final String toString() {
        return "{serializeNulls:false,factories:" + this.zzd + ",instanceCreators:" + this.zzp + "}";
    }

    public final zzbio zza(zzbnw zzbnwVar) {
        boolean z;
        zzbio zzbioVar = (zzbio) this.zzo.get(zzbnwVar);
        if (zzbioVar != null) {
            return zzbioVar;
        }
        Map map = (Map) this.zzn.get();
        if (map == null) {
            map = new HashMap();
            this.zzn.set(map);
            z = true;
        } else {
            z = false;
        }
        zzbhs zzbhsVar = (zzbhs) map.get(zzbnwVar);
        if (zzbhsVar != null) {
            return zzbhsVar;
        }
        try {
            zzbhs zzbhsVar2 = new zzbhs();
            map.put(zzbnwVar, zzbhsVar2);
            Iterator it2 = this.zzd.iterator();
            while (it2.hasNext()) {
                zzbio zza2 = ((zzbip) it2.next()).zza(this, zzbnwVar);
                if (zza2 != null) {
                    zzbio zzbioVar2 = (zzbio) this.zzo.putIfAbsent(zzbnwVar, zza2);
                    if (zzbioVar2 != null) {
                        zza2 = zzbioVar2;
                    }
                    zzbhsVar2.zzc(zza2);
                    return zza2;
                }
            }
            throw new IllegalArgumentException("GSON (${project.version}) cannot handle " + zzbnwVar.toString());
        } finally {
            map.remove(zzbnwVar);
            if (z) {
                this.zzn.remove();
            }
        }
    }

    public final zzbio zzb(zzbip zzbipVar, zzbnw zzbnwVar) {
        if (!this.zzd.contains(zzbipVar)) {
            zzbipVar = this.zzq;
        }
        boolean z = false;
        for (zzbip zzbipVar2 : this.zzd) {
            if (z) {
                zzbio zza2 = zzbipVar2.zza(this, zzbnwVar);
                if (zza2 != null) {
                    return zza2;
                }
            } else if (zzbipVar2 == zzbipVar) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(zzbnwVar)));
    }

    public final Object zzc(zzbny zzbnyVar, zzbnw zzbnwVar) throws zzbhz, zzbif {
        boolean zzr = zzbnyVar.zzr();
        boolean z = true;
        zzbnyVar.zzo(true);
        try {
            try {
                try {
                    try {
                        zzbnyVar.zzt();
                    } catch (EOFException e) {
                        e = e;
                    }
                    try {
                        return zza(zzbnwVar).zza(zzbnyVar);
                    } catch (EOFException e2) {
                        e = e2;
                        z = false;
                        if (!z) {
                            throw new zzbif(e);
                        }
                        zzbnyVar.zzo(zzr);
                        return null;
                    }
                } catch (IOException e3) {
                    throw new zzbif(e3);
                }
            } catch (AssertionError e4) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON ${project.version}): " + e4.getMessage());
                assertionError.initCause(e4);
                throw assertionError;
            } catch (IllegalStateException e5) {
                throw new zzbif(e5);
            }
        } finally {
            zzbnyVar.zzo(zzr);
        }
    }

    public zzbht(zzbjs zzbjsVar, zzbhn zzbhnVar, Map map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i, String str, int i2, int i3, List list, List list2, List list3, zzbim zzbimVar, zzbim zzbimVar2, List list4) {
        this.zzn = new ThreadLocal();
        this.zzo = new ConcurrentHashMap();
        this.zze = zzbjsVar;
        this.zzf = zzbhnVar;
        this.zzg = map;
        zzbjq zzbjqVar = new zzbjq(map, true, list4);
        this.zzp = zzbjqVar;
        this.zzh = list;
        this.zzi = list2;
        this.zzj = zzbimVar;
        this.zzk = zzbimVar2;
        this.zzl = list4;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzbnb.zzW);
        arrayList.add(zzblf.zzc(zzbimVar));
        arrayList.add(zzbjsVar);
        arrayList.addAll(list3);
        arrayList.add(zzbnb.zzC);
        arrayList.add(zzbnb.zzm);
        arrayList.add(zzbnb.zzg);
        arrayList.add(zzbnb.zzi);
        arrayList.add(zzbnb.zzk);
        zzbio zzbioVar = zzbnb.zzt;
        arrayList.add(zzbnb.zzb(Long.TYPE, Long.class, zzbioVar));
        arrayList.add(zzbnb.zzb(Double.TYPE, Double.class, new zzbho(this)));
        arrayList.add(zzbnb.zzb(Float.TYPE, Float.class, new zzbhp(this)));
        arrayList.add(zzblc.zzc(zzbimVar2));
        arrayList.add(zzbnb.zzo);
        arrayList.add(zzbnb.zzq);
        arrayList.add(zzbnb.zza(AtomicLong.class, new zzbin(new zzbhq(zzbioVar))));
        arrayList.add(zzbnb.zza(AtomicLongArray.class, new zzbin(new zzbhr(zzbioVar))));
        arrayList.add(zzbnb.zzs);
        arrayList.add(zzbnb.zzx);
        arrayList.add(zzbnb.zzE);
        arrayList.add(zzbnb.zzG);
        arrayList.add(zzbnb.zza(BigDecimal.class, zzbnb.zzz));
        arrayList.add(zzbnb.zza(BigInteger.class, zzbnb.zzA));
        arrayList.add(zzbnb.zza(zzbjv.class, zzbnb.zzB));
        arrayList.add(zzbnb.zzI);
        arrayList.add(zzbnb.zzK);
        arrayList.add(zzbnb.zzO);
        arrayList.add(zzbnb.zzQ);
        arrayList.add(zzbnb.zzU);
        arrayList.add(zzbnb.zzM);
        arrayList.add(zzbnb.zzd);
        arrayList.add(zzbkv.zza);
        arrayList.add(zzbnb.zzS);
        if (zzbnv.zza) {
            arrayList.add(zzbnv.zze);
            arrayList.add(zzbnv.zzd);
            arrayList.add(zzbnv.zzf);
        }
        arrayList.add(zzbkr.zza);
        arrayList.add(zzbnb.zzb);
        arrayList.add(new zzbkt(zzbjqVar));
        arrayList.add(new zzbla(zzbjqVar, false));
        zzbky zzbkyVar = new zzbky(zzbjqVar);
        this.zzq = zzbkyVar;
        arrayList.add(zzbkyVar);
        arrayList.add(zzbnb.zzX);
        arrayList.add(new zzbll(zzbjqVar, zzbhnVar, zzbjsVar, zzbkyVar, list4));
        this.zzd = Collections.unmodifiableList(arrayList);
    }
}
