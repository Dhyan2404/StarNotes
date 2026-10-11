package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import java.io.File;

/* loaded from: classes5.dex */
public final class zzzc {
    private final Uri.Builder zza = new Uri.Builder().scheme("file").authority("").path("/");
    private final zzaji zzb = zzajm.zze();

    private zzzc() {
    }

    public final Uri zza() {
        return this.zza.encodedFragment(zzzs.zza(this.zzb.zzh())).build();
    }

    public final zzzc zzb(File file) {
        this.zza.path(file.getAbsolutePath());
        return this;
    }

    public final zzzc zzc(String str) {
        this.zza.path(str);
        return this;
    }

    public /* synthetic */ zzzc(zzzb zzzbVar) {
    }
}
