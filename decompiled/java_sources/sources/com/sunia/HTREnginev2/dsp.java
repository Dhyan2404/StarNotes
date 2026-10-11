package com.sunia.HTREnginev2;

import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzjt;
import com.google.android.gms.measurement.internal.zzoo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public final class dsp {

    /* renamed from: a */
    public zzfy.zzf f68197a;

    /* renamed from: b */
    public Long f68198b;

    /* renamed from: c */
    public long f68199c;

    /* renamed from: d */
    public final /* synthetic */ lrp f68200d;

    /* renamed from: a */
    public final zzfy.zzf m53704a(String str, zzfy.zzf zzfVar) {
        Object obj;
        String zzg = zzfVar.zzg();
        List<zzfy.zzh> zzh = zzfVar.zzh();
        this.f68200d.mo22451g_();
        Long l = (Long) zzoo.m22687H(zzfVar, "_eid");
        boolean z = l != null;
        if (z && zzg.equals("_ep")) {
            Preconditions.checkNotNull(l);
            this.f68200d.mo22451g_();
            zzg = (String) zzoo.m22687H(zzfVar, "_en");
            if (TextUtils.isEmpty(zzg)) {
                this.f68200d.zzj().zzn().zza("Extra parameter without an event name. eventId", l);
                return null;
            }
            if (this.f68197a == null || this.f68198b == null || l.longValue() != this.f68198b.longValue()) {
                Pair<zzfy.zzf, Long> m54525k = this.f68200d.zzh().m54525k(str, l);
                if (m54525k == null || (obj = m54525k.first) == null) {
                    this.f68200d.zzj().zzn().zza("Extra parameter without existing main event. eventName, eventId", zzg, l);
                    return null;
                }
                this.f68197a = (zzfy.zzf) obj;
                this.f68199c = ((Long) m54525k.second).longValue();
                this.f68200d.mo22451g_();
                this.f68198b = (Long) zzoo.m22687H(this.f68197a, "_eid");
            }
            long j = this.f68199c - 1;
            this.f68199c = j;
            if (j <= 0) {
                hgp zzh2 = this.f68200d.zzh();
                zzh2.zzt();
                zzh2.zzj().zzp().zza("Clearing complex main event info. appId", str);
                try {
                    zzh2.m54513e().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                } catch (SQLiteException e) {
                    zzh2.zzj().zzg().zza("Error clearing complex main event", e);
                }
            } else {
                this.f68200d.zzh().m54505P(str, l, this.f68199c, this.f68197a);
            }
            ArrayList arrayList = new ArrayList();
            for (zzfy.zzh zzhVar : this.f68197a.zzh()) {
                this.f68200d.mo22451g_();
                if (zzoo.m22691h(zzfVar, zzhVar.zzg()) == null) {
                    arrayList.add(zzhVar);
                }
            }
            if (arrayList.isEmpty()) {
                this.f68200d.zzj().zzn().zza("No unique parameters in main event. eventName", zzg);
            } else {
                arrayList.addAll(zzh);
                zzh = arrayList;
            }
        } else if (z) {
            this.f68198b = l;
            this.f68197a = zzfVar;
            this.f68200d.mo22451g_();
            long longValue = ((Long) zzoo.m22693l(zzfVar, "_epc", 0L)).longValue();
            this.f68199c = longValue;
            if (longValue <= 0) {
                this.f68200d.zzj().zzn().zza("Complex event with zero extra param count. eventName", zzg);
            } else {
                this.f68200d.zzh().m54505P(str, (Long) Preconditions.checkNotNull(l), this.f68199c, zzfVar);
            }
        }
        return (zzfy.zzf) ((zzjt) zzfVar.zzcd().zza(zzg).zzd().zza(zzh).zzai());
    }

    public dsp(lrp lrpVar) {
        this.f68200d = lrpVar;
    }
}
