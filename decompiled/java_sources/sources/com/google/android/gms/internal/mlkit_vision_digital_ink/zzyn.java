package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes5.dex */
public final class zzyn extends zzaag {
    private final Context zza;
    private final zzaaf zzb;
    private final Object zzc = new Object();

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    @Nullable
    private String zzd;
    private final zzyj zze;

    public /* synthetic */ zzyn(zzyl zzylVar, zzym zzymVar) {
        zzzj zzzjVar;
        Context context;
        zzzjVar = zzylVar.zzb;
        this.zzb = new zzze(zzzjVar);
        context = zzylVar.zza;
        this.zza = context;
        this.zze = new Object() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzyj
        };
    }

    public static zzyl zzd(Context context) {
        return new zzyl(context, null);
    }

    private final boolean zzo(Uri uri) {
        return (TextUtils.isEmpty(uri.getAuthority()) || this.zza.getPackageName().equals(uri.getAuthority())) ? false : true;
    }

    private static final void zzp() throws zzzh {
        throw new zzzh("Android backend cannot perform remote operations without a remote backend");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaag
    public final Uri zza(Uri uri) throws IOException {
        try {
            zzyq zza = zzyr.zza(this.zza);
            zza.zzb(uri.getPath(), null);
            return zza.zza();
        } catch (IllegalArgumentException e) {
            throw new zzzk(e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaag
    public final Uri zzb(Uri uri) throws IOException {
        if (zzo(uri)) {
            throw new zzzk("Operation across authorities is not allowed.");
        }
        File zzf = zzf(uri);
        zzzc zzzcVar = new zzzc(null);
        zzzcVar.zzb(zzf);
        return zzzcVar.zza();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaag, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final Pair zzc(Uri uri) throws IOException {
        if (!zzo(uri)) {
            return this.zzb.zzc(zzb(uri));
        }
        zzp();
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaag
    public final zzaaf zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaag, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final File zzf(Uri uri) throws IOException {
        String str;
        if (zzo(uri)) {
            throw new IOException("operation is not permitted in other authorities.");
        }
        File zza = zzys.zza(uri, this.zza);
        if (!zzj.zza(this.zza)) {
            synchronized (this.zzc) {
                if (this.zzd == null) {
                    this.zzd = zzyo.zza(this.zza).getAbsolutePath();
                }
                str = this.zzd;
            }
            if (!zza.getAbsolutePath().startsWith(str)) {
                throw new zzzh("Cannot access credential-protected data from direct boot");
            }
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaag, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final InputStream zzg(Uri uri) throws IOException {
        if (!zzo(uri)) {
            return zzzn.zzb(zzzd.zza(zzb(uri)));
        }
        zzp();
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final String zzh() {
        return "android";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaag, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final boolean zzi(Uri uri) throws IOException {
        if (!zzo(uri)) {
            return zzzd.zza(zzb(uri)).exists();
        }
        zzp();
        throw null;
    }
}
