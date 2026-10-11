package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzbky implements zzbip {
    private final zzbjq zza;

    public zzbky(zzbjq zzbjqVar) {
        this.zza = zzbjqVar;
    }

    public static final zzbio zzb(zzbjq zzbjqVar, zzbht zzbhtVar, zzbnw zzbnwVar, zzbiq zzbiqVar) {
        zzbie zzbieVar;
        zzbio zzblpVar;
        Object zza = zzbjqVar.zza(zzbnw.zza(zzbiqVar.zza())).zza();
        boolean zzb = zzbiqVar.zzb();
        if (zza instanceof zzbio) {
            zzblpVar = (zzbio) zza;
        } else if (zza instanceof zzbip) {
            zzblpVar = ((zzbip) zza).zza(zzbhtVar, zzbnwVar);
        } else {
            if (zza instanceof zzbie) {
                zzbieVar = (zzbie) zza;
            } else {
                if (!(zza instanceof zzbhx)) {
                    throw new IllegalArgumentException("Invalid attempt to bind an instance of " + zza.getClass().getName() + " as a @JsonAdapter for " + zzbnwVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
                }
                zzbieVar = null;
            }
            zzblpVar = new zzblp(zzbieVar, zza instanceof zzbhx ? (zzbhx) zza : null, zzbhtVar, zzbnwVar, null, zzb);
            zzb = false;
        }
        return (zzblpVar == null || !zzb) ? zzblpVar : zzblpVar.zzd();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbip
    public final zzbio zza(zzbht zzbhtVar, zzbnw zzbnwVar) {
        zzbiq zzbiqVar = (zzbiq) zzbnwVar.zzc().getAnnotation(zzbiq.class);
        if (zzbiqVar == null) {
            return null;
        }
        return zzb(this.zza, zzbhtVar, zzbnwVar, zzbiqVar);
    }
}
