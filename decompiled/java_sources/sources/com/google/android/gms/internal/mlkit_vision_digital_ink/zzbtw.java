package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
final class zzbtw {
    private static final zzbtw zzb = new zzbtw(true);
    final zzbwv zza = new zzbwl(16);
    private boolean zzc;
    private boolean zzd;

    private zzbtw() {
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001a. Please report as an issue. */
    public static int zza(zzbxs zzbxsVar, int i, Object obj) {
        int i2 = zzbtm.zzf;
        int zzL = zzbtm.zzL(i);
        if (zzbxsVar == zzbxs.zzj) {
            zzbur.zzi((zzbvu) obj);
            zzL += zzL;
        }
        zzbxt zzbxtVar = zzbxt.INT;
        int i3 = 4;
        switch (zzbxsVar.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                i3 = 8;
                return zzL + i3;
            case 1:
                ((Float) obj).floatValue();
                return zzL + i3;
            case 2:
                i3 = zzbtm.zzN(((Long) obj).longValue());
                return zzL + i3;
            case 3:
                i3 = zzbtm.zzN(((Long) obj).longValue());
                return zzL + i3;
            case 4:
                i3 = zzbtm.zzF(((Integer) obj).intValue());
                return zzL + i3;
            case 5:
                ((Long) obj).longValue();
                i3 = 8;
                return zzL + i3;
            case 6:
                ((Integer) obj).intValue();
                return zzL + i3;
            case 7:
                ((Boolean) obj).booleanValue();
                i3 = 1;
                return zzL + i3;
            case 8:
                i3 = obj instanceof zzbsz ? zzbtm.zzC((zzbsz) obj) : zzbtm.zzK((String) obj);
                return zzL + i3;
            case 9:
                i3 = zzbtm.zzE((zzbvu) obj);
                return zzL + i3;
            case 10:
                i3 = obj instanceof zzbuy ? zzbtm.zzG((zzbuy) obj) : zzbtm.zzH((zzbvu) obj);
                return zzL + i3;
            case 11:
                i3 = obj instanceof zzbsz ? zzbtm.zzC((zzbsz) obj) : zzbtm.zzB((byte[]) obj);
                return zzL + i3;
            case 12:
                i3 = zzbtm.zzM(((Integer) obj).intValue());
                return zzL + i3;
            case 13:
                i3 = obj instanceof zzbuk ? zzbtm.zzF(((zzbuk) obj).zza()) : zzbtm.zzF(((Integer) obj).intValue());
                return zzL + i3;
            case 14:
                ((Integer) obj).intValue();
                return zzL + i3;
            case 15:
                ((Long) obj).longValue();
                i3 = 8;
                return zzL + i3;
            case 16:
                int intValue = ((Integer) obj).intValue();
                i3 = zzbtm.zzM((intValue >> 31) ^ (intValue + intValue));
                return zzL + i3;
            case 17:
                long longValue = ((Long) obj).longValue();
                i3 = zzbtm.zzN((longValue >> 63) ^ (longValue + longValue));
                return zzL + i3;
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int zzb(zzbtv zzbtvVar, Object obj) {
        zzbxs zzd = zzbtvVar.zzd();
        zzbtvVar.zza();
        zzbtvVar.zzg();
        return zza(zzd, 43, obj);
    }

    public static zzbtw zze() {
        return zzb;
    }

    public static void zzk(zzbtm zzbtmVar, zzbxs zzbxsVar, int i, Object obj) throws IOException {
        if (zzbxsVar == zzbxs.zzj) {
            zzbvu zzbvuVar = (zzbvu) obj;
            zzbur.zzi(zzbvuVar);
            zzbtmVar.zzv(i, 3);
            zzbvuVar.zzaj(zzbtmVar);
            zzbtmVar.zzv(i, 4);
            return;
        }
        zzbtmVar.zzv(i, zzbxsVar.zza());
        zzbxt zzbxtVar = zzbxt.INT;
        switch (zzbxsVar.ordinal()) {
            case 0:
                zzbtmVar.zzm(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                return;
            case 1:
                zzbtmVar.zzk(Float.floatToRawIntBits(((Float) obj).floatValue()));
                return;
            case 2:
                zzbtmVar.zzz(((Long) obj).longValue());
                return;
            case 3:
                zzbtmVar.zzz(((Long) obj).longValue());
                return;
            case 4:
                zzbtmVar.zzo(((Integer) obj).intValue());
                return;
            case 5:
                zzbtmVar.zzm(((Long) obj).longValue());
                return;
            case 6:
                zzbtmVar.zzk(((Integer) obj).intValue());
                return;
            case 7:
                zzbtmVar.zzX(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                return;
            case 8:
                if (obj instanceof zzbsz) {
                    zzbtmVar.zzi((zzbsz) obj);
                    return;
                } else {
                    zzbtmVar.zzu((String) obj);
                    return;
                }
            case 9:
                ((zzbvu) obj).zzaj(zzbtmVar);
                return;
            case 10:
                zzbtmVar.zzq((zzbvu) obj);
                return;
            case 11:
                if (obj instanceof zzbsz) {
                    zzbtmVar.zzi((zzbsz) obj);
                    return;
                } else {
                    byte[] bArr = (byte[]) obj;
                    zzbtmVar.zzZ(bArr, 0, bArr.length);
                    return;
                }
            case 12:
                zzbtmVar.zzx(((Integer) obj).intValue());
                return;
            case 13:
                if (obj instanceof zzbuk) {
                    zzbtmVar.zzo(((zzbuk) obj).zza());
                    return;
                } else {
                    zzbtmVar.zzo(((Integer) obj).intValue());
                    return;
                }
            case 14:
                zzbtmVar.zzk(((Integer) obj).intValue());
                return;
            case 15:
                zzbtmVar.zzm(((Long) obj).longValue());
                return;
            case 16:
                int intValue = ((Integer) obj).intValue();
                zzbtmVar.zzx((intValue >> 31) ^ (intValue + intValue));
                return;
            case 17:
                long longValue = ((Long) obj).longValue();
                zzbtmVar.zzz((longValue >> 63) ^ (longValue + longValue));
                return;
            default:
                return;
        }
    }

    private static Object zzn(Object obj) {
        if (obj instanceof zzbvz) {
            return ((zzbvz) obj).zzc();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    private final void zzo(Map.Entry entry) {
        zzbvu zzx;
        zzbtv zzbtvVar = (zzbtv) entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzbuy) {
            throw null;
        }
        zzbtvVar.zzg();
        if (zzbtvVar.zze() != zzbxt.MESSAGE) {
            this.zza.put(zzbtvVar, zzn(value));
            return;
        }
        Object zzf = zzf(zzbtvVar);
        if (zzf == null) {
            this.zza.put(zzbtvVar, zzn(value));
            return;
        }
        if (zzf instanceof zzbvz) {
            zzx = zzbtvVar.zzc((zzbvz) zzf, (zzbvz) value);
        } else {
            zzbvt zzai = ((zzbvu) zzf).zzai();
            zzbtvVar.zzb(zzai, (zzbvu) value);
            zzx = zzai.zzx();
        }
        this.zza.put(zzbtvVar, zzx);
    }

    private static boolean zzp(Map.Entry entry) {
        zzbtv zzbtvVar = (zzbtv) entry.getKey();
        if (zzbtvVar.zze() != zzbxt.MESSAGE) {
            return true;
        }
        zzbtvVar.zzg();
        Object value = entry.getValue();
        if (value instanceof zzbvv) {
            return ((zzbvv) value).zzal();
        }
        if (value instanceof zzbuy) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    private static final int zzq(Map.Entry entry) {
        zzbtv zzbtvVar = (zzbtv) entry.getKey();
        Object value = entry.getValue();
        if (zzbtvVar.zze() != zzbxt.MESSAGE) {
            return zzb(zzbtvVar, value);
        }
        zzbtvVar.zzg();
        zzbtvVar.zzf();
        if (!(value instanceof zzbuy)) {
            ((zzbtv) entry.getKey()).zza();
            int zzM = zzbtm.zzM(24) + zzbtm.zzH((zzbvu) value);
            int zzM2 = zzbtm.zzM(16);
            int zzM3 = zzbtm.zzM(8);
            return zzM3 + zzM3 + zzM2 + zzbtm.zzM(43) + zzM;
        }
        ((zzbtv) entry.getKey()).zza();
        int i = zzbtm.zzf;
        int zza = ((zzbuy) value).zza();
        int zzM4 = zzbtm.zzM(zza) + zza;
        int zzM5 = zzbtm.zzM(24);
        int zzM6 = zzbtm.zzM(16);
        int zzM7 = zzbtm.zzM(8);
        return zzM7 + zzM7 + zzM6 + zzbtm.zzM(43) + zzM5 + zzM4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzbtw) {
            return this.zza.equals(((zzbtw) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final int zzc() {
        int i = 0;
        for (int i2 = 0; i2 < this.zza.zzb(); i2++) {
            i += zzq(this.zza.zzg(i2));
        }
        Iterator it2 = this.zza.zzc().iterator();
        while (it2.hasNext()) {
            i += zzq((Map.Entry) it2.next());
        }
        return i;
    }

    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzbtw clone() {
        zzbtw zzbtwVar = new zzbtw();
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry zzg = this.zza.zzg(i);
            zzbtwVar.zzj((zzbtv) zzg.getKey(), zzg.getValue());
        }
        for (Map.Entry entry : this.zza.zzc()) {
            zzbtwVar.zzj((zzbtv) entry.getKey(), entry.getValue());
        }
        zzbtwVar.zzd = this.zzd;
        return zzbtwVar;
    }

    public final Object zzf(zzbtv zzbtvVar) {
        Object obj = this.zza.get(zzbtvVar);
        if (!(obj instanceof zzbuy)) {
            return obj;
        }
        throw null;
    }

    public final Iterator zzg() {
        return this.zzd ? new zzbux(this.zza.entrySet().iterator()) : this.zza.entrySet().iterator();
    }

    public final void zzh() {
        if (this.zzc) {
            return;
        }
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry zzg = this.zza.zzg(i);
            if (zzg.getValue() instanceof zzbui) {
                ((zzbui) zzg.getValue()).zzab();
            }
        }
        this.zza.zza();
        this.zzc = true;
    }

    public final void zzi(zzbtw zzbtwVar) {
        for (int i = 0; i < zzbtwVar.zza.zzb(); i++) {
            zzo(zzbtwVar.zza.zzg(i));
        }
        Iterator it2 = zzbtwVar.zza.zzc().iterator();
        while (it2.hasNext()) {
            zzo((Map.Entry) it2.next());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0029, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.mlkit_vision_digital_ink.zzbuk) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        if ((r4 instanceof byte[]) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
    
        if (r0 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0020, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.mlkit_vision_digital_ink.zzbuy) == false) goto L32;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0016. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtv r3, java.lang.Object r4) {
        /*
            r2 = this;
            r3.zzg()
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxs r0 = r3.zzd()
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbur.zze(r4)
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxs r1 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxs.zza
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxt r1 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxt.INT
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxt r0 = r0.zzb()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L44;
                case 1: goto L41;
                case 2: goto L3e;
                case 3: goto L3b;
                case 4: goto L38;
                case 5: goto L35;
                case 6: goto L2c;
                case 7: goto L23;
                case 8: goto L1a;
                default: goto L19;
            }
        L19:
            goto L55
        L1a:
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvu
            if (r0 != 0) goto L48
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_digital_ink.zzbuy
            if (r0 == 0) goto L55
            goto L48
        L23:
            boolean r0 = r4 instanceof java.lang.Integer
            if (r0 != 0) goto L48
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_digital_ink.zzbuk
            if (r0 == 0) goto L55
            goto L48
        L2c:
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsz
            if (r0 != 0) goto L48
            boolean r0 = r4 instanceof byte[]
            if (r0 == 0) goto L55
            goto L48
        L35:
            boolean r0 = r4 instanceof java.lang.String
            goto L46
        L38:
            boolean r0 = r4 instanceof java.lang.Boolean
            goto L46
        L3b:
            boolean r0 = r4 instanceof java.lang.Double
            goto L46
        L3e:
            boolean r0 = r4 instanceof java.lang.Float
            goto L46
        L41:
            boolean r0 = r4 instanceof java.lang.Long
            goto L46
        L44:
            boolean r0 = r4 instanceof java.lang.Integer
        L46:
            if (r0 == 0) goto L55
        L48:
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_digital_ink.zzbuy
            if (r0 == 0) goto L4f
            r0 = 1
            r2.zzd = r0
        L4f:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwv r2 = r2.zza
            r2.put(r3, r4)
            return
        L55:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            r3.zza()
            r0 = 43
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxs r3 = r3.zzd()
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxt r3 = r3.zzb()
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = r4.getName()
            java.lang.Object[] r3 = new java.lang.Object[]{r0, r3, r4}
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r3 = java.lang.String.format(r4, r3)
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtw.zzj(com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtv, java.lang.Object):void");
    }

    public final boolean zzl() {
        return this.zzc;
    }

    public final boolean zzm() {
        for (int i = 0; i < this.zza.zzb(); i++) {
            if (!zzp(this.zza.zzg(i))) {
                return false;
            }
        }
        Iterator it2 = this.zza.zzc().iterator();
        while (it2.hasNext()) {
            if (!zzp((Map.Entry) it2.next())) {
                return false;
            }
        }
        return true;
    }

    private zzbtw(boolean z) {
        zzh();
        zzh();
    }
}
