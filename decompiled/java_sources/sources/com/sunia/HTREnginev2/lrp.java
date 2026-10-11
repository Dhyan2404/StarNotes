package com.sunia.HTREnginev2;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zznm;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzgo;
import com.google.android.gms.measurement.internal.zznv;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public final class lrp extends kqp {

    /* renamed from: b */
    public String f76818b;

    /* renamed from: c */
    public Set<Integer> f76819c;

    /* renamed from: d */
    public Map<Integer, srp> f76820d;

    /* renamed from: e */
    public Long f76821e;

    /* renamed from: f */
    public Long f76822f;

    public lrp(zznv zznvVar) {
        super(zznvVar);
    }

    /* renamed from: b */
    public final srp m55507b(Integer num) {
        if (this.f76820d.containsKey(num)) {
            return this.f76820d.get(num);
        }
        srp srpVar = new srp(this, this.f76818b);
        this.f76820d.put(num, srpVar);
        return srpVar;
    }

    @WorkerThread
    /* renamed from: c */
    public final List<zzfy.zzd> m55508c(String str, List<zzfy.zzf> list, List<zzfy.zzo> list2, Long l, Long l2) {
        return m55509d(str, list, list2, l, l2, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0313 A[SYNTHETIC] */
    @androidx.annotation.WorkerThread
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.zzfy.zzd> m55509d(java.lang.String r24, java.util.List<com.google.android.gms.internal.measurement.zzfy.zzf> r25, java.util.List<com.google.android.gms.internal.measurement.zzfy.zzo> r26, java.lang.Long r27, java.lang.Long r28, boolean r29) {
        /*
            Method dump skipped, instructions count: 1014
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.lrp.m55509d(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long, boolean):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0113, code lost:
    
        r5 = zzj().zzu();
        r7 = com.google.android.gms.measurement.internal.zzgo.zza(r13.f76818b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0125, code lost:
    
        if (r6.zzi() == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0127, code lost:
    
        r8 = java.lang.Integer.valueOf(r6.zza());
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x012f, code lost:
    
        r5.zza("Invalid property filter ID. appId, id", r7, java.lang.String.valueOf(r8));
        r6 = false;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m55510e(java.util.List<com.google.android.gms.internal.measurement.zzfy.zzo> r14) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.lrp.m55510e(java.util.List):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public final void m55511f(List<zzfy.zzf> list, boolean z) {
        vhp vhpVar;
        int i;
        Map<Integer, List<zzfo.zzb>> map;
        long j;
        if (list.isEmpty()) {
            return;
        }
        String str = null;
        dsp dspVar = new dsp(this);
        ArrayMap arrayMap = new ArrayMap();
        for (zzfy.zzf zzfVar : list) {
            zzfy.zzf m53704a = dspVar.m53704a(this.f76818b, zzfVar);
            if (m53704a != null) {
                hgp zzh = zzh();
                String str2 = this.f76818b;
                String zzg = m53704a.zzg();
                vhp m54531n0 = zzh.m54531n0(str2, zzfVar.zzg());
                if (m54531n0 == null) {
                    zzh.zzj().zzu().zza("Event aggregate wasn't created during raw event logging. appId, event", zzgo.zza(str2), zzh.zzi().zza(zzg));
                    vhpVar = new vhp(str2, zzfVar.zzg(), 1L, 1L, 1L, zzfVar.zzd(), 0L, null, null, null, null);
                } else {
                    vhpVar = new vhp(m54531n0.f87510a, m54531n0.f87511b, m54531n0.f87512c + 1, m54531n0.f87513d + 1, m54531n0.f87514e + 1, m54531n0.f87515f, m54531n0.f87516g, m54531n0.f87517h, m54531n0.f87518i, m54531n0.f87519j, m54531n0.f87520k);
                }
                vhp vhpVar2 = vhpVar;
                zzh().m54548x(vhpVar2);
                if (!zznm.zza() || !zze().zzf(str, zzbh.zzcy) || !z) {
                    long j2 = vhpVar2.f87512c;
                    String zzg2 = m53704a.zzg();
                    Map<Integer, List<zzfo.zzb>> map2 = (Map) arrayMap.get(zzg2);
                    if (map2 == null) {
                        map2 = zzh().m54538r0(this.f76818b, zzg2);
                        arrayMap.put(zzg2, map2);
                    }
                    Map<Integer, List<zzfo.zzb>> map3 = map2;
                    Iterator<Integer> it2 = map3.keySet().iterator();
                    while (it2.hasNext()) {
                        int intValue = it2.next().intValue();
                        if (this.f76819c.contains(Integer.valueOf(intValue))) {
                            zzj().zzp().zza("Skipping failed audience ID", Integer.valueOf(intValue));
                        } else {
                            Iterator<zzfo.zzb> it3 = map3.get(Integer.valueOf(intValue)).iterator();
                            boolean z2 = true;
                            while (true) {
                                if (!it3.hasNext()) {
                                    i = intValue;
                                    map = map3;
                                    j = j2;
                                    break;
                                }
                                zzfo.zzb next = it3.next();
                                yrp yrpVar = new yrp(this, this.f76818b, intValue, next);
                                i = intValue;
                                map = map3;
                                j = j2;
                                z2 = yrpVar.m58481k(this.f76821e, this.f76822f, m53704a, j2, vhpVar2, m55512g(intValue, next.zzb()));
                                if (!z2) {
                                    this.f76819c.add(Integer.valueOf(i));
                                    break;
                                }
                                m55507b(Integer.valueOf(i)).m57256c(yrpVar);
                                intValue = i;
                                map3 = map;
                                j2 = j;
                            }
                            if (!z2) {
                                this.f76819c.add(Integer.valueOf(i));
                            }
                            map3 = map;
                            j2 = j;
                            str = null;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: g */
    public final boolean m55512g(int i, int i2) {
        srp srpVar = this.f76820d.get(Integer.valueOf(i));
        if (srpVar == null) {
            return false;
        }
        return srp.m57254b(srpVar).get(i2);
    }

    @NonNull
    /* renamed from: h */
    public final List<zzfy.zzd> m55513h() {
        ArrayList arrayList = new ArrayList();
        Set<Integer> keySet = this.f76820d.keySet();
        keySet.removeAll(this.f76819c);
        Iterator<Integer> it2 = keySet.iterator();
        while (it2.hasNext()) {
            int intValue = it2.next().intValue();
            srp srpVar = this.f76820d.get(Integer.valueOf(intValue));
            Preconditions.checkNotNull(srpVar);
            zzfy.zzd m57255a = srpVar.m57255a(intValue);
            arrayList.add(m57255a);
            hgp zzh = zzh();
            String str = this.f76818b;
            zzfy.zzm zzd = m57255a.zzd();
            zzh.zzal();
            zzh.zzt();
            Preconditions.checkNotEmpty(str);
            Preconditions.checkNotNull(zzd);
            byte[] zzca = zzd.zzca();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(intValue));
            contentValues.put("current_results", zzca);
            try {
                if (zzh.m54513e().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1) {
                    zzh.zzj().zzg().zza("Failed to insert filter results (got -1). appId", zzgo.zza(str));
                }
            } catch (SQLiteException e) {
                zzh.zzj().zzg().zza("Error storing filter results. appId", zzgo.zza(str), e);
            }
        }
        return arrayList;
    }

    @Override // com.sunia.HTREnginev2.kqp
    public final boolean zzc() {
        return false;
    }
}
