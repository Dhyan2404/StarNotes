package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.annotation.SuppressLint;
import android.app.blob.BlobHandle;
import android.app.blob.BlobStoreManager;
import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.p001os.LimitExceededException;
import android.util.Pair;
import com.sunia.HTREnginev2.nsp;
import com.sunia.HTREnginev2.qsp;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

@SuppressLint({"NewApi", "WrongConstant"})
/* loaded from: classes5.dex */
public final class zzyv implements zzaaf {
    private final BlobStoreManager zza;

    public zzyv(Context context) {
        this.zza = nsp.m55791a(context.getSystemService("blob_store"));
    }

    private final ParcelFileDescriptor zzo(Uri uri) throws IOException {
        BlobHandle createWithSha256;
        ParcelFileDescriptor openBlob;
        zzyy.zzc(uri);
        createWithSha256 = BlobHandle.createWithSha256(zzyy.zzf(uri.getPath()), "The file is shared to provide a better user experience", 0L, "File downloaded through MDDLib");
        openBlob = this.zza.openBlob(createWithSha256);
        return openBlob;
    }

    private final void zzp(byte[] bArr) throws IOException {
        BlobHandle createWithSha256;
        createWithSha256 = BlobHandle.createWithSha256(bArr, "The file is shared to provide a better user experience", 0L, "File downloaded through MDDLib");
        try {
            this.zza.releaseLease(createWithSha256);
        } catch (IllegalArgumentException | IllegalStateException | SecurityException e) {
            throw new IOException("Failed to release the lease", e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final Pair zzc(Uri uri) throws IOException {
        return zzza.zza(zzo(uri));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final /* synthetic */ File zzf(Uri uri) {
        throw new zzzm("Cannot convert uri to file blobstore ".concat(String.valueOf(uri)));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final InputStream zzg(Uri uri) throws IOException {
        return new ParcelFileDescriptor.AutoCloseInputStream(zzo(uri));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final String zzh() {
        return "blobstore";
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final boolean zzi(Uri uri) throws IOException {
        boolean z = false;
        try {
            ParcelFileDescriptor zzo = zzo(uri);
            if (zzo != null) {
                try {
                    if (zzo.getFileDescriptor().valid()) {
                        z = true;
                    }
                } catch (Throwable th) {
                    try {
                        zzo.close();
                    } catch (Throwable th2) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                        } catch (Exception unused) {
                        }
                    }
                    throw th;
                }
            }
            if (zzo != null) {
                zzo.close();
            }
        } catch (SecurityException unused2) {
        }
        return z;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final /* synthetic */ void zzj(Uri uri) {
        throw new zzzm("createDirectory not supported by blobstore");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final /* synthetic */ void zzk(Uri uri) {
        throw new zzzm("deleteDirectory not supported by blobstore");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final void zzl(Uri uri) throws IOException {
        List leasedBlobs;
        byte[] sha256Digest;
        zzyy.zzc(uri);
        if (!zzyy.zzd(uri.getPath())) {
            zzp(zzyy.zzf(uri.getPath()));
            return;
        }
        leasedBlobs = this.zza.getLeasedBlobs();
        Iterator it2 = leasedBlobs.iterator();
        while (it2.hasNext()) {
            sha256Digest = qsp.m56762a(it2.next()).getSha256Digest();
            zzp(sha256Digest);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final /* synthetic */ void zzm(Uri uri, Uri uri2) {
        throw new zzzm("rename not supported by blobstore");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final boolean zzn(Uri uri) {
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final /* synthetic */ long zzq(Uri uri) {
        throw new zzzm("fileSize not supported by blobstore");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final /* synthetic */ OutputStream zzr(Uri uri) {
        throw new zzzm("openForAppend not supported by blobstore");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final OutputStream zzs(Uri uri) throws IOException {
        BlobHandle createWithSha256;
        long createSession;
        BlobStoreManager.Session openSession;
        ParcelFileDescriptor openWrite;
        long remainingLeaseQuotaBytes;
        BlobHandle createWithSha2562;
        zzyy.zzc(uri);
        byte[] zzf = zzyy.zzf(uri.getPath());
        try {
            if (!zzyy.zze(uri.getPath())) {
                createWithSha256 = BlobHandle.createWithSha256(zzf, "The file is shared to provide a better user experience", 0L, "File downloaded through MDDLib");
                createSession = this.zza.createSession(createWithSha256);
                openSession = this.zza.openSession(createSession);
                openSession.allowPublicAccess();
                openWrite = openSession.openWrite(0L, -1L);
                return new zzyu(openWrite, openSession);
            }
            remainingLeaseQuotaBytes = this.zza.getRemainingLeaseQuotaBytes();
            if (remainingLeaseQuotaBytes <= 0) {
                throw new zzzi("The caller is trying to acquire a lease on too much data.");
            }
            long millis = TimeUnit.SECONDS.toMillis(zzyy.zza(uri));
            createWithSha2562 = BlobHandle.createWithSha256(zzf, "The file is shared to provide a better user experience", 0L, "File downloaded through MDDLib");
            this.zza.acquireLease(createWithSha2562, "String description needed for providing a better user experience", millis);
            return null;
        } catch (LimitExceededException e) {
            throw new zzzi(e);
        } catch (IllegalStateException e2) {
            throw new IOException("Failed to write into BlobStoreManager", e2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaaf
    public final /* synthetic */ Iterable zzt(Uri uri) {
        throw new zzzm("children not supported by blobstore");
    }
}
