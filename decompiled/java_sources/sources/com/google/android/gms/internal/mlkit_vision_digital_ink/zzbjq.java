package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.Modifier;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzbjq {
    private final Map zza;
    private final List zzb;

    public zzbjq(Map map, boolean z, List list) {
        this.zza = map;
        this.zzb = list;
    }

    public static String zzb(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
        }
        if (Modifier.isAbstract(modifiers)) {
            return "Abstract classes can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: ".concat(cls.getName());
        }
        return null;
    }

    public final String toString() {
        return this.zza.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0171 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.mlkit_vision_digital_ink.zzbke zza(com.google.android.gms.internal.mlkit_vision_digital_ink.zzbnw r9) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbjq.zza(com.google.android.gms.internal.mlkit_vision_digital_ink.zzbnw):com.google.android.gms.internal.mlkit_vision_digital_ink.zzbke");
    }
}
