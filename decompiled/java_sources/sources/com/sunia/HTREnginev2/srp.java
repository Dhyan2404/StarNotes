package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzjt;
import com.google.android.gms.internal.measurement.zzoe;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzoo;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class srp {

    /* renamed from: a */
    public String f84513a;

    /* renamed from: b */
    public boolean f84514b;

    /* renamed from: c */
    public zzfy.zzm f84515c;

    /* renamed from: d */
    public BitSet f84516d;

    /* renamed from: e */
    public BitSet f84517e;

    /* renamed from: f */
    public Map<Integer, Long> f84518f;

    /* renamed from: g */
    public Map<Integer, List<Long>> f84519g;

    /* renamed from: h */
    public final /* synthetic */ lrp f84520h;

    /* renamed from: b */
    public static /* bridge */ /* synthetic */ BitSet m57254b(srp srpVar) {
        return srpVar.f84516d;
    }

    @NonNull
    /* renamed from: a */
    public final zzfy.zzd m57255a(int i) {
        ArrayList arrayList;
        List list;
        zzfy.zzd.zza zzb = zzfy.zzd.zzb();
        zzb.zza(i);
        zzb.zza(this.f84514b);
        zzfy.zzm zzmVar = this.f84515c;
        if (zzmVar != null) {
            zzb.zza(zzmVar);
        }
        zzfy.zzm.zza zzd = zzfy.zzm.zze().zzb(zzoo.m22695q(this.f84516d)).zzd(zzoo.m22695q(this.f84517e));
        if (this.f84518f == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(this.f84518f.size());
            Iterator<Integer> it2 = this.f84518f.keySet().iterator();
            while (it2.hasNext()) {
                int intValue = it2.next().intValue();
                Long l = this.f84518f.get(Integer.valueOf(intValue));
                if (l != null) {
                    arrayList.add((zzfy.zze) ((zzjt) zzfy.zze.zzc().zza(intValue).zza(l.longValue()).zzai()));
                }
            }
        }
        if (arrayList != null) {
            zzd.zza(arrayList);
        }
        if (this.f84519g == null) {
            list = Collections.emptyList();
        } else {
            ArrayList arrayList2 = new ArrayList(this.f84519g.size());
            for (Integer num : this.f84519g.keySet()) {
                zzfy.zzn.zza zza = zzfy.zzn.zzc().zza(num.intValue());
                List<Long> list2 = this.f84519g.get(num);
                if (list2 != null) {
                    Collections.sort(list2);
                    zza.zza(list2);
                }
                arrayList2.add((zzfy.zzn) ((zzjt) zza.zzai()));
            }
            list = arrayList2;
        }
        zzd.zzc(list);
        zzb.zza(zzd);
        return (zzfy.zzd) ((zzjt) zzb.zzai());
    }

    /* renamed from: c */
    public final void m57256c(@NonNull lfp lfpVar) {
        int mo55422a = lfpVar.mo55422a();
        Boolean bool = lfpVar.f76425c;
        if (bool != null) {
            this.f84517e.set(mo55422a, bool.booleanValue());
        }
        Boolean bool2 = lfpVar.f76426d;
        if (bool2 != null) {
            this.f84516d.set(mo55422a, bool2.booleanValue());
        }
        if (lfpVar.f76427e != null) {
            Long l = this.f84518f.get(Integer.valueOf(mo55422a));
            long longValue = lfpVar.f76427e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f84518f.put(Integer.valueOf(mo55422a), Long.valueOf(longValue));
            }
        }
        if (lfpVar.f76428f != null) {
            List<Long> list = this.f84519g.get(Integer.valueOf(mo55422a));
            if (list == null) {
                list = new ArrayList<>();
                this.f84519g.put(Integer.valueOf(mo55422a), list);
            }
            if (lfpVar.mo55424j()) {
                list.clear();
            }
            if (zzoe.zza() && this.f84520h.zze().zzf(this.f84513a, zzbh.zzbp) && lfpVar.mo55423i()) {
                list.clear();
            }
            if (!zzoe.zza() || !this.f84520h.zze().zzf(this.f84513a, zzbh.zzbp)) {
                list.add(Long.valueOf(lfpVar.f76428f.longValue() / 1000));
                return;
            }
            long longValue2 = lfpVar.f76428f.longValue() / 1000;
            if (list.contains(Long.valueOf(longValue2))) {
                return;
            }
            list.add(Long.valueOf(longValue2));
        }
    }

    public srp(lrp lrpVar, String str) {
        this.f84520h = lrpVar;
        this.f84513a = str;
        this.f84514b = true;
        this.f84516d = new BitSet();
        this.f84517e = new BitSet();
        this.f84518f = new ArrayMap();
        this.f84519g = new ArrayMap();
    }

    public srp(lrp lrpVar, String str, zzfy.zzm zzmVar, BitSet bitSet, BitSet bitSet2, Map<Integer, Long> map, Map<Integer, Long> map2) {
        this.f84520h = lrpVar;
        this.f84513a = str;
        this.f84516d = bitSet;
        this.f84517e = bitSet2;
        this.f84518f = map;
        this.f84519g = new ArrayMap();
        if (map2 != null) {
            for (Integer num : map2.keySet()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(map2.get(num));
                this.f84519g.put(num, arrayList);
            }
        }
        this.f84514b = false;
        this.f84515c = zzmVar;
    }
}
