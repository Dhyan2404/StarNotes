package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzje;
import com.sunia.HTREnginev2.uhp;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class zzax {

    /* renamed from: f */
    public static final zzax f29719f = new zzax(null, 100);

    /* renamed from: a */
    public final int f29720a;

    /* renamed from: b */
    public final String f29721b;

    /* renamed from: c */
    public final Boolean f29722c;

    /* renamed from: d */
    public final String f29723d;

    /* renamed from: e */
    public final EnumMap<zzje.zza, zzjh> f29724e;

    public zzax(Boolean bool, int i) {
        this((Boolean) null, i, (Boolean) null, (String) null);
    }

    /* renamed from: a */
    public static zzax m22295a(zzjh zzjhVar, int i) {
        EnumMap enumMap = new EnumMap(zzje.zza.class);
        enumMap.put((EnumMap) zzje.zza.AD_USER_DATA, (zzje.zza) zzjhVar);
        return new zzax((EnumMap<zzje.zza, zzjh>) enumMap, -10, (Boolean) null, (String) null);
    }

    /* renamed from: b */
    public final String m22296b() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f29720a);
        for (zzje.zza zzaVar : zzjg.DMA.zza()) {
            sb.append(":");
            sb.append(zzje.m22520a(this.f29724e.get(zzaVar)));
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzax)) {
            return false;
        }
        zzax zzaxVar = (zzax) obj;
        if (this.f29721b.equalsIgnoreCase(zzaxVar.f29721b) && Objects.equals(this.f29722c, zzaxVar.f29722c)) {
            return Objects.equals(this.f29723d, zzaxVar.f29723d);
        }
        return false;
    }

    public final int hashCode() {
        Boolean bool = this.f29722c;
        int i = bool == null ? 3 : bool == Boolean.TRUE ? 7 : 13;
        String str = this.f29723d;
        return this.f29721b.hashCode() + (i * 29) + ((str == null ? 17 : str.hashCode()) * 137);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(zzje.m22524e(this.f29720a));
        for (zzje.zza zzaVar : zzjg.DMA.zza()) {
            sb.append(",");
            sb.append(zzaVar.zze);
            sb.append("=");
            zzjh zzjhVar = this.f29724e.get(zzaVar);
            if (zzjhVar == null) {
                sb.append("uninitialized");
            } else {
                int i = uhp.f86501a[zzjhVar.ordinal()];
                if (i == 1) {
                    sb.append("uninitialized");
                } else if (i == 2) {
                    sb.append("eu_consent_policy");
                } else if (i == 3) {
                    sb.append("denied");
                } else if (i == 4) {
                    sb.append("granted");
                }
            }
        }
        if (this.f29722c != null) {
            sb.append(",isDmaRegion=");
            sb.append(this.f29722c);
        }
        if (this.f29723d != null) {
            sb.append(",cpsDisplayStr=");
            sb.append(this.f29723d);
        }
        return sb.toString();
    }

    public final int zza() {
        return this.f29720a;
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        for (Map.Entry<zzje.zza, zzjh> entry : this.f29724e.entrySet()) {
            String m22525f = zzje.m22525f(entry.getValue());
            if (m22525f != null) {
                bundle.putString(entry.getKey().zze, m22525f);
            }
        }
        Boolean bool = this.f29722c;
        if (bool != null) {
            bundle.putString("is_dma_region", bool.toString());
        }
        String str = this.f29723d;
        if (str != null) {
            bundle.putString("cps_display_str", str);
        }
        return bundle;
    }

    public final zzjh zzc() {
        zzjh zzjhVar = this.f29724e.get(zzje.zza.AD_USER_DATA);
        return zzjhVar == null ? zzjh.UNINITIALIZED : zzjhVar;
    }

    public final Boolean zzd() {
        return this.f29722c;
    }

    public final String zze() {
        return this.f29723d;
    }

    public final String zzf() {
        return this.f29721b;
    }

    public final boolean zzg() {
        Iterator<zzjh> it2 = this.f29724e.values().iterator();
        while (it2.hasNext()) {
            if (it2.next() != zzjh.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }

    public zzax(Boolean bool, int i, Boolean bool2, String str) {
        EnumMap<zzje.zza, zzjh> enumMap = new EnumMap<>((Class<zzje.zza>) zzje.zza.class);
        this.f29724e = enumMap;
        enumMap.put((EnumMap<zzje.zza, zzjh>) zzje.zza.AD_USER_DATA, (zzje.zza) zzje.m22522c(bool));
        this.f29720a = i;
        this.f29721b = m22296b();
        this.f29722c = bool2;
        this.f29723d = str;
    }

    public static zzax zza(Bundle bundle, int i) {
        if (bundle == null) {
            return new zzax(null, i);
        }
        EnumMap enumMap = new EnumMap(zzje.zza.class);
        for (zzje.zza zzaVar : zzjg.DMA.zza()) {
            enumMap.put((EnumMap) zzaVar, (zzje.zza) zzje.m22523d(bundle.getString(zzaVar.zze)));
        }
        return new zzax((EnumMap<zzje.zza, zzjh>) enumMap, i, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    public zzax(EnumMap<zzje.zza, zzjh> enumMap, int i, Boolean bool, String str) {
        EnumMap<zzje.zza, zzjh> enumMap2 = new EnumMap<>((Class<zzje.zza>) zzje.zza.class);
        this.f29724e = enumMap2;
        enumMap2.putAll(enumMap);
        this.f29720a = i;
        this.f29721b = m22296b();
        this.f29722c = bool;
        this.f29723d = str;
    }

    public static zzax zza(String str) {
        if (str != null && str.length() > 0) {
            String[] split = str.split(":");
            int parseInt = Integer.parseInt(split[0]);
            EnumMap enumMap = new EnumMap(zzje.zza.class);
            zzje.zza[] zza = zzjg.DMA.zza();
            int length = zza.length;
            int i = 1;
            int i2 = 0;
            while (i2 < length) {
                enumMap.put((EnumMap) zza[i2], (zzje.zza) zzje.m22521b(split[i].charAt(0)));
                i2++;
                i++;
            }
            return new zzax((EnumMap<zzje.zza, zzjh>) enumMap, parseInt, (Boolean) null, (String) null);
        }
        return f29719f;
    }

    public static Boolean zza(Bundle bundle) {
        zzjh m22523d;
        if (bundle == null || (m22523d = zzje.m22523d(bundle.getString("ad_personalization"))) == null) {
            return null;
        }
        int i = uhp.f86501a[m22523d.ordinal()];
        if (i == 3) {
            return Boolean.FALSE;
        }
        if (i != 4) {
            return null;
        }
        return Boolean.TRUE;
    }
}
