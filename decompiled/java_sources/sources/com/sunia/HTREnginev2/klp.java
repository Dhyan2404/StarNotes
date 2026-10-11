package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zzhl;
import java.util.Map;

/* loaded from: classes5.dex */
public final class klp implements com.google.android.gms.internal.measurement.zzo {

    /* renamed from: a */
    public final /* synthetic */ String f75545a;

    /* renamed from: b */
    public final /* synthetic */ zzhl f75546b;

    public klp(zzhl zzhlVar, String str) {
        this.f75545a = str;
        this.f75546b = zzhlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzo
    public final String zza(String str) {
        Map map;
        map = this.f75546b.f29817b;
        Map map2 = (Map) map.get(this.f75545a);
        if (map2 == null || !map2.containsKey(str)) {
            return null;
        }
        return (String) map2.get(str);
    }
}
