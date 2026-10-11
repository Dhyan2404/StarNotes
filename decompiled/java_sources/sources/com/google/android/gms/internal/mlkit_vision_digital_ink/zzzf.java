package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzzf {
    private OutputStream zza;
    private zzzo zzb;

    public final void zza(List list) throws IOException {
        OutputStream outputStream = (OutputStream) zzakf.zza(list);
        if (outputStream instanceof zzzo) {
            this.zzb = (zzzo) outputStream;
            this.zza = (OutputStream) list.get(0);
        }
    }

    public final void zzb() throws IOException {
        if (this.zzb == null) {
            throw new zzzm("Cannot sync underlying stream");
        }
        this.zza.flush();
        this.zzb.zzb();
    }
}
