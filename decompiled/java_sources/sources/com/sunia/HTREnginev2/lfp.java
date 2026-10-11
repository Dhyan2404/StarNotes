package com.sunia.HTREnginev2;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.android.gms.measurement.internal.zzgo;
import com.google.android.gms.measurement.internal.zzoo;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes5.dex */
public abstract class lfp {

    /* renamed from: a */
    public String f76423a;

    /* renamed from: b */
    public int f76424b;

    /* renamed from: c */
    public Boolean f76425c;

    /* renamed from: d */
    public Boolean f76426d;

    /* renamed from: e */
    public Long f76427e;

    /* renamed from: f */
    public Long f76428f;

    public lfp(String str, int i) {
        this.f76423a = str;
        this.f76424b = i;
    }

    /* renamed from: b */
    public static Boolean m55415b(double d, zzfo.zzd zzdVar) {
        try {
            return m55421h(new BigDecimal(d), zzdVar, Math.ulp(d));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* renamed from: c */
    public static Boolean m55416c(long j, zzfo.zzd zzdVar) {
        try {
            return m55421h(new BigDecimal(j), zzdVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @VisibleForTesting
    /* renamed from: d */
    public static Boolean m55417d(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* renamed from: e */
    public static Boolean m55418e(String str, zzfo.zzd zzdVar) {
        if (!zzoo.m22688I(str)) {
            return null;
        }
        try {
            return m55421h(new BigDecimal(str), zzdVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* renamed from: f */
    public static Boolean m55419f(String str, zzfo.zzf.zzb zzbVar, boolean z, String str2, List<String> list, String str3, zzgo zzgoVar) {
        if (str == null) {
            return null;
        }
        if (zzbVar == zzfo.zzf.zzb.IN_LIST) {
            if (list == null || list.isEmpty()) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z && zzbVar != zzfo.zzf.zzb.REGEXP) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (vrp.f87867a[zzbVar.ordinal()]) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    if (zzgoVar != null) {
                        zzgoVar.zzu().zza("Invalid regular expression in REGEXP audience filter. expression", str3);
                    }
                    return null;
                }
            case 2:
                return Boolean.valueOf(str.startsWith(str2));
            case 3:
                return Boolean.valueOf(str.endsWith(str2));
            case 4:
                return Boolean.valueOf(str.contains(str2));
            case 5:
                return Boolean.valueOf(str.equals(str2));
            case 6:
                if (list == null) {
                    return null;
                }
                return Boolean.valueOf(list.contains(str));
            default:
                return null;
        }
    }

    @VisibleForTesting
    /* renamed from: g */
    public static Boolean m55420g(String str, zzfo.zzf zzfVar, zzgo zzgoVar) {
        List<String> list;
        Preconditions.checkNotNull(zzfVar);
        if (str == null || !zzfVar.zzj() || zzfVar.zzb() == zzfo.zzf.zzb.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        zzfo.zzf.zzb zzb = zzfVar.zzb();
        zzfo.zzf.zzb zzbVar = zzfo.zzf.zzb.IN_LIST;
        if (zzb == zzbVar) {
            if (zzfVar.zza() == 0) {
                return null;
            }
        } else if (!zzfVar.zzi()) {
            return null;
        }
        zzfo.zzf.zzb zzb2 = zzfVar.zzb();
        boolean zzg = zzfVar.zzg();
        String zze = (zzg || zzb2 == zzfo.zzf.zzb.REGEXP || zzb2 == zzbVar) ? zzfVar.zze() : zzfVar.zze().toUpperCase(Locale.ENGLISH);
        if (zzfVar.zza() == 0) {
            list = null;
        } else {
            List<String> zzf = zzfVar.zzf();
            if (!zzg) {
                ArrayList arrayList = new ArrayList(zzf.size());
                Iterator<String> it2 = zzf.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next().toUpperCase(Locale.ENGLISH));
                }
                zzf = Collections.unmodifiableList(arrayList);
            }
            list = zzf;
        }
        return m55419f(str, zzb2, zzg, zze, list, zzb2 == zzfo.zzf.zzb.REGEXP ? zze : null, zzgoVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0080, code lost:
    
        if (r3 != null) goto L36;
     */
    @androidx.annotation.VisibleForTesting
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Boolean m55421h(java.math.BigDecimal r8, com.google.android.gms.internal.measurement.zzfo.zzd r9, double r10) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.lfp.m55421h(java.math.BigDecimal, com.google.android.gms.internal.measurement.zzfo$zzd, double):java.lang.Boolean");
    }

    /* renamed from: a */
    public abstract int mo55422a();

    /* renamed from: i */
    public abstract boolean mo55423i();

    /* renamed from: j */
    public abstract boolean mo55424j();
}
