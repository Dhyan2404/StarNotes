package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes5.dex */
public final class zzgh {

    /* renamed from: b */
    public static final AtomicReference<String[]> f29760b = new AtomicReference<>();

    /* renamed from: c */
    public static final AtomicReference<String[]> f29761c = new AtomicReference<>();

    /* renamed from: d */
    public static final AtomicReference<String[]> f29762d = new AtomicReference<>();

    /* renamed from: a */
    public final zzgk f29763a;

    public zzgh(zzgk zzgkVar) {
        this.f29763a = zzgkVar;
    }

    /* renamed from: a */
    public static String m22437a(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        Preconditions.checkNotNull(atomicReference);
        Preconditions.checkArgument(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (Objects.equals(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    if (strArr3[i] == null) {
                        strArr3[i] = strArr2[i] + MotionUtils.f31761c + strArr[i] + MotionUtils.f31762d;
                    }
                    str2 = strArr3[i];
                }
                return str2;
            }
        }
        return str;
    }

    /* renamed from: b */
    public final String m22438b(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(IteratorUtils.f104923a);
        for (Object obj : objArr) {
            String zza = obj instanceof Bundle ? zza((Bundle) obj) : String.valueOf(obj);
            if (zza != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(zza);
            }
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    public final String zza(Bundle bundle) {
        String valueOf;
        if (bundle == null) {
            return null;
        }
        if (!this.f29763a.zza()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb.length() != 8) {
                sb.append(", ");
            }
            sb.append(zzb(str));
            sb.append("=");
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                valueOf = m22438b(new Object[]{obj});
            } else if (obj instanceof Object[]) {
                valueOf = m22438b((Object[]) obj);
            } else if (obj instanceof ArrayList) {
                valueOf = m22438b(((ArrayList) obj).toArray());
            } else {
                valueOf = String.valueOf(obj);
            }
            sb.append(valueOf);
        }
        sb.append("}]");
        return sb.toString();
    }

    public final String zzb(String str) {
        if (str == null) {
            return null;
        }
        return !this.f29763a.zza() ? str : m22437a(str, zzjk.zzb, zzjk.zza, f29761c);
    }

    public final String zzc(String str) {
        if (str == null) {
            return null;
        }
        if (!this.f29763a.zza()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return m22437a(str, zzjj.zzb, zzjj.zza, f29762d);
        }
        return "experiment_id" + MotionUtils.f31761c + str + MotionUtils.f31762d;
    }

    public final String zza(zzbf zzbfVar) {
        String str = null;
        if (zzbfVar == null) {
            return null;
        }
        if (!this.f29763a.zza()) {
            return zzbfVar.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("origin=");
        sb.append(zzbfVar.zzc);
        sb.append(",name=");
        sb.append(zza(zzbfVar.zza));
        sb.append(",params=");
        zzbe zzbeVar = zzbfVar.zzb;
        if (zzbeVar != null) {
            if (!this.f29763a.zza()) {
                str = zzbeVar.toString();
            } else {
                str = zza(zzbeVar.zzb());
            }
        }
        sb.append(str);
        return sb.toString();
    }

    public final String zza(String str) {
        if (str == null) {
            return null;
        }
        return !this.f29763a.zza() ? str : m22437a(str, zzji.zzc, zzji.zza, f29760b);
    }
}
