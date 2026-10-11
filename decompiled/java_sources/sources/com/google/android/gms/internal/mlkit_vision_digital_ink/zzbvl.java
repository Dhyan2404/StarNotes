package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbvl implements zzbwj {
    private static final zzbvs zza = new zzbvj();
    private final zzbvs zzb;

    public zzbvl() {
        zzbvs zzbvsVar;
        zzbvs[] zzbvsVarArr = new zzbvs[2];
        zzbvsVarArr[0] = zzbua.zza();
        try {
            zzbvsVar = (zzbvs) Class.forName("com.google.protobuf.h").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zzbvsVar = zza;
        }
        zzbvsVarArr[1] = zzbvsVar;
        zzbvk zzbvkVar = new zzbvk(zzbvsVarArr);
        zzbur.zzf(zzbvkVar, "messageInfoFactory");
        this.zzb = zzbvkVar;
    }

    private static boolean zzb(zzbvr zzbvrVar) {
        return zzbvrVar.zzc() == 1;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwj
    public final zzbwi zza(Class cls) {
        zzbwk.zzG(cls);
        zzbvr zzb = this.zzb.zzb(cls);
        return zzb.zzb() ? zzbui.class.isAssignableFrom(cls) ? zzbvy.zzc(zzbwk.zzB(), zzbtu.zzb(), zzb.zza()) : zzbvy.zzc(zzbwk.zzz(), zzbtu.zza(), zzb.zza()) : zzbui.class.isAssignableFrom(cls) ? zzb(zzb) ? zzbvx.zzm(cls, zzb, zzbwb.zzb(), zzbvh.zze(), zzbwk.zzB(), zzbtu.zzb(), zzbvq.zzb()) : zzbvx.zzm(cls, zzb, zzbwb.zzb(), zzbvh.zze(), zzbwk.zzB(), null, zzbvq.zzb()) : zzb(zzb) ? zzbvx.zzm(cls, zzb, zzbwb.zza(), zzbvh.zzd(), zzbwk.zzz(), zzbtu.zza(), zzbvq.zza()) : zzbvx.zzm(cls, zzb, zzbwb.zza(), zzbvh.zzd(), zzbwk.zzA(), null, zzbvq.zza());
    }
}
