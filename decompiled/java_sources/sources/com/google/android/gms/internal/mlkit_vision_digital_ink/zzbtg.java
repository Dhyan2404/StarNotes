package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbtg implements zzbwh {
    private final zzbtf zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    private zzbtg(zzbtf zzbtfVar) {
        zzbur.zzf(zzbtfVar, "input");
        this.zza = zzbtfVar;
        zzbtfVar.zzc = this;
    }

    private final Object zzS(zzbxs zzbxsVar, Class cls, zzbtr zzbtrVar) throws IOException {
        zzbxs zzbxsVar2 = zzbxs.zza;
        switch (zzbxsVar.ordinal()) {
            case 0:
                return Double.valueOf(zza());
            case 1:
                return Float.valueOf(zzb());
            case 2:
                return Long.valueOf(zzl());
            case 3:
                return Long.valueOf(zzo());
            case 4:
                return Integer.valueOf(zzg());
            case 5:
                return Long.valueOf(zzk());
            case 6:
                return Integer.valueOf(zzf());
            case 7:
                return Boolean.valueOf(zzQ());
            case 8:
                return zzu();
            case 9:
            default:
                throw new IllegalArgumentException("unsupported field type.");
            case 10:
                return zzs(cls, zzbtrVar);
            case 11:
                return zzp();
            case 12:
                return Integer.valueOf(zzj());
            case 13:
                return Integer.valueOf(zze());
            case 14:
                return Integer.valueOf(zzh());
            case 15:
                return Long.valueOf(zzm());
            case 16:
                return Integer.valueOf(zzi());
            case 17:
                return Long.valueOf(zzn());
        }
    }

    private final Object zzT(zzbwi zzbwiVar, zzbtr zzbtrVar) throws IOException {
        Object zze = zzbwiVar.zze();
        zzV(zze, zzbwiVar, zzbtrVar);
        zzbwiVar.zzf(zze);
        return zze;
    }

    private final Object zzU(zzbwi zzbwiVar, zzbtr zzbtrVar) throws IOException {
        Object zze = zzbwiVar.zze();
        zzW(zze, zzbwiVar, zzbtrVar);
        zzbwiVar.zzf(zze);
        return zze;
    }

    private final void zzV(Object obj, zzbwi zzbwiVar, zzbtr zzbtrVar) throws IOException {
        int i = this.zzc;
        this.zzc = ((this.zzb >>> 3) << 3) | 4;
        try {
            zzbwiVar.zzh(obj, this, zzbtrVar);
            if (this.zzb == this.zzc) {
            } else {
                throw zzbut.zzg();
            }
        } finally {
            this.zzc = i;
        }
    }

    private final void zzW(Object obj, zzbwi zzbwiVar, zzbtr zzbtrVar) throws IOException {
        int zzn = this.zza.zzn();
        zzbtf zzbtfVar = this.zza;
        if (zzbtfVar.zza >= zzbtfVar.zzb) {
            throw new zzbut("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int zze = zzbtfVar.zze(zzn);
        this.zza.zza++;
        zzbwiVar.zzh(obj, this, zzbtrVar);
        this.zza.zzz(0);
        r4.zza--;
        this.zza.zzA(zze);
    }

    private final void zzX(int i) throws IOException {
        if (this.zza.zzd() != i) {
            throw zzbut.zzj();
        }
    }

    private final void zzY(int i) throws IOException {
        if ((this.zzb & 7) != i) {
            throw zzbut.zza();
        }
    }

    private static final void zzZ(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzbut.zzg();
        }
    }

    private static final void zzaa(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzbut.zzg();
        }
    }

    public static zzbtg zzq(zzbtf zzbtfVar) {
        zzbtg zzbtgVar = zzbtfVar.zzc;
        return zzbtgVar != null ? zzbtgVar : new zzbtg(zzbtfVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzA(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbuj)) {
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw zzbut.zza();
                }
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Integer.valueOf(this.zza.zzf()));
                } while (this.zza.zzd() < zzd);
                zzX(zzd);
                return;
            }
            do {
                list.add(Integer.valueOf(this.zza.zzf()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbuj zzbujVar = (zzbuj) list;
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw zzbut.zza();
            }
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzbujVar.zzh(this.zza.zzf());
            } while (this.zza.zzd() < zzd2);
            zzX(zzd2);
            return;
        }
        do {
            zzbujVar.zzh(this.zza.zzf());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzB(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbuj)) {
            int i = this.zzb & 7;
            if (i == 2) {
                int zzn = this.zza.zzn();
                zzZ(zzn);
                int zzd = this.zza.zzd() + zzn;
                do {
                    list.add(Integer.valueOf(this.zza.zzg()));
                } while (this.zza.zzd() < zzd);
                return;
            }
            if (i != 5) {
                throw zzbut.zza();
            }
            do {
                list.add(Integer.valueOf(this.zza.zzg()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbuj zzbujVar = (zzbuj) list;
        int i2 = this.zzb & 7;
        if (i2 == 2) {
            int zzn2 = this.zza.zzn();
            zzZ(zzn2);
            int zzd2 = this.zza.zzd() + zzn2;
            do {
                zzbujVar.zzh(this.zza.zzg());
            } while (this.zza.zzd() < zzd2);
            return;
        }
        if (i2 != 5) {
            throw zzbut.zza();
        }
        do {
            zzbujVar.zzh(this.zza.zzg());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzC(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbvi)) {
            int i = this.zzb & 7;
            if (i != 1) {
                if (i != 2) {
                    throw zzbut.zza();
                }
                int zzn = this.zza.zzn();
                zzaa(zzn);
                int zzd = this.zza.zzd() + zzn;
                do {
                    list.add(Long.valueOf(this.zza.zzo()));
                } while (this.zza.zzd() < zzd);
                return;
            }
            do {
                list.add(Long.valueOf(this.zza.zzo()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbvi zzbviVar = (zzbvi) list;
        int i2 = this.zzb & 7;
        if (i2 != 1) {
            if (i2 != 2) {
                throw zzbut.zza();
            }
            int zzn2 = this.zza.zzn();
            zzaa(zzn2);
            int zzd2 = this.zza.zzd() + zzn2;
            do {
                zzbviVar.zzg(this.zza.zzo());
            } while (this.zza.zzd() < zzd2);
            return;
        }
        do {
            zzbviVar.zzg(this.zza.zzo());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzD(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbty)) {
            int i = this.zzb & 7;
            if (i == 2) {
                int zzn = this.zza.zzn();
                zzZ(zzn);
                int zzd = this.zza.zzd() + zzn;
                do {
                    list.add(Float.valueOf(this.zza.zzc()));
                } while (this.zza.zzd() < zzd);
                return;
            }
            if (i != 5) {
                throw zzbut.zza();
            }
            do {
                list.add(Float.valueOf(this.zza.zzc()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbty zzbtyVar = (zzbty) list;
        int i2 = this.zzb & 7;
        if (i2 == 2) {
            int zzn2 = this.zza.zzn();
            zzZ(zzn2);
            int zzd2 = this.zza.zzd() + zzn2;
            do {
                zzbtyVar.zze(this.zza.zzc());
            } while (this.zza.zzd() < zzd2);
            return;
        }
        if (i2 != 5) {
            throw zzbut.zza();
        }
        do {
            zzbtyVar.zze(this.zza.zzc());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    @Deprecated
    public final void zzE(List list, zzbwi zzbwiVar, zzbtr zzbtrVar) throws IOException {
        int zzm;
        int i = this.zzb;
        if ((i & 7) != 3) {
            throw zzbut.zza();
        }
        do {
            list.add(zzT(zzbwiVar, zzbtrVar));
            if (this.zza.zzC() || this.zzd != 0) {
                return;
            } else {
                zzm = this.zza.zzm();
            }
        } while (zzm == i);
        this.zzd = zzm;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzF(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbuj)) {
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw zzbut.zza();
                }
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Integer.valueOf(this.zza.zzh()));
                } while (this.zza.zzd() < zzd);
                zzX(zzd);
                return;
            }
            do {
                list.add(Integer.valueOf(this.zza.zzh()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbuj zzbujVar = (zzbuj) list;
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw zzbut.zza();
            }
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzbujVar.zzh(this.zza.zzh());
            } while (this.zza.zzd() < zzd2);
            zzX(zzd2);
            return;
        }
        do {
            zzbujVar.zzh(this.zza.zzh());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzG(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbvi)) {
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw zzbut.zza();
                }
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Long.valueOf(this.zza.zzp()));
                } while (this.zza.zzd() < zzd);
                zzX(zzd);
                return;
            }
            do {
                list.add(Long.valueOf(this.zza.zzp()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbvi zzbviVar = (zzbvi) list;
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw zzbut.zza();
            }
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzbviVar.zzg(this.zza.zzp());
            } while (this.zza.zzd() < zzd2);
            zzX(zzd2);
            return;
        }
        do {
            zzbviVar.zzg(this.zza.zzp());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x005c, code lost:
    
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0064, code lost:
    
        return;
     */
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzH(java.util.Map r8, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvm r9, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtr r10) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 2
            r7.zzY(r0)
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtf r1 = r7.zza
            int r1 = r1.zzn()
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtf r2 = r7.zza
            int r1 = r2.zze(r1)
            java.lang.Object r2 = r9.zzb
            java.lang.Object r3 = r9.zzd
        L14:
            int r4 = r7.zzc()     // Catch: java.lang.Throwable -> L65
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5c
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtf r5 = r7.zza     // Catch: java.lang.Throwable -> L65
            boolean r5 = r5.zzC()     // Catch: java.lang.Throwable -> L65
            if (r5 == 0) goto L26
            goto L5c
        L26:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L47
            if (r4 == r0) goto L3a
            boolean r4 = r7.zzR()     // Catch: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbus -> L4f java.lang.Throwable -> L65
            if (r4 == 0) goto L34
            goto L14
        L34:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbut r4 = new com.google.android.gms.internal.mlkit_vision_digital_ink.zzbut     // Catch: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbus -> L4f java.lang.Throwable -> L65
            r4.<init>(r6)     // Catch: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbus -> L4f java.lang.Throwable -> L65
            throw r4     // Catch: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbus -> L4f java.lang.Throwable -> L65
        L3a:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxs r4 = r9.zzc     // Catch: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbus -> L4f java.lang.Throwable -> L65
            java.lang.Object r5 = r9.zzd     // Catch: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbus -> L4f java.lang.Throwable -> L65
            java.lang.Class r5 = r5.getClass()     // Catch: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbus -> L4f java.lang.Throwable -> L65
            java.lang.Object r3 = r7.zzS(r4, r5, r10)     // Catch: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbus -> L4f java.lang.Throwable -> L65
            goto L14
        L47:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxs r4 = r9.zza     // Catch: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbus -> L4f java.lang.Throwable -> L65
            r5 = 0
            java.lang.Object r2 = r7.zzS(r4, r5, r5)     // Catch: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbus -> L4f java.lang.Throwable -> L65
            goto L14
        L4f:
            boolean r4 = r7.zzR()     // Catch: java.lang.Throwable -> L65
            if (r4 == 0) goto L56
            goto L14
        L56:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbut r8 = new com.google.android.gms.internal.mlkit_vision_digital_ink.zzbut     // Catch: java.lang.Throwable -> L65
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L65
            throw r8     // Catch: java.lang.Throwable -> L65
        L5c:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L65
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtf r7 = r7.zza
            r7.zzA(r1)
            return
        L65:
            r8 = move-exception
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtf r7 = r7.zza
            r7.zzA(r1)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtg.zzH(java.util.Map, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvm, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtr):void");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzI(List list, zzbwi zzbwiVar, zzbtr zzbtrVar) throws IOException {
        int zzm;
        int i = this.zzb;
        if ((i & 7) != 2) {
            throw zzbut.zza();
        }
        do {
            list.add(zzU(zzbwiVar, zzbtrVar));
            if (this.zza.zzC() || this.zzd != 0) {
                return;
            } else {
                zzm = this.zza.zzm();
            }
        } while (zzm == i);
        this.zzd = zzm;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzJ(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbuj)) {
            int i = this.zzb & 7;
            if (i == 2) {
                int zzn = this.zza.zzn();
                zzZ(zzn);
                int zzd = this.zza.zzd() + zzn;
                do {
                    list.add(Integer.valueOf(this.zza.zzk()));
                } while (this.zza.zzd() < zzd);
                return;
            }
            if (i != 5) {
                throw zzbut.zza();
            }
            do {
                list.add(Integer.valueOf(this.zza.zzk()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbuj zzbujVar = (zzbuj) list;
        int i2 = this.zzb & 7;
        if (i2 == 2) {
            int zzn2 = this.zza.zzn();
            zzZ(zzn2);
            int zzd2 = this.zza.zzd() + zzn2;
            do {
                zzbujVar.zzh(this.zza.zzk());
            } while (this.zza.zzd() < zzd2);
            return;
        }
        if (i2 != 5) {
            throw zzbut.zza();
        }
        do {
            zzbujVar.zzh(this.zza.zzk());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzK(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbvi)) {
            int i = this.zzb & 7;
            if (i != 1) {
                if (i != 2) {
                    throw zzbut.zza();
                }
                int zzn = this.zza.zzn();
                zzaa(zzn);
                int zzd = this.zza.zzd() + zzn;
                do {
                    list.add(Long.valueOf(this.zza.zzt()));
                } while (this.zza.zzd() < zzd);
                return;
            }
            do {
                list.add(Long.valueOf(this.zza.zzt()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbvi zzbviVar = (zzbvi) list;
        int i2 = this.zzb & 7;
        if (i2 != 1) {
            if (i2 != 2) {
                throw zzbut.zza();
            }
            int zzn2 = this.zza.zzn();
            zzaa(zzn2);
            int zzd2 = this.zza.zzd() + zzn2;
            do {
                zzbviVar.zzg(this.zza.zzt());
            } while (this.zza.zzd() < zzd2);
            return;
        }
        do {
            zzbviVar.zzg(this.zza.zzt());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzL(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbuj)) {
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw zzbut.zza();
                }
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Integer.valueOf(this.zza.zzl()));
                } while (this.zza.zzd() < zzd);
                zzX(zzd);
                return;
            }
            do {
                list.add(Integer.valueOf(this.zza.zzl()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbuj zzbujVar = (zzbuj) list;
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw zzbut.zza();
            }
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzbujVar.zzh(this.zza.zzl());
            } while (this.zza.zzd() < zzd2);
            zzX(zzd2);
            return;
        }
        do {
            zzbujVar.zzh(this.zza.zzl());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzM(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbvi)) {
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw zzbut.zza();
                }
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Long.valueOf(this.zza.zzu()));
                } while (this.zza.zzd() < zzd);
                zzX(zzd);
                return;
            }
            do {
                list.add(Long.valueOf(this.zza.zzu()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbvi zzbviVar = (zzbvi) list;
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw zzbut.zza();
            }
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzbviVar.zzg(this.zza.zzu());
            } while (this.zza.zzd() < zzd2);
            zzX(zzd2);
            return;
        }
        do {
            zzbviVar.zzg(this.zza.zzu());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    public final void zzN(List list, boolean z) throws IOException {
        int zzm;
        int zzm2;
        if ((this.zzb & 7) != 2) {
            throw zzbut.zza();
        }
        if (!(list instanceof zzbvb) || z) {
            do {
                list.add(z ? zzu() : zzt());
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbvb zzbvbVar = (zzbvb) list;
        do {
            zzbvbVar.zzi(zzp());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzO(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbuj)) {
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw zzbut.zza();
                }
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Integer.valueOf(this.zza.zzn()));
                } while (this.zza.zzd() < zzd);
                zzX(zzd);
                return;
            }
            do {
                list.add(Integer.valueOf(this.zza.zzn()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbuj zzbujVar = (zzbuj) list;
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw zzbut.zza();
            }
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzbujVar.zzh(this.zza.zzn());
            } while (this.zza.zzd() < zzd2);
            zzX(zzd2);
            return;
        }
        do {
            zzbujVar.zzh(this.zza.zzn());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzP(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbvi)) {
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw zzbut.zza();
                }
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Long.valueOf(this.zza.zzv()));
                } while (this.zza.zzd() < zzd);
                zzX(zzd);
                return;
            }
            do {
                list.add(Long.valueOf(this.zza.zzv()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbvi zzbviVar = (zzbvi) list;
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw zzbut.zza();
            }
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzbviVar.zzg(this.zza.zzv());
            } while (this.zza.zzd() < zzd2);
            zzX(zzd2);
            return;
        }
        do {
            zzbviVar.zzg(this.zza.zzv());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final boolean zzQ() throws IOException {
        zzY(0);
        return this.zza.zzD();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final boolean zzR() throws IOException {
        int i;
        if (this.zza.zzC() || (i = this.zzb) == this.zzc) {
            return false;
        }
        return this.zza.zzE(i);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final double zza() throws IOException {
        zzY(1);
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final float zzb() throws IOException {
        zzY(5);
        return this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final int zzc() throws IOException {
        int i = this.zzd;
        if (i != 0) {
            this.zzb = i;
            this.zzd = 0;
        } else {
            i = this.zza.zzm();
            this.zzb = i;
        }
        if (i == 0 || i == this.zzc) {
            return Integer.MAX_VALUE;
        }
        return i >>> 3;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final int zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final int zze() throws IOException {
        zzY(0);
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final int zzf() throws IOException {
        zzY(5);
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final int zzg() throws IOException {
        zzY(0);
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final int zzh() throws IOException {
        zzY(5);
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final int zzi() throws IOException {
        zzY(0);
        return this.zza.zzl();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final int zzj() throws IOException {
        zzY(0);
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final long zzk() throws IOException {
        zzY(1);
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final long zzl() throws IOException {
        zzY(0);
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final long zzm() throws IOException {
        zzY(1);
        return this.zza.zzt();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final long zzn() throws IOException {
        zzY(0);
        return this.zza.zzu();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final long zzo() throws IOException {
        zzY(0);
        return this.zza.zzv();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final zzbsz zzp() throws IOException {
        zzY(2);
        return this.zza.zzw();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    @Deprecated
    public final Object zzr(Class cls, zzbtr zzbtrVar) throws IOException {
        zzY(3);
        return zzT(zzbwe.zza().zzb(cls), zzbtrVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final Object zzs(Class cls, zzbtr zzbtrVar) throws IOException {
        zzY(2);
        return zzU(zzbwe.zza().zzb(cls), zzbtrVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final String zzt() throws IOException {
        zzY(2);
        return this.zza.zzx();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final String zzu() throws IOException {
        zzY(2);
        return this.zza.zzy();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzv(Object obj, zzbwi zzbwiVar, zzbtr zzbtrVar) throws IOException {
        zzY(3);
        zzV(obj, zzbwiVar, zzbtrVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzw(Object obj, zzbwi zzbwiVar, zzbtr zzbtrVar) throws IOException {
        zzY(2);
        zzW(obj, zzbwiVar, zzbtrVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzx(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbsn)) {
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw zzbut.zza();
                }
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Boolean.valueOf(this.zza.zzD()));
                } while (this.zza.zzd() < zzd);
                zzX(zzd);
                return;
            }
            do {
                list.add(Boolean.valueOf(this.zza.zzD()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbsn zzbsnVar = (zzbsn) list;
        int i2 = this.zzb & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw zzbut.zza();
            }
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzbsnVar.zze(this.zza.zzD());
            } while (this.zza.zzd() < zzd2);
            zzX(zzd2);
            return;
        }
        do {
            zzbsnVar.zze(this.zza.zzD());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzy(List list) throws IOException {
        int zzm;
        if ((this.zzb & 7) != 2) {
            throw zzbut.zza();
        }
        do {
            list.add(zzp());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm = this.zza.zzm();
            }
        } while (zzm == this.zzb);
        this.zzd = zzm;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh
    public final void zzz(List list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzbto)) {
            int i = this.zzb & 7;
            if (i != 1) {
                if (i != 2) {
                    throw zzbut.zza();
                }
                int zzn = this.zza.zzn();
                zzaa(zzn);
                int zzd = this.zza.zzd() + zzn;
                do {
                    list.add(Double.valueOf(this.zza.zzb()));
                } while (this.zza.zzd() < zzd);
                return;
            }
            do {
                list.add(Double.valueOf(this.zza.zzb()));
                if (this.zza.zzC()) {
                    return;
                } else {
                    zzm = this.zza.zzm();
                }
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        zzbto zzbtoVar = (zzbto) list;
        int i2 = this.zzb & 7;
        if (i2 != 1) {
            if (i2 != 2) {
                throw zzbut.zza();
            }
            int zzn2 = this.zza.zzn();
            zzaa(zzn2);
            int zzd2 = this.zza.zzd() + zzn2;
            do {
                zzbtoVar.zze(this.zza.zzb());
            } while (this.zza.zzd() < zzd2);
            return;
        }
        do {
            zzbtoVar.zze(this.zza.zzb());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm2 = this.zza.zzm();
            }
        } while (zzm2 == this.zzb);
        this.zzd = zzm2;
    }
}
