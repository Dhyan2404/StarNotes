package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.onyx.android.sdk.base.data.font.TTCFont;

/* loaded from: classes5.dex */
public final class zzcas implements zzcau {
    private static final Object zza = new Object();
    private volatile zzcau zzb;
    private volatile Object zzc = zza;

    private zzcas(zzcau zzcauVar) {
        this.zzb = zzcauVar;
    }

    public static zzcau zza(zzcau zzcauVar) {
        zzcauVar.getClass();
        return zzcauVar instanceof zzcas ? zzcauVar : new zzcas(zzcauVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzcau
    public final Object zzb() {
        Object obj = this.zzc;
        Object obj2 = zza;
        if (obj == obj2) {
            synchronized (this) {
                obj = this.zzc;
                if (obj == obj2) {
                    obj = this.zzb.zzb();
                    Object obj3 = this.zzc;
                    if (obj3 != obj2 && obj3 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + TTCFont.FONT_NAME_DELIMITER + obj + ". This is likely due to a circular dependency.");
                    }
                    this.zzc = obj;
                    this.zzb = null;
                }
            }
        }
        return obj;
    }
}
