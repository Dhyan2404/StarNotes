package com.google.android.gms.internal.p124firebaseauthapi;

import java.lang.Enum;
import java.security.GeneralSecurityException;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzmh<E extends Enum<E>, O> {
    private final Map<E, O> zza;
    private final Map<O, E> zzb;

    public static <E extends Enum<E>, O> zzmk<E, O> zza() {
        return new zzmk<>();
    }

    private zzmh(Map<E, O> map, Map<O, E> map2) {
        this.zza = map;
        this.zzb = map2;
    }

    public final E zza(O o) throws GeneralSecurityException {
        E e = this.zzb.get(o);
        if (e != null) {
            return e;
        }
        throw new GeneralSecurityException("Unable to convert object enum: " + String.valueOf(o));
    }

    public final O zza(E e) throws GeneralSecurityException {
        O o = this.zza.get(e);
        if (o != null) {
            return o;
        }
        throw new GeneralSecurityException("Unable to convert proto enum: " + String.valueOf(e));
    }
}
