package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzblg extends zzbli {
    final /* synthetic */ boolean zza;
    final /* synthetic */ Method zzb;
    final /* synthetic */ Field zzc;
    final /* synthetic */ zzbio zzd;
    final /* synthetic */ zzbht zze;
    final /* synthetic */ zzbnw zzf;
    final /* synthetic */ boolean zzg;
    final /* synthetic */ boolean zzh;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzblg(zzbll zzbllVar, String str, String str2, boolean z, boolean z2, boolean z3, Method method, Field field, boolean z4, zzbio zzbioVar, zzbht zzbhtVar, zzbnw zzbnwVar, boolean z5, boolean z6) {
        super(str, str2, z, z2);
        this.zza = z3;
        this.zzb = method;
        this.zzc = field;
        this.zzd = zzbioVar;
        this.zze = zzbhtVar;
        this.zzf = zzbnwVar;
        this.zzg = z5;
        this.zzh = z6;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbli
    public final void zza(zzbny zzbnyVar, int i, Object[] objArr) throws IOException, zzbic {
        Object zza = this.zzd.zza(zzbnyVar);
        if (zza != null || !this.zzg) {
            objArr[i] = zza;
            return;
        }
        throw new zzbic("null is not allowed as value for record component '" + this.zzj + "' of primitive type; at path " + zzbnyVar.zze());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbli
    public final void zzb(zzbny zzbnyVar, Object obj) throws IOException, IllegalAccessException {
        Object zza = this.zzd.zza(zzbnyVar);
        if (zza == null && this.zzg) {
            return;
        }
        if (this.zza) {
            zzbll.zzb(obj, this.zzc);
        } else if (this.zzh) {
            throw new zzbhz("Cannot set value of 'static final' ".concat(zzbnj.zzd(this.zzc, false)));
        }
        this.zzc.set(obj, zza);
    }
}
