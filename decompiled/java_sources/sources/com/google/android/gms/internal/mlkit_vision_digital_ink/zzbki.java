package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.AccessibleObject;

/* loaded from: classes5.dex */
abstract class zzbki {
    public static final zzbki zzb;

    static {
        zzbki zzbkiVar = null;
        if (zzbjt.zza()) {
            try {
                zzbkiVar = new zzbkf(AccessibleObject.class.getDeclaredMethod("canAccess", Object.class));
            } catch (NoSuchMethodException unused) {
            }
        }
        if (zzbkiVar == null) {
            zzbkiVar = new zzbkg();
        }
        zzb = zzbkiVar;
    }

    public /* synthetic */ zzbki(zzbkh zzbkhVar) {
    }

    public abstract boolean zza(AccessibleObject accessibleObject, Object obj);
}
