package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.sunia.HTREnginev2.cyi;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzadg extends zzaqa {
    private zzadi zza;
    private final int zzb;

    public /* synthetic */ zzadg(zzadi zzadiVar, int i, zzadf zzadfVar) {
        this.zza = zzadiVar;
        this.zzb = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0006, code lost:
    
        r0 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzadi.zza(r0).zza;
     */
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zza() {
        /*
            r3 = this;
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzadi r0 = r3.zza
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzade r0 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzadi.zza(r0)
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs r0 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzade.zza(r0)
            if (r0 != 0) goto L11
            return r1
        L11:
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "callable=["
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = "]"
            r1.append(r0)
            java.lang.String r1 = r1.toString()
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzadi r3 = r3.zza
            java.util.concurrent.atomic.AtomicReference r3 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzadi.zze(r3)
            java.lang.Object r3 = r3.get()
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzadh r3 = (com.google.android.gms.internal.mlkit_vision_digital_ink.zzadh) r3
            if (r3 == 0) goto L55
            java.lang.String r3 = r3.toString()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            java.lang.String r1 = ", trial=["
            r2.append(r1)
            r2.append(r3)
            r2.append(r0)
            java.lang.String r3 = r2.toString()
            return r3
        L55:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzadg.zza():java.lang.String");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    public final void zzb() {
        int i;
        zzadi zzadiVar = this.zza;
        this.zza = null;
        if (zzadiVar == null || !zzadi.zzg(zzadiVar)) {
            return;
        }
        while (true) {
            zzadh zzadhVar = (zzadh) zzadi.zze(zzadiVar).get();
            if (zzadhVar != null) {
                i = zzadhVar.zza;
                if (i <= this.zzb) {
                    zzadhVar.cancel(true);
                    AtomicReference zze = zzadi.zze(zzadiVar);
                    while (!cyi.m53538a(zze, zzadhVar, null)) {
                        if (zze.get() != zzadhVar) {
                            break;
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    public final boolean zzc(zzasi zzasiVar) {
        return super.zzc(zzasiVar);
    }
}
