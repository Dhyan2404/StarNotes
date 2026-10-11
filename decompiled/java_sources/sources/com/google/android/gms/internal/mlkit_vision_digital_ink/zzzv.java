package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* loaded from: classes5.dex */
public final class zzzv implements zzyf {
    private zzzv() {
    }

    public static zzzv zza() {
        return new zzzv();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzyf
    public final /* bridge */ /* synthetic */ Object zzb(zzye zzyeVar) throws IOException {
        if (zzyeVar.zzh()) {
            throw new zzzm("Transforms are not supported by this Opener: ".concat(String.valueOf(zzyeVar.zzb())));
        }
        return new zzzu(zzyeVar.zzc(), zzyeVar.zzb());
    }
}
