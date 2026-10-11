package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzbll implements zzbip {
    private final zzbjq zza;
    private final zzbhn zzb;
    private final zzbjs zzc;
    private final zzbky zzd;
    private final List zze;

    public zzbll(zzbjq zzbjqVar, zzbhn zzbhnVar, zzbjs zzbjsVar, zzbky zzbkyVar, List list) {
        this.zza = zzbjqVar;
        this.zzb = zzbhnVar;
        this.zzc = zzbjsVar;
        this.zzd = zzbkyVar;
        this.zze = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* bridge */ /* synthetic */ void zzb(Object obj, AccessibleObject accessibleObject) {
        if (true == Modifier.isStatic(((Member) accessibleObject).getModifiers())) {
            obj = null;
        }
        if (!zzbkj.zza(accessibleObject, obj)) {
            throw new zzbhz(zzbnj.zzd(accessibleObject, true).concat(" is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0221 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x020c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0106  */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v24, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.Map zzc(com.google.android.gms.internal.mlkit_vision_digital_ink.zzbht r41, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbnw r42, java.lang.Class r43, boolean r44, boolean r45) {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbll.zzc(com.google.android.gms.internal.mlkit_vision_digital_ink.zzbht, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbnw, java.lang.Class, boolean, boolean):java.util.Map");
    }

    private final boolean zzd(Field field, boolean z) {
        return (this.zzc.zzc(field.getType(), z) || this.zzc.zzd(field, z)) ? false : true;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbip
    public final zzbio zza(zzbht zzbhtVar, zzbnw zzbnwVar) {
        Class zzc = zzbnwVar.zzc();
        if (!Object.class.isAssignableFrom(zzc)) {
            return null;
        }
        int zze = zzbkj.zze(this.zze, zzc);
        if (zze != 4) {
            boolean z = zze == 3;
            return zzbnj.zzi(zzc) ? new zzblk(zzc, zzc(zzbhtVar, zzbnwVar, zzc, z, true), z) : new zzblj(this.zza.zza(zzbnwVar), zzc(zzbhtVar, zzbnwVar, zzc, z, false));
        }
        throw new zzbhz("ReflectionAccessFilter does not permit using reflection for " + String.valueOf(zzc) + ". Register a TypeAdapter for this type or adjust the access filter.");
    }
}
