package com.google.android.recaptcha.internal;

import org.jetbrains.annotations.NotNull;

/* loaded from: classes6.dex */
public final class zzdf implements zzdd {

    @NotNull
    public static final zzdf zza = new zzdf();

    private zzdf() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, @NotNull zzcj zzcjVar, @NotNull zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 1) {
            throw new zzae(4, 3, null);
        }
        Object zza2 = zzcjVar.zzc().zza(zzpqVarArr[0]);
        if (true != (zza2 instanceof Object)) {
            zza2 = null;
        }
        if (zza2 == null) {
            throw new zzae(4, 5, null);
        }
        try {
            if (zza2 instanceof String) {
                zza2 = zzcjVar.zzh().zza((String) zza2);
            }
            zzcjVar.zzc().zzf(i, zzci.zza(zza2));
        } catch (zzae e) {
            throw e;
        } catch (Exception e2) {
            throw new zzae(6, 8, e2);
        }
    }
}
