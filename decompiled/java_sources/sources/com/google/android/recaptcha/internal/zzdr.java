package com.google.android.recaptcha.internal;

import org.jetbrains.annotations.NotNull;

/* loaded from: classes6.dex */
public final class zzdr implements zzdd {

    @NotNull
    public static final zzdr zza = new zzdr();

    private zzdr() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, @NotNull zzcj zzcjVar, @NotNull zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length != 1) {
            throw new zzae(4, 3, null);
        }
        zzcjVar.zzc().zzf(i, zzcjVar.zzc().zza(zzpqVarArr[0]));
    }
}
