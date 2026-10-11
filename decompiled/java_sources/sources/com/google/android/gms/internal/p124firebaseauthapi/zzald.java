package com.google.android.gms.internal.p124firebaseauthapi;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzald {
    private static final zzald zza = new zzald();
    private final ConcurrentMap<Class<?>, zzalh<?>> zzc = new ConcurrentHashMap();
    private final zzalg zzb = new zzakd();

    private zzald() {
    }

    public static zzald zza() {
        return zza;
    }

    public final <T> zzalh<T> zza(Class<T> cls) {
        zzajh.zza(cls, "messageType");
        zzalh<T> zzalhVar = (zzalh) this.zzc.get(cls);
        if (zzalhVar != null) {
            return zzalhVar;
        }
        zzalh<T> zza2 = this.zzb.zza(cls);
        zzajh.zza(cls, "messageType");
        zzajh.zza(zza2, "schema");
        zzalh<T> zzalhVar2 = (zzalh) this.zzc.putIfAbsent(cls, zza2);
        return zzalhVar2 != null ? zzalhVar2 : zza2;
    }

    public final <T> zzalh<T> zza(T t) {
        return zza((Class) t.getClass());
    }
}
