package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzbvy implements zzbwi {
    private final zzbvu zza;
    private final zzbxc zzb;
    private final boolean zzc;
    private final zzbts zzd;

    private zzbvy(zzbxc zzbxcVar, zzbts zzbtsVar, zzbvu zzbvuVar) {
        this.zzb = zzbxcVar;
        this.zzc = zzbtsVar.zzj(zzbvuVar);
        this.zzd = zzbtsVar;
        this.zza = zzbvuVar;
    }

    public static zzbvy zzc(zzbxc zzbxcVar, zzbts zzbtsVar, zzbvu zzbvuVar) {
        return new zzbvy(zzbxcVar, zzbtsVar, zzbvuVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final int zza(Object obj) {
        zzbxc zzbxcVar = this.zzb;
        int zzb = zzbxcVar.zzb(zzbxcVar.zzd(obj));
        return this.zzc ? zzb + this.zzd.zzb(obj).zzc() : zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final int zzb(Object obj) {
        int hashCode = this.zzb.zzd(obj).hashCode();
        return this.zzc ? (hashCode * 53) + this.zzd.zzb(obj).zza.hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final Object zze() {
        zzbvu zzbvuVar = this.zza;
        return zzbvuVar instanceof zzbui ? ((zzbui) zzbvuVar).zzS() : zzbvuVar.zzah().zzy();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final void zzf(Object obj) {
        this.zzb.zzm(obj);
        this.zzd.zzf(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final void zzg(Object obj, Object obj2) {
        zzbwk.zzF(this.zzb, obj, obj2);
        if (this.zzc) {
            zzbwk.zzE(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final void zzh(Object obj, zzbwh zzbwhVar, zzbtr zzbtrVar) throws IOException {
        boolean zzR;
        zzbxc zzbxcVar = this.zzb;
        zzbts zzbtsVar = this.zzd;
        Object zzc = zzbxcVar.zzc(obj);
        zzbtw zzc2 = zzbtsVar.zzc(obj);
        while (zzbwhVar.zzc() != Integer.MAX_VALUE) {
            try {
                int zzd = zzbwhVar.zzd();
                if (zzd != 11) {
                    if ((zzd & 7) == 2) {
                        Object zzd2 = zzbtsVar.zzd(zzbtrVar, this.zza, zzd >>> 3);
                        if (zzd2 != null) {
                            zzbtsVar.zzg(zzbwhVar, zzd2, zzbtrVar, zzc2);
                        } else {
                            zzR = zzbxcVar.zzr(zzc, zzbwhVar);
                        }
                    } else {
                        zzR = zzbwhVar.zzR();
                    }
                    if (!zzR) {
                        return;
                    }
                } else {
                    Object obj2 = null;
                    int i = 0;
                    zzbsz zzbszVar = null;
                    while (zzbwhVar.zzc() != Integer.MAX_VALUE) {
                        int zzd3 = zzbwhVar.zzd();
                        if (zzd3 == 16) {
                            i = zzbwhVar.zzj();
                            obj2 = zzbtsVar.zzd(zzbtrVar, this.zza, i);
                        } else if (zzd3 == 26) {
                            if (obj2 != null) {
                                zzbtsVar.zzg(zzbwhVar, obj2, zzbtrVar, zzc2);
                            } else {
                                zzbszVar = zzbwhVar.zzp();
                            }
                        } else if (!zzbwhVar.zzR()) {
                            break;
                        }
                    }
                    if (zzbwhVar.zzd() != 12) {
                        throw zzbut.zzb();
                    }
                    if (zzbszVar != null) {
                        if (obj2 != null) {
                            zzbtsVar.zzh(zzbszVar, obj2, zzbtrVar, zzc2);
                        } else {
                            zzbxcVar.zzk(zzc, i, zzbszVar);
                        }
                    }
                }
            } finally {
                zzbxcVar.zzn(obj, zzc);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bf A[EDGE_INSN: B:24:0x00bf->B:25:0x00bf BREAK  A[LOOP:1: B:10:0x0067->B:18:0x0067], SYNTHETIC] */
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(java.lang.Object r11, byte[] r12, int r13, int r14, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsl r15) throws java.io.IOException {
        /*
            r10 = this;
            r0 = r11
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui r0 = (com.google.android.gms.internal.mlkit_vision_digital_ink.zzbui) r0
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxd r1 = r0.zzc
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxd r2 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxd.zzc()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxd r1 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxd.zzf()
            r0.zzc = r1
        L11:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbue r11 = (com.google.android.gms.internal.mlkit_vision_digital_ink.zzbue) r11
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtw r11 = r11.zzi()
            r0 = 0
            r2 = r0
        L19:
            if (r13 >= r14) goto Lca
            int r4 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsm.zzj(r12, r13, r15)
            int r13 = r15.zza
            r3 = 11
            r5 = 2
            if (r13 == r3) goto L65
            r3 = r13 & 7
            if (r3 != r5) goto L60
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts r2 = r10.zzd
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtr r3 = r15.zzd
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu r5 = r10.zza
            int r6 = r13 >>> 3
            java.lang.Object r8 = r2.zzd(r3, r5, r6)
            if (r8 == 0) goto L55
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwe r13 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwe.zza()
            r2 = r8
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbug r2 = (com.google.android.gms.internal.mlkit_vision_digital_ink.zzbug) r2
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu r3 = r2.zzc
            java.lang.Class r3 = r3.getClass()
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi r13 = r13.zzb(r3)
            int r13 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsm.zzd(r13, r12, r4, r14, r15)
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbuf r2 = r2.zzd
            java.lang.Object r3 = r15.zzc
            r11.zzj(r2, r3)
            goto L5e
        L55:
            r2 = r13
            r3 = r12
            r5 = r14
            r6 = r1
            r7 = r15
            int r13 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsm.zzi(r2, r3, r4, r5, r6, r7)
        L5e:
            r2 = r8
            goto L19
        L60:
            int r13 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsm.zzp(r13, r12, r4, r14, r15)
            goto L19
        L65:
            r13 = 0
            r3 = r0
        L67:
            if (r4 >= r14) goto Lbf
            int r4 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsm.zzj(r12, r4, r15)
            int r6 = r15.zza
            int r7 = r6 >>> 3
            r8 = r6 & 7
            if (r7 == r5) goto La3
            r9 = 3
            if (r7 == r9) goto L79
            goto Lb6
        L79:
            if (r2 == 0) goto L98
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwe r6 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwe.zza()
            r7 = r2
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbug r7 = (com.google.android.gms.internal.mlkit_vision_digital_ink.zzbug) r7
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu r8 = r7.zzc
            java.lang.Class r8 = r8.getClass()
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi r6 = r6.zzb(r8)
            int r4 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsm.zzd(r6, r12, r4, r14, r15)
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbuf r6 = r7.zzd
            java.lang.Object r7 = r15.zzc
            r11.zzj(r6, r7)
            goto L67
        L98:
            if (r8 != r5) goto Lb6
            int r4 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsm.zza(r12, r4, r15)
            java.lang.Object r3 = r15.zzc
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsz r3 = (com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsz) r3
            goto L67
        La3:
            if (r8 != 0) goto Lb6
            int r4 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsm.zzj(r12, r4, r15)
            int r13 = r15.zza
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts r2 = r10.zzd
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtr r6 = r15.zzd
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu r7 = r10.zza
            java.lang.Object r2 = r2.zzd(r6, r7, r13)
            goto L67
        Lb6:
            r7 = 12
            if (r6 == r7) goto Lbf
            int r4 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsm.zzp(r6, r12, r4, r14, r15)
            goto L67
        Lbf:
            if (r3 == 0) goto Lc7
            int r13 = r13 << 3
            r13 = r13 | r5
            r1.zzj(r13, r3)
        Lc7:
            r13 = r4
            goto L19
        Lca:
            if (r13 != r14) goto Lcd
            return
        Lcd:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbut r10 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbut.zzg()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvy.zzi(java.lang.Object, byte[], int, int, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsl):void");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final void zzj(Object obj, zzbxu zzbxuVar) throws IOException {
        Iterator zzg = this.zzd.zzb(obj).zzg();
        while (zzg.hasNext()) {
            Map.Entry entry = (Map.Entry) zzg.next();
            zzbtv zzbtvVar = (zzbtv) entry.getKey();
            if (zzbtvVar.zze() != zzbxt.MESSAGE) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            zzbtvVar.zzg();
            zzbtvVar.zzf();
            if (entry instanceof zzbuw) {
                zzbtvVar.zza();
                zzbxuVar.zzx(43, ((zzbuw) entry).zza().zzb());
            } else {
                zzbtvVar.zza();
                zzbxuVar.zzx(43, entry.getValue());
            }
        }
        zzbxc zzbxcVar = this.zzb;
        zzbxcVar.zzp(zzbxcVar.zzd(obj), zzbxuVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final boolean zzk(Object obj, Object obj2) {
        if (!this.zzb.zzd(obj).equals(this.zzb.zzd(obj2))) {
            return false;
        }
        if (this.zzc) {
            return this.zzd.zzb(obj).equals(this.zzd.zzb(obj2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final boolean zzl(Object obj) {
        return this.zzd.zzb(obj).zzm();
    }
}
