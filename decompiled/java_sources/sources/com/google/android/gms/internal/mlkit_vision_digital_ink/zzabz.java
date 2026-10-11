package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes5.dex */
public final class zzabz implements zzacr {
    private final String zza;
    private final zzasi zzb;
    private final zzabc zzc;
    private final Executor zzd;
    private final zzyg zze;
    private final zzaao zzf;
    private final zzadt zzg;
    private final Object zzh = new Object();
    private final zzark zzi = zzark.zzb();

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private zzasi zzj = null;

    public zzabz(String str, zzasi zzasiVar, zzabc zzabcVar, Executor executor, zzyg zzygVar, zzaao zzaaoVar, zzadt zzadtVar) {
        this.zza = str;
        this.zzb = zzarx.zzj(zzasiVar);
        this.zzc = zzabcVar;
        this.zzd = zzasq.zzc(executor);
        this.zze = zzygVar;
        this.zzf = zzaaoVar;
        this.zzg = zzadtVar;
    }

    public static zzacs zza() {
        return zzaby.zza();
    }

    private final zzasi zzl() {
        zzasi zzasiVar;
        synchronized (this.zzh) {
            zzasi zzasiVar2 = this.zzj;
            if (zzasiVar2 != null && zzasiVar2.isDone()) {
                try {
                    zzarx.zzp(this.zzj);
                } catch (ExecutionException unused) {
                    this.zzj = null;
                }
            }
            if (this.zzj == null) {
                this.zzj = zzarx.zzj(this.zzi.zzd(zzaeq.zzb(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzabx
                    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
                    public final zzasi zza() {
                        return zzabz.this.zzg();
                    }
                }), this.zzd));
            }
            zzasiVar = this.zzj;
        }
        return zzasiVar;
    }

    private final Object zzm(Uri uri) throws IOException {
        try {
            try {
                zzady zza = this.zzg.zza("Read " + this.zza, 1);
                try {
                    InputStream inputStream = (InputStream) this.zze.zzc(uri, zzaab.zza());
                    try {
                        zzabc zzabcVar = this.zzc;
                        Object zzd = ((zzacy) zzabcVar).zzc().zzY().zzd(inputStream, ((zzacy) zzabcVar).zzb());
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        zza.close();
                        return zzd;
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        zza.close();
                    } catch (Throwable th2) {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                    }
                    throw th;
                }
            } catch (FileNotFoundException e) {
                if (this.zze.zzi(uri)) {
                    throw e;
                }
                return this.zzc.zza();
            }
        } catch (IOException e2) {
            throw zzact.zza(this.zze, uri, e2);
        }
    }

    public final /* synthetic */ zzasi zzb(Object obj) throws Exception {
        zzasi zzasiVar;
        synchronized (this.zzh) {
            zzasiVar = this.zzj;
        }
        return zzasiVar;
    }

    public final /* synthetic */ zzasi zzc() throws Exception {
        return zzarx.zzj(zzarx.zzo(this.zzb, zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzabr
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzabz.this.zzf((Uri) obj);
            }
        }), this.zzd));
    }

    public final /* synthetic */ zzasi zzd(Void r1) throws Exception {
        return zzarx.zzh(zzm((Uri) zzarx.zzp(this.zzb)));
    }

    public final /* synthetic */ zzasi zze(zzasi zzasiVar, final zzasi zzasiVar2, Object obj) throws Exception {
        if (zzarx.zzp(zzasiVar).equals(zzarx.zzp(zzasiVar2))) {
            return zzarx.zzi();
        }
        zzasi zzo = zzarx.zzo(zzasiVar2, zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzabt
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj2) {
                return zzabz.this.zzh(zzasiVar2, obj2);
            }
        }), this.zzd);
        synchronized (this.zzh) {
        }
        return zzo;
    }

    public final /* synthetic */ zzasi zzf(Uri uri) throws Exception {
        Uri zza = zzacu.zza(uri, ".bak");
        try {
            if (this.zze.zzi(zza)) {
                this.zze.zzg(zza, uri);
            }
            return zzarx.zzi();
        } catch (IOException e) {
            return zzarx.zzg(e);
        }
    }

    public final /* synthetic */ zzasi zzg() throws Exception {
        try {
            return zzarx.zzh(zzm((Uri) zzarx.zzp(this.zzb)));
        } catch (IOException e) {
            return ((e instanceof zzzh) || (e.getCause() instanceof zzzh)) ? zzarx.zzg(e) : zzarx.zzo(zzarx.zzg(e), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzabu
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                public final zzasi zza(Object obj) {
                    return zzabz.this.zzd((Void) obj);
                }
            }), this.zzd);
        }
    }

    public final /* synthetic */ zzasi zzh(zzasi zzasiVar, Object obj) throws Exception {
        Uri uri = (Uri) zzarx.zzp(this.zzb);
        Uri zza = zzacu.zza(uri, ".tmp");
        try {
            zzady zza2 = this.zzg.zza("Write " + this.zza, 1);
            try {
                zzzf zzzfVar = new zzzf();
                try {
                    zzyg zzygVar = this.zze;
                    zzaae zza3 = zzaae.zza();
                    zza3.zzc(zzzfVar);
                    OutputStream outputStream = (OutputStream) zzygVar.zzc(zza, zza3);
                    try {
                        ((zzbvu) obj).zzJ(outputStream);
                        zzzfVar.zzb();
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        zza2.close();
                        this.zze.zzg(zza, uri);
                        synchronized (this.zzh) {
                            this.zzj = zzasiVar;
                        }
                        return zzarx.zzi();
                    } catch (Throwable th) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Throwable th2) {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                            }
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    throw zzact.zza(this.zze, uri, e);
                }
            } finally {
            }
        } catch (IOException e2) {
            if (this.zze.zzi(zza)) {
                try {
                    this.zze.zzf(zza);
                } catch (IOException e3) {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(e2, e3);
                }
            }
            throw e2;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzacr
    public final zzasi zzi(zzacp zzacpVar) {
        return zzl();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzacr
    public final zzasi zzj(final zzaqt zzaqtVar, final Executor executor, zzacq zzacqVar) {
        final zzasi zzl = zzl();
        return this.zzi.zzd(zzaeq.zzb(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzabv
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                final zzabz zzabzVar = zzabz.this;
                zzasi zzasiVar = zzl;
                zzaqt zzaqtVar2 = zzaqtVar;
                Executor executor2 = executor;
                final zzasi zzo = zzarx.zzo(zzasiVar, new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzabw
                    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                    public final zzasi zza(Object obj) {
                        return zzabz.this.zzb(obj);
                    }
                }, zzasq.zzb());
                final zzasi zzo2 = zzarx.zzo(zzo, zzaqtVar2, executor2);
                return zzarx.zzo(zzo2, zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzabs
                    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                    public final zzasi zza(Object obj) {
                        return zzabz.this.zze(zzo, zzo2, obj);
                    }
                }), zzasq.zzb());
            }
        }), zzasq.zzb());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzacr
    public final String zzk() {
        return this.zza;
    }
}
