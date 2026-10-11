package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.AccessibleObject;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzbkj {
    public static boolean zza(AccessibleObject accessibleObject, Object obj) {
        return zzbki.zzb.zza(accessibleObject, obj);
    }

    public static boolean zzb(Class cls) {
        return zzf(cls.getName());
    }

    public static boolean zzc(Class cls) {
        String name = cls.getName();
        return zzf(name) || name.startsWith("kotlin.") || name.startsWith("kotlinx.") || name.startsWith("scala.");
    }

    public static boolean zzd(Class cls) {
        return zzg(cls.getName());
    }

    public static int zze(List list, Class cls) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            int zza = ((zzbik) it2.next()).zza(cls);
            if (zza != 2) {
                return zza;
            }
        }
        return 1;
    }

    private static boolean zzf(String str) {
        return str.startsWith("android.") || str.startsWith("androidx.") || zzg(str);
    }

    private static boolean zzg(String str) {
        return str.startsWith("java.") || str.startsWith("javax.");
    }
}
