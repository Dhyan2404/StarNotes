package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class zzaql extends zzaqr {
    private static final Logger zza = Logger.getLogger(zzaql.class.getName());

    @CheckForNull
    private zzajg zzb;
    private final boolean zzc;
    private final boolean zze;

    public zzaql(zzajg zzajgVar, boolean z, boolean z2) {
        super(zzajgVar.size());
        this.zzb = zzajgVar;
        this.zzc = z;
        this.zze = false;
    }

    private final void zzG(int i, Future future) {
        try {
            zzarx.zzp(future);
        } catch (Error | RuntimeException e) {
            zzI(e);
        } catch (ExecutionException e2) {
            zzI(e2.getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzH, reason: merged with bridge method [inline-methods] */
    public final void zzx(@CheckForNull zzajg zzajgVar) {
        int zzA = zzA();
        int i = 0;
        zzagg.zzk(zzA >= 0, "Less than 0 remaining futures");
        if (zzA == 0) {
            if (zzajgVar != null) {
                zzalx it2 = zzajgVar.iterator();
                while (it2.hasNext()) {
                    Future future = (Future) it2.next();
                    if (!future.isCancelled()) {
                        zzG(i, future);
                    }
                    i++;
                }
            }
            zzF();
            zze();
            zzy(2);
        }
    }

    private final void zzI(Throwable th) {
        th.getClass();
        if (this.zzc && !zzt(th) && zzK(zzC(), th)) {
            zzJ(th);
        } else if (th instanceof Error) {
            zzJ(th);
        }
    }

    private static void zzJ(Throwable th) {
        zza.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != (th instanceof Error) ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
    }

    private static boolean zzK(Set set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    @CheckForNull
    public final String zza() {
        zzajg zzajgVar = this.zzb;
        return zzajgVar != null ? "futures=".concat(zzajgVar.toString()) : super.zza();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    public final void zzb() {
        zzajg zzajgVar = this.zzb;
        zzy(1);
        if ((zzajgVar != null) && isCancelled()) {
            boolean zzu = zzu();
            zzalx it2 = zzajgVar.iterator();
            while (it2.hasNext()) {
                ((Future) it2.next()).cancel(zzu);
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqr
    public final void zzd(Set set) {
        set.getClass();
        if (isCancelled()) {
            return;
        }
        Throwable zzk = zzk();
        zzk.getClass();
        zzK(set, zzk);
    }

    public abstract void zze();

    public final void zzv() {
        zzajg zzajgVar = this.zzb;
        zzajgVar.getClass();
        if (zzajgVar.isEmpty()) {
            zze();
            return;
        }
        if (!this.zzc) {
            final zzajg zzajgVar2 = null;
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqk
                @Override // java.lang.Runnable
                public final void run() {
                    zzaql.this.zzx(zzajgVar2);
                }
            };
            zzalx it2 = this.zzb.iterator();
            while (it2.hasNext()) {
                ((zzasi) it2.next()).zzp(runnable, zzaqz.INSTANCE);
            }
            return;
        }
        zzalx it3 = this.zzb.iterator();
        final int i = 0;
        while (it3.hasNext()) {
            final zzasi zzasiVar = (zzasi) it3.next();
            zzasiVar.zzp(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqj
                @Override // java.lang.Runnable
                public final void run() {
                    zzaql.this.zzw(zzasiVar, i);
                }
            }, zzaqz.INSTANCE);
            i++;
        }
    }

    public final /* synthetic */ void zzw(zzasi zzasiVar, int i) {
        try {
            if (zzasiVar.isCancelled()) {
                this.zzb = null;
                cancel(false);
            } else {
                zzG(i, zzasiVar);
            }
        } finally {
            zzx(null);
        }
    }

    public void zzy(int i) {
        this.zzb = null;
    }
}
