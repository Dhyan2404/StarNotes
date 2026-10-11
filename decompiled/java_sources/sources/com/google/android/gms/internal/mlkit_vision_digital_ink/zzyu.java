package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.app.blob.BlobStoreManager;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.function.Consumer;

/* loaded from: classes5.dex */
final class zzyu extends ParcelFileDescriptor.AutoCloseOutputStream {
    private final BlobStoreManager.Session zza;
    private boolean zzb;

    public zzyu(ParcelFileDescriptor parcelFileDescriptor, BlobStoreManager.Session session) {
        super(parcelFileDescriptor);
        this.zzb = false;
        this.zza = session;
    }

    private final void zza() throws IOException {
        int i;
        Throwable th = null;
        if (this.zzb) {
            i = 0;
        } else {
            this.zzb = true;
            try {
                final CompletableFuture completableFuture = new CompletableFuture();
                this.zza.commit(zzasq.zzb(), new Consumer() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzyt
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        completableFuture.complete((Integer) obj);
                    }
                });
                i = ((Integer) completableFuture.get()).intValue();
            } catch (InterruptedException | RuntimeException | ExecutionException e) {
                th = e;
                i = -1;
            }
        }
        BlobStoreManager.Session session = this.zza;
        if (i == 0) {
            if (session != null) {
                session.close();
            }
        } else {
            try {
                throw new IOException("Commit operation failed", th);
            } catch (Throwable th2) {
                if (session != null) {
                    try {
                        session.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                }
                throw th2;
            }
        }
    }

    @Override // android.os.ParcelFileDescriptor.AutoCloseOutputStream, java.io.FileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            super.close();
        } finally {
            zza();
        }
    }
}
