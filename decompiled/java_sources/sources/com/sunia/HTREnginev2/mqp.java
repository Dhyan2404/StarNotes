package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.google.android.gms.measurement.internal.zznt;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes5.dex */
public final class mqp {

    /* renamed from: a */
    public String f77902a;

    /* renamed from: b */
    public Map<String, String> f77903b;

    /* renamed from: c */
    @NonNull
    public zznt f77904c;

    public mqp(String str, zznt zzntVar) {
        this.f77902a = str;
        this.f77904c = zzntVar;
    }

    /* renamed from: a */
    public final zznt m55676a() {
        return this.f77904c;
    }

    /* renamed from: b */
    public final String m55677b() {
        return this.f77902a;
    }

    @NonNull
    /* renamed from: c */
    public final Map<String, String> m55678c() {
        Map<String, String> map = this.f77903b;
        return map == null ? Collections.emptyMap() : map;
    }

    public mqp(String str, Map<String, String> map, zznt zzntVar) {
        this.f77902a = str;
        this.f77903b = map;
        this.f77904c = zzntVar;
    }
}
