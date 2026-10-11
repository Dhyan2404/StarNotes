package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Collection;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public final class zzaim {
    public static Collection zza(Collection collection, zzagh zzaghVar) {
        return new zzaik(collection, zzaghVar);
    }

    public static Collection zzb(Collection collection, zzaft zzaftVar) {
        return new zzail(collection, zzaftVar);
    }

    public static boolean zzc(Collection collection, @CheckForNull Object obj) {
        collection.getClass();
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }
}
