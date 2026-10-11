package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class zzze implements zzaaf {
    private final zzzj zza;

    public zzze(zzzj zzzjVar) {
        this.zza = zzzjVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final Pair zzc(Uri uri) throws IOException {
        return zzza.zza(ParcelFileDescriptor.open(zzzd.zza(uri), 268435456));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final File zzf(Uri uri) throws IOException {
        return zzzd.zza(uri);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final InputStream zzg(Uri uri) throws IOException {
        return zzzn.zzb(zzzd.zza(uri));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final String zzh() {
        return "file";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final boolean zzi(Uri uri) throws IOException {
        return zzzd.zza(uri).exists();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final void zzj(Uri uri) throws IOException {
        if (!zzzd.zza(uri).mkdirs()) {
            throw new IOException(String.format("%s could not be created", uri));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final void zzk(Uri uri) throws IOException {
        File zza = zzzd.zza(uri);
        if (!zza.isDirectory()) {
            throw new FileNotFoundException(String.format("%s is not a directory", uri));
        }
        if (!zza.delete()) {
            throw new IOException(String.format("%s could not be deleted", uri));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final void zzl(Uri uri) throws IOException {
        File zza = zzzd.zza(uri);
        if (zza.isDirectory()) {
            throw new FileNotFoundException(String.format("%s is a directory", uri));
        }
        if (zza.delete()) {
            return;
        }
        if (!zza.exists()) {
            throw new FileNotFoundException(String.format("%s does not exist", uri));
        }
        throw new IOException(String.format("%s could not be deleted", uri));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final void zzm(Uri uri, Uri uri2) throws IOException {
        File zza = zzzd.zza(uri);
        File zza2 = zzzd.zza(uri2);
        zzapd.zza(zza2);
        if (!zza.renameTo(zza2)) {
            throw new IOException(String.format("%s could not be renamed to %s", uri, uri2));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final boolean zzn(Uri uri) throws IOException {
        return zzzd.zza(uri).isDirectory();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final long zzq(Uri uri) throws IOException {
        File zza = zzzd.zza(uri);
        if (zza.isDirectory()) {
            return 0L;
        }
        return zza.length();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final OutputStream zzr(Uri uri) throws IOException {
        File zza = zzzd.zza(uri);
        zzapd.zza(zza);
        return new zzzo(new FileOutputStream(zza, true), zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final OutputStream zzs(Uri uri) throws IOException {
        File zza = zzzd.zza(uri);
        zzapd.zza(zza);
        return new zzzo(new FileOutputStream(zza), zza);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final Iterable zzt(Uri uri) throws IOException {
        File zza = zzzd.zza(uri);
        if (!zza.isDirectory()) {
            throw new FileNotFoundException(String.format("%s is not a directory", uri));
        }
        File[] listFiles = zza.listFiles();
        if (listFiles == null) {
            throw new IOException(String.format("Not a directory or I/O error (unexpected): %s", uri));
        }
        ArrayList arrayList = new ArrayList();
        for (File file : listFiles) {
            String absolutePath = file.getAbsolutePath();
            if (file.isDirectory() && !absolutePath.endsWith("/")) {
                absolutePath = absolutePath.concat("/");
            }
            zzzc zzzcVar = new zzzc(null);
            zzzcVar.zzc(absolutePath);
            arrayList.add(zzzcVar.zza());
        }
        return arrayList;
    }

    public zzze() {
        this.zza = new zzzj();
    }
}
