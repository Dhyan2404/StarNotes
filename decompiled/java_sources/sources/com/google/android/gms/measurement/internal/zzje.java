package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzje {
    public static final zzje zza = new zzje(null, null, 100);

    /* renamed from: a */
    public final EnumMap<zza, zzjh> f29895a;

    /* renamed from: b */
    public final int f29896b;

    /* loaded from: classes5.dex */
    public enum zza {
        AD_STORAGE("ad_storage"),
        ANALYTICS_STORAGE("analytics_storage"),
        AD_USER_DATA("ad_user_data"),
        AD_PERSONALIZATION("ad_personalization");

        public final String zze;

        zza(String str) {
            this.zze = str;
        }
    }

    public zzje(EnumMap<zza, zzjh> enumMap, int i) {
        EnumMap<zza, zzjh> enumMap2 = new EnumMap<>((Class<zza>) zza.class);
        this.f29895a = enumMap2;
        enumMap2.putAll(enumMap);
        this.f29896b = i;
    }

    /* renamed from: a */
    public static char m22520a(zzjh zzjhVar) {
        if (zzjhVar == null) {
            return '-';
        }
        int ordinal = zzjhVar.ordinal();
        if (ordinal == 1) {
            return PhoneNumberUtil.f36455s;
        }
        if (ordinal != 2) {
            return ordinal != 3 ? '-' : '1';
        }
        return '0';
    }

    /* renamed from: b */
    public static zzjh m22521b(char c) {
        return c != '+' ? c != '0' ? c != '1' ? zzjh.UNINITIALIZED : zzjh.GRANTED : zzjh.DENIED : zzjh.POLICY;
    }

    /* renamed from: c */
    public static zzjh m22522c(Boolean bool) {
        return bool == null ? zzjh.UNINITIALIZED : bool.booleanValue() ? zzjh.GRANTED : zzjh.DENIED;
    }

    /* renamed from: d */
    public static zzjh m22523d(String str) {
        return str == null ? zzjh.UNINITIALIZED : str.equals("granted") ? zzjh.GRANTED : str.equals("denied") ? zzjh.DENIED : zzjh.UNINITIALIZED;
    }

    /* renamed from: e */
    public static String m22524e(int i) {
        return i != -30 ? i != -20 ? i != -10 ? i != 0 ? i != 30 ? i != 90 ? i != 100 ? "OTHER" : HwrRecognizerConstant.RECOGNIZER_UNKNOWN : "REMOTE_CONFIG" : "1P_INIT" : "1P_API" : "MANIFEST" : "API" : "TCF";
    }

    /* renamed from: f */
    public static String m22525f(zzjh zzjhVar) {
        int ordinal = zzjhVar.ordinal();
        if (ordinal == 2) {
            return "denied";
        }
        if (ordinal != 3) {
            return null;
        }
        return "granted";
    }

    public static boolean zza(int i, int i2) {
        return ((i == -20 && i2 == -30) || ((i == -30 && i2 == -20) || i == i2)) || i < i2;
    }

    public final boolean equals(Object obj) {
        zza[] zzaVarArr;
        if (!(obj instanceof zzje)) {
            return false;
        }
        zzje zzjeVar = (zzje) obj;
        zzaVarArr = zzjg.STORAGE.zzd;
        for (zza zzaVar : zzaVarArr) {
            if (this.f29895a.get(zzaVar) != zzjeVar.f29895a.get(zzaVar)) {
                return false;
            }
        }
        return this.f29896b == zzjeVar.f29896b;
    }

    public final int hashCode() {
        int i = this.f29896b * 17;
        Iterator<zzjh> it2 = this.f29895a.values().iterator();
        while (it2.hasNext()) {
            i = (i * 31) + it2.next().hashCode();
        }
        return i;
    }

    public final String toString() {
        zza[] zzaVarArr;
        StringBuilder sb = new StringBuilder("source=");
        sb.append(m22524e(this.f29896b));
        zzaVarArr = zzjg.STORAGE.zzd;
        for (zza zzaVar : zzaVarArr) {
            sb.append(",");
            sb.append(zzaVar.zze);
            sb.append("=");
            zzjh zzjhVar = this.f29895a.get(zzaVar);
            if (zzjhVar == null) {
                zzjhVar = zzjh.UNINITIALIZED;
            }
            sb.append(zzjhVar);
        }
        return sb.toString();
    }

    public final Bundle zzb() {
        Bundle bundle = new Bundle();
        for (Map.Entry<zza, zzjh> entry : this.f29895a.entrySet()) {
            String m22525f = m22525f(entry.getValue());
            if (m22525f != null) {
                bundle.putString(entry.getKey().zze, m22525f);
            }
        }
        return bundle;
    }

    public final zzjh zzc() {
        zzjh zzjhVar = this.f29895a.get(zza.AD_STORAGE);
        return zzjhVar == null ? zzjh.UNINITIALIZED : zzjhVar;
    }

    public final zzjh zzd() {
        zzjh zzjhVar = this.f29895a.get(zza.ANALYTICS_STORAGE);
        return zzjhVar == null ? zzjh.UNINITIALIZED : zzjhVar;
    }

    public final String zze() {
        int ordinal;
        StringBuilder sb = new StringBuilder("G1");
        for (zza zzaVar : zzjg.STORAGE.zza()) {
            zzjh zzjhVar = this.f29895a.get(zzaVar);
            char c = '-';
            if (zzjhVar != null && (ordinal = zzjhVar.ordinal()) != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        c = '0';
                    } else if (ordinal != 3) {
                    }
                }
                c = '1';
            }
            sb.append(c);
        }
        return sb.toString();
    }

    public final String zzf() {
        StringBuilder sb = new StringBuilder("G1");
        for (zza zzaVar : zzjg.STORAGE.zza()) {
            sb.append(m22520a(this.f29895a.get(zzaVar)));
        }
        return sb.toString();
    }

    public final boolean zzg() {
        return zza(zza.AD_STORAGE);
    }

    public final boolean zzh() {
        return zza(zza.ANALYTICS_STORAGE);
    }

    public final boolean zzi() {
        Iterator<zzjh> it2 = this.f29895a.values().iterator();
        while (it2.hasNext()) {
            if (it2.next() != zzjh.UNINITIALIZED) {
                return true;
            }
        }
        return false;
    }

    public final int zza() {
        return this.f29896b;
    }

    public static zzje zza(Bundle bundle, int i) {
        zza[] zzaVarArr;
        if (bundle == null) {
            return new zzje(null, null, i);
        }
        EnumMap enumMap = new EnumMap(zza.class);
        zzaVarArr = zzjg.STORAGE.zzd;
        for (zza zzaVar : zzaVarArr) {
            enumMap.put((EnumMap) zzaVar, (zza) m22523d(bundle.getString(zzaVar.zze)));
        }
        return new zzje(enumMap, i);
    }

    public final boolean zzc(zzje zzjeVar) {
        return zzb(zzjeVar, (zza[]) this.f29895a.keySet().toArray(new zza[0]));
    }

    public zzje(Boolean bool, Boolean bool2, int i) {
        EnumMap<zza, zzjh> enumMap = new EnumMap<>((Class<zza>) zza.class);
        this.f29895a = enumMap;
        enumMap.put((EnumMap<zza, zzjh>) zza.AD_STORAGE, (zza) m22522c(null));
        enumMap.put((EnumMap<zza, zzjh>) zza.ANALYTICS_STORAGE, (zza) m22522c(null));
        this.f29896b = i;
    }

    public static zzje zzb(String str) {
        return zza(str, 100);
    }

    public final zzje zzb(zzje zzjeVar) {
        zza[] zzaVarArr;
        EnumMap enumMap = new EnumMap(zza.class);
        zzaVarArr = zzjg.STORAGE.zzd;
        for (zza zzaVar : zzaVarArr) {
            zzjh zzjhVar = this.f29895a.get(zzaVar);
            if (zzjhVar == zzjh.UNINITIALIZED) {
                zzjhVar = zzjeVar.f29895a.get(zzaVar);
            }
            if (zzjhVar != null) {
                enumMap.put((EnumMap) zzaVar, (zza) zzjhVar);
            }
        }
        return new zzje(enumMap, this.f29896b);
    }

    public static zzje zza(zzjh zzjhVar, zzjh zzjhVar2, int i) {
        EnumMap enumMap = new EnumMap(zza.class);
        enumMap.put((EnumMap) zza.AD_STORAGE, (zza) zzjhVar);
        enumMap.put((EnumMap) zza.ANALYTICS_STORAGE, (zza) zzjhVar2);
        return new zzje(enumMap, -10);
    }

    public final boolean zzb(zzje zzjeVar, zza... zzaVarArr) {
        for (zza zzaVar : zzaVarArr) {
            zzjh zzjhVar = this.f29895a.get(zzaVar);
            zzjh zzjhVar2 = zzjeVar.f29895a.get(zzaVar);
            zzjh zzjhVar3 = zzjh.DENIED;
            if (zzjhVar == zzjhVar3 && zzjhVar2 != zzjhVar3) {
                return true;
            }
        }
        return false;
    }

    public static zzje zza(String str, int i) {
        EnumMap enumMap = new EnumMap(zza.class);
        if (str == null) {
            str = "";
        }
        zza[] zza2 = zzjg.STORAGE.zza();
        for (int i2 = 0; i2 < zza2.length; i2++) {
            zza zzaVar = zza2[i2];
            int i3 = i2 + 2;
            if (i3 < str.length()) {
                enumMap.put((EnumMap) zzaVar, (zza) m22521b(str.charAt(i3)));
            } else {
                enumMap.put((EnumMap) zzaVar, (zza) zzjh.UNINITIALIZED);
            }
        }
        return new zzje(enumMap, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzje zza(com.google.android.gms.measurement.internal.zzje r9) {
        /*
            r8 = this;
            java.util.EnumMap r0 = new java.util.EnumMap
            java.lang.Class<com.google.android.gms.measurement.internal.zzje$zza> r1 = com.google.android.gms.measurement.internal.zzje.zza.class
            r0.<init>(r1)
            com.google.android.gms.measurement.internal.zzjg r1 = com.google.android.gms.measurement.internal.zzjg.STORAGE
            com.google.android.gms.measurement.internal.zzje$zza[] r1 = com.google.android.gms.measurement.internal.zzjg.zza(r1)
            int r2 = r1.length
            r3 = 0
        Lf:
            if (r3 >= r2) goto L4d
            r4 = r1[r3]
            java.util.EnumMap<com.google.android.gms.measurement.internal.zzje$zza, com.google.android.gms.measurement.internal.zzjh> r5 = r8.f29895a
            java.lang.Object r5 = r5.get(r4)
            com.google.android.gms.measurement.internal.zzjh r5 = (com.google.android.gms.measurement.internal.zzjh) r5
            java.util.EnumMap<com.google.android.gms.measurement.internal.zzje$zza, com.google.android.gms.measurement.internal.zzjh> r6 = r9.f29895a
            java.lang.Object r6 = r6.get(r4)
            com.google.android.gms.measurement.internal.zzjh r6 = (com.google.android.gms.measurement.internal.zzjh) r6
            if (r5 != 0) goto L26
            goto L35
        L26:
            if (r6 != 0) goto L29
            goto L45
        L29:
            com.google.android.gms.measurement.internal.zzjh r7 = com.google.android.gms.measurement.internal.zzjh.UNINITIALIZED
            if (r5 != r7) goto L2e
            goto L35
        L2e:
            if (r6 != r7) goto L31
            goto L45
        L31:
            com.google.android.gms.measurement.internal.zzjh r7 = com.google.android.gms.measurement.internal.zzjh.POLICY
            if (r5 != r7) goto L37
        L35:
            r5 = r6
            goto L45
        L37:
            if (r6 != r7) goto L3a
            goto L45
        L3a:
            com.google.android.gms.measurement.internal.zzjh r7 = com.google.android.gms.measurement.internal.zzjh.DENIED
            if (r5 == r7) goto L44
            if (r6 != r7) goto L41
            goto L44
        L41:
            com.google.android.gms.measurement.internal.zzjh r5 = com.google.android.gms.measurement.internal.zzjh.GRANTED
            goto L45
        L44:
            r5 = r7
        L45:
            if (r5 == 0) goto L4a
            r0.put(r4, r5)
        L4a:
            int r3 = r3 + 1
            goto Lf
        L4d:
            com.google.android.gms.measurement.internal.zzje r8 = new com.google.android.gms.measurement.internal.zzje
            r9 = 100
            r8.<init>(r0, r9)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzje.zza(com.google.android.gms.measurement.internal.zzje):com.google.android.gms.measurement.internal.zzje");
    }

    public static String zza(Bundle bundle) {
        zza[] zzaVarArr;
        String string;
        zzaVarArr = zzjg.STORAGE.zzd;
        int length = zzaVarArr.length;
        int i = 0;
        while (true) {
            Boolean bool = null;
            if (i >= length) {
                return null;
            }
            zza zzaVar = zzaVarArr[i];
            if (bundle.containsKey(zzaVar.zze) && (string = bundle.getString(zzaVar.zze)) != null) {
                if (string.equals("granted")) {
                    bool = Boolean.TRUE;
                } else if (string.equals("denied")) {
                    bool = Boolean.FALSE;
                }
                if (bool == null) {
                    return string;
                }
            }
            i++;
        }
    }

    public final boolean zza(zzje zzjeVar, zza... zzaVarArr) {
        for (zza zzaVar : zzaVarArr) {
            if (!zzjeVar.zza(zzaVar) && zza(zzaVar)) {
                return true;
            }
        }
        return false;
    }

    public final boolean zza(zza zzaVar) {
        return this.f29895a.get(zzaVar) != zzjh.DENIED;
    }
}
