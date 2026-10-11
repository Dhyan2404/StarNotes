package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class zzbc {

    /* renamed from: a */
    public final String f29730a;

    /* renamed from: b */
    public final String f29731b;

    /* renamed from: c */
    public final String f29732c;

    /* renamed from: d */
    public final long f29733d;

    /* renamed from: e */
    public final long f29734e;

    /* renamed from: f */
    public final zzbe f29735f;

    public zzbc(zzhy zzhyVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzbe zzbeVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.f29730a = str2;
        this.f29731b = str3;
        this.f29732c = TextUtils.isEmpty(str) ? null : str;
        this.f29733d = j;
        this.f29734e = j2;
        if (j2 != 0 && j2 > j) {
            zzhyVar.zzj().zzu().zza("Event created with reverse previous/current timestamps. appId", zzgo.zza(str2));
        }
        if (bundle != null && !bundle.isEmpty()) {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it2 = bundle2.keySet().iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                if (next == null) {
                    zzhyVar.zzj().zzg().zza("Param name can't be null");
                    it2.remove();
                } else {
                    Object m22744F = zzhyVar.zzt().m22744F(next, bundle2.get(next));
                    if (m22744F == null) {
                        zzhyVar.zzj().zzu().zza("Param value can't be null", zzhyVar.zzk().zzb(next));
                        it2.remove();
                    } else {
                        zzhyVar.zzt().m22766m(bundle2, next, m22744F);
                    }
                }
            }
            zzbeVar = new zzbe(bundle2);
        } else {
            zzbeVar = new zzbe(new Bundle());
        }
        this.f29735f = zzbeVar;
    }

    /* renamed from: a */
    public final zzbc m22303a(zzhy zzhyVar, long j) {
        return new zzbc(zzhyVar, this.f29732c, this.f29730a, this.f29731b, this.f29733d, j, this.f29735f);
    }

    public final String toString() {
        return "Event{appId='" + this.f29730a + "', name='" + this.f29731b + "', params=" + String.valueOf(this.f29735f) + "}";
    }

    public zzbc(zzhy zzhyVar, String str, String str2, String str3, long j, long j2, zzbe zzbeVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzbeVar);
        this.f29730a = str2;
        this.f29731b = str3;
        this.f29732c = TextUtils.isEmpty(str) ? null : str;
        this.f29733d = j;
        this.f29734e = j2;
        if (j2 != 0 && j2 > j) {
            zzhyVar.zzj().zzu().zza("Event created with reverse previous/current timestamps. appId, name", zzgo.zza(str2), zzgo.zza(str3));
        }
        this.f29735f = zzbeVar;
    }
}
