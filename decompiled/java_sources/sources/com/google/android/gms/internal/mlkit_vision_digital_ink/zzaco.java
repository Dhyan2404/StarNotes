package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class zzaco {
    private final String zza;
    private final zzasi zzb;
    private final zzacr zzc;
    private final zzadi zze;
    private final zzacw zzj;
    private final zzadi zzf = new zzadi(new zzack(this, null), zzasq.zzb());
    private final Object zzg = new Object();
    private List zzi = new ArrayList();
    private final zzark zzd = zzark.zzb();
    private final zzadt zzh = zzadt.zzb();

    public zzaco(zzacr zzacrVar, zzacw zzacwVar, zzasi zzasiVar, boolean z, byte[] bArr) {
        this.zzc = zzacrVar;
        this.zzj = zzacwVar;
        this.zzb = zzasiVar;
        this.zza = zzacrVar.zzk();
        final zzabz zzabzVar = (zzabz) zzacrVar;
        this.zze = new zzadi(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzabq
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzabz.this.zzc();
            }
        }, zzasq.zzb());
        zzm(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzacf
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzaco.this.zzf((zzaap) obj);
            }
        });
    }

    public final zzasi zzd() {
        zzasi zzasiVar;
        final zzacp zzacpVar = null;
        if (this.zzf.zzh()) {
            zzasiVar = this.zzc.zzi(null);
        } else {
            zzady zza = this.zzh.zza("Get ".concat(String.valueOf(this.zza)), 1);
            try {
                zzasi zzo = zzarx.zzo(this.zzf.zzb(), zzaeq.zzc(new zzaqt(zzacpVar) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzacc
                    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                    public final zzasi zza(Object obj) {
                        return zzaco.this.zze(null, obj);
                    }
                }), zzasq.zzb());
                zza.zza(zzo);
                zza.close();
                zzasiVar = zzo;
            } catch (Throwable th) {
                try {
                    zza.close();
                } catch (Throwable th2) {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                }
                throw th;
            }
        }
        zzarx.zzj(this.zzb);
        return zzarx.zzj(zzasiVar);
    }

    public final /* synthetic */ zzasi zze(zzacp zzacpVar, Object obj) throws Exception {
        return this.zzc.zzi(null);
    }

    public final /* synthetic */ zzasi zzf(zzaap zzaapVar) throws Exception {
        return this.zze.zzb();
    }

    public final /* synthetic */ zzasi zzg(zzaqt zzaqtVar, Executor executor, Object obj) throws Exception {
        return this.zzc.zzj(zzaqtVar, executor, null);
    }

    public final zzasi zzh(final zzaft zzaftVar, final Executor executor) {
        final zzaqt zzc = zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzacg
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzarx.zzh(zzaft.this.zza(obj));
            }
        });
        zzady zza = this.zzh.zza("Update ".concat(String.valueOf(this.zza)), 1);
        try {
            final zzasi zzb = this.zzf.zzb();
            this.zzd.zzd(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzacd
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
                public final zzasi zza() {
                    return zzasi.this;
                }
            }, zzasq.zzb());
            zzasi zzd = this.zzd.zzd(zzaeq.zzb(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzace
                @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
                public final zzasi zza() {
                    final zzaco zzacoVar = zzaco.this;
                    zzasi zzasiVar = zzb;
                    final zzaqt zzaqtVar = zzc;
                    final Executor executor2 = executor;
                    return zzarx.zzo(zzasiVar, zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzach
                        @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                        public final zzasi zza(Object obj) {
                            return zzaco.this.zzg(zzaqtVar, executor2, obj);
                        }
                    }), zzasq.zzb());
                }
            }), zzasq.zzb());
            zzarx.zzs(zzd, zzb);
            zzarx.zzj(this.zzb);
            zza.zza(zzd);
            zza.close();
            return zzd;
        } catch (Throwable th) {
            try {
                zza.close();
            } catch (Throwable th2) {
                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
            }
            throw th;
        }
    }

    public final void zzm(zzaqt zzaqtVar) {
        synchronized (this.zzg) {
            this.zzi.add(zzaqtVar);
        }
    }
}
