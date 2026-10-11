package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzwp implements zzaai {
    private final Context zza;
    private final Object zzb;

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private final HashMap zzc;

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private final HashMap zzd;
    private final zzgs zze;

    public zzwp(Context context) {
        zzgs zzgsVar = new zzgs(new zzi(), null);
        this.zzb = new Object();
        this.zzc = new HashMap();
        this.zzd = new HashMap();
        this.zza = context;
        this.zze = zzgsVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaai
    @Nullable
    public final zzaah zza(Uri uri) {
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaai
    @Nullable
    public final zzzx zzb(Uri uri) {
        return zzc(uri);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaai
    @Nullable
    public final zzzx zzc(Uri uri) {
        zzzx zzzxVar;
        synchronized (this.zzb) {
            zzzxVar = (zzzx) this.zzd.get(uri);
        }
        return zzzxVar;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.mlkit_vision_digital_ink.zzwm] */
    public final void zzd(Uri uri, zzdu zzduVar, long j, String str, int i, zzux zzuxVar) {
        zzdk zzf = zzdl.zzf();
        zzf.zze(zzduVar);
        zzf.zza(j);
        zzf.zzf(str);
        zzf.zzc(i);
        zzdl zzdlVar = (zzdl) zzf.zzx();
        synchronized (this.zzb) {
            if (!this.zzc.containsKey(zzdlVar)) {
                HashMap hashMap = this.zzc;
                zzwo zzwoVar = new zzwo(this.zza, zzuxVar, zzdlVar);
                final zzgs zzgsVar = this.zze;
                final byte[] bArr = null;
                hashMap.put(zzdlVar, new zzzx(zzwoVar, new Object(bArr) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzwm
                }, 10L, TimeUnit.SECONDS, null));
            }
            this.zzd.put(uri, (zzzx) this.zzc.get(zzdlVar));
        }
    }
}
