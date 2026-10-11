package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes5.dex */
public final class zzakq {
    public static List zza(List list) {
        return list instanceof zzajm ? ((zzajm) list).zza() : list instanceof zzakp ? ((zzakp) list).zza() : list instanceof RandomAccess ? new zzakn(list) : new zzakp(list);
    }
}
