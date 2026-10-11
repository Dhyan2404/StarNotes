package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes5.dex */
public abstract class zzaag implements zzaaf {
    public Uri zza(Uri uri) throws IOException {
        throw null;
    }

    public Uri zzb(Uri uri) throws IOException {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public Pair zzc(Uri uri) throws IOException {
        throw null;
    }

    public abstract zzaaf zze();

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public /* synthetic */ File zzf(Uri uri) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public InputStream zzg(Uri uri) throws IOException {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public boolean zzi(Uri uri) throws IOException {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final void zzj(Uri uri) throws IOException {
        zze().zzj(zzb(uri));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final void zzk(Uri uri) throws IOException {
        zze().zzk(zzb(uri));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final void zzl(Uri uri) throws IOException {
        zze().zzl(zzb(uri));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final void zzm(Uri uri, Uri uri2) throws IOException {
        zze().zzm(zzb(uri), zzb(uri2));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final boolean zzn(Uri uri) throws IOException {
        return zzzd.zza(zzb(uri)).isDirectory();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final long zzq(Uri uri) throws IOException {
        return zze().zzq(zzb(uri));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final OutputStream zzr(Uri uri) throws IOException {
        return zze().zzr(zzb(uri));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final OutputStream zzs(Uri uri) throws IOException {
        return zze().zzs(zzb(uri));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final Iterable zzt(Uri uri) throws IOException {
        ArrayList arrayList = new ArrayList();
        Iterator it2 = zze().zzt(zzb(uri)).iterator();
        while (it2.hasNext()) {
            arrayList.add(zza((Uri) it2.next()));
        }
        return arrayList;
    }
}
