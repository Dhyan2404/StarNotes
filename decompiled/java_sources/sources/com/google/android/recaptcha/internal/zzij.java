package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes6.dex */
final class zzij {
    private static final zzij zzb = new zzij(true);
    final zzle zza = new zzku(16);
    private boolean zzc;
    private boolean zzd;

    private zzij() {
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x002f. Please report as an issue. */
    public static int zza(zzii zziiVar, Object obj) {
        int zzd;
        int zzy;
        zzmb zzd2 = zziiVar.zzd();
        int zza = zziiVar.zza();
        zziiVar.zzg();
        int i = zzhh.zzb;
        int zzy2 = zzhh.zzy(zza << 3);
        if (zzd2 == zzmb.zzj) {
            zzke zzkeVar = (zzke) obj;
            byte[] bArr = zzjc.zzd;
            if (zzkeVar instanceof zzgg) {
                throw null;
            }
            zzy2 += zzy2;
        }
        zzmc zzmcVar = zzmc.INT;
        int i2 = 4;
        switch (zzd2.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                i2 = 8;
                return zzy2 + i2;
            case 1:
                ((Float) obj).floatValue();
                return zzy2 + i2;
            case 2:
                i2 = zzhh.zzz(((Long) obj).longValue());
                return zzy2 + i2;
            case 3:
                i2 = zzhh.zzz(((Long) obj).longValue());
                return zzy2 + i2;
            case 4:
                i2 = zzhh.zzu(((Integer) obj).intValue());
                return zzy2 + i2;
            case 5:
                ((Long) obj).longValue();
                i2 = 8;
                return zzy2 + i2;
            case 6:
                ((Integer) obj).intValue();
                return zzy2 + i2;
            case 7:
                ((Boolean) obj).booleanValue();
                i2 = 1;
                return zzy2 + i2;
            case 8:
                if (!(obj instanceof zzgw)) {
                    i2 = zzhh.zzx((String) obj);
                    return zzy2 + i2;
                }
                zzd = ((zzgw) obj).zzd();
                zzy = zzhh.zzy(zzd);
                i2 = zzy + zzd;
                return zzy2 + i2;
            case 9:
                i2 = ((zzke) obj).zzn();
                return zzy2 + i2;
            case 10:
                if (!(obj instanceof zzjj)) {
                    i2 = zzhh.zzv((zzke) obj);
                    return zzy2 + i2;
                }
                zzd = ((zzjj) obj).zza();
                zzy = zzhh.zzy(zzd);
                i2 = zzy + zzd;
                return zzy2 + i2;
            case 11:
                if (obj instanceof zzgw) {
                    zzd = ((zzgw) obj).zzd();
                    zzy = zzhh.zzy(zzd);
                } else {
                    zzd = ((byte[]) obj).length;
                    zzy = zzhh.zzy(zzd);
                }
                i2 = zzy + zzd;
                return zzy2 + i2;
            case 12:
                i2 = zzhh.zzy(((Integer) obj).intValue());
                return zzy2 + i2;
            case 13:
                i2 = obj instanceof zziv ? zzhh.zzu(((zziv) obj).zza()) : zzhh.zzu(((Integer) obj).intValue());
                return zzy2 + i2;
            case 14:
                ((Integer) obj).intValue();
                return zzy2 + i2;
            case 15:
                ((Long) obj).longValue();
                i2 = 8;
                return zzy2 + i2;
            case 16:
                int intValue = ((Integer) obj).intValue();
                i2 = zzhh.zzy((intValue >> 31) ^ (intValue + intValue));
                return zzy2 + i2;
            case 17:
                long longValue = ((Long) obj).longValue();
                i2 = zzhh.zzz((longValue >> 63) ^ (longValue + longValue));
                return zzy2 + i2;
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static zzij zzd() {
        return zzb;
    }

    private static Object zzl(Object obj) {
        if (obj instanceof zzkj) {
            return ((zzkj) obj).zzd();
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

    private final void zzm(Map.Entry entry) {
        zzke zzj;
        zzii zziiVar = (zzii) entry.getKey();
        Object value = entry.getValue();
        boolean z = value instanceof zzjj;
        zziiVar.zzg();
        if (zziiVar.zze() != zzmc.MESSAGE) {
            if (z) {
                throw new IllegalStateException("Lazy fields must be message-valued");
            }
            this.zza.put(zziiVar, zzl(value));
            return;
        }
        Object zze = zze(zziiVar);
        if (zze == null) {
            this.zza.put(zziiVar, zzl(value));
            if (z) {
                this.zzd = true;
                return;
            }
            return;
        }
        if (z) {
            throw null;
        }
        if (zze instanceof zzkj) {
            zzj = zziiVar.zzc((zzkj) zze, (zzkj) value);
        } else {
            zzkd zzX = ((zzke) zze).zzX();
            zziiVar.zzb(zzX, (zzke) value);
            zzj = zzX.zzj();
        }
        this.zza.put(zziiVar, zzj);
    }

    private static boolean zzn(Map.Entry entry) {
        zzii zziiVar = (zzii) entry.getKey();
        if (zziiVar.zze() != zzmc.MESSAGE) {
            return true;
        }
        zziiVar.zzg();
        Object value = entry.getValue();
        if (value instanceof zzkf) {
            return ((zzkf) value).zzo();
        }
        if (value instanceof zzjj) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    private static final int zzo(Map.Entry entry) {
        zzii zziiVar = (zzii) entry.getKey();
        Object value = entry.getValue();
        if (zziiVar.zze() != zzmc.MESSAGE) {
            return zza(zziiVar, value);
        }
        zziiVar.zzg();
        zziiVar.zzf();
        if (!(value instanceof zzjj)) {
            int zzy = zzhh.zzy(((zzii) entry.getKey()).zza());
            int zzy2 = zzhh.zzy(24) + zzhh.zzv((zzke) value);
            int zzy3 = zzhh.zzy(16);
            int zzy4 = zzhh.zzy(8);
            return zzy4 + zzy4 + zzy3 + zzy + zzy2;
        }
        int zzy5 = zzhh.zzy(((zzii) entry.getKey()).zza());
        int zza = ((zzjj) value).zza();
        int zzy6 = zzhh.zzy(zza) + zza;
        int zzy7 = zzhh.zzy(24);
        int zzy8 = zzhh.zzy(16);
        int zzy9 = zzhh.zzy(8);
        return zzy9 + zzy9 + zzy8 + zzy5 + zzy7 + zzy6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzij) {
            return this.zza.equals(((zzij) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final int zzb() {
        int i = 0;
        for (int i2 = 0; i2 < this.zza.zzb(); i2++) {
            i += zzo(this.zza.zzg(i2));
        }
        Iterator it2 = this.zza.zzc().iterator();
        while (it2.hasNext()) {
            i += zzo((Map.Entry) it2.next());
        }
        return i;
    }

    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzij clone() {
        zzij zzijVar = new zzij();
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry zzg = this.zza.zzg(i);
            zzijVar.zzi((zzii) zzg.getKey(), zzg.getValue());
        }
        for (Map.Entry entry : this.zza.zzc()) {
            zzijVar.zzi((zzii) entry.getKey(), entry.getValue());
        }
        zzijVar.zzd = this.zzd;
        return zzijVar;
    }

    public final Object zze(zzii zziiVar) {
        Object obj = this.zza.get(zziiVar);
        if (!(obj instanceof zzjj)) {
            return obj;
        }
        throw null;
    }

    public final Iterator zzf() {
        boolean z = this.zzd;
        zzle zzleVar = this.zza;
        return z ? new zzji(zzleVar.entrySet().iterator()) : zzleVar.entrySet().iterator();
    }

    public final void zzg() {
        if (this.zzc) {
            return;
        }
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry zzg = this.zza.zzg(i);
            if (zzg.getValue() instanceof zzit) {
                ((zzit) zzg.getValue()).zzB();
            }
        }
        this.zza.zza();
        this.zzc = true;
    }

    public final void zzh(zzij zzijVar) {
        for (int i = 0; i < zzijVar.zza.zzb(); i++) {
            zzm(zzijVar.zza.zzg(i));
        }
        Iterator it2 = zzijVar.zza.zzc().iterator();
        while (it2.hasNext()) {
            zzm((Map.Entry) it2.next());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
    
        if ((r4 instanceof com.google.android.recaptcha.internal.zziv) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
    
        if ((r4 instanceof byte[]) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
    
        if (r0 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0022, code lost:
    
        if ((r4 instanceof com.google.android.recaptcha.internal.zzjj) == false) goto L32;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0018. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(com.google.android.recaptcha.internal.zzii r3, java.lang.Object r4) {
        /*
            r2 = this;
            r3.zzg()
            com.google.android.recaptcha.internal.zzmb r0 = r3.zzd()
            byte[] r1 = com.google.android.recaptcha.internal.zzjc.zzd
            r4.getClass()
            com.google.android.recaptcha.internal.zzmb r1 = com.google.android.recaptcha.internal.zzmb.zza
            com.google.android.recaptcha.internal.zzmc r1 = com.google.android.recaptcha.internal.zzmc.INT
            com.google.android.recaptcha.internal.zzmc r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L46;
                case 1: goto L43;
                case 2: goto L40;
                case 3: goto L3d;
                case 4: goto L3a;
                case 5: goto L37;
                case 6: goto L2e;
                case 7: goto L25;
                case 8: goto L1c;
                default: goto L1b;
            }
        L1b:
            goto L57
        L1c:
            boolean r0 = r4 instanceof com.google.android.recaptcha.internal.zzke
            if (r0 != 0) goto L4a
            boolean r0 = r4 instanceof com.google.android.recaptcha.internal.zzjj
            if (r0 == 0) goto L57
            goto L4a
        L25:
            boolean r0 = r4 instanceof java.lang.Integer
            if (r0 != 0) goto L4a
            boolean r0 = r4 instanceof com.google.android.recaptcha.internal.zziv
            if (r0 == 0) goto L57
            goto L4a
        L2e:
            boolean r0 = r4 instanceof com.google.android.recaptcha.internal.zzgw
            if (r0 != 0) goto L4a
            boolean r0 = r4 instanceof byte[]
            if (r0 == 0) goto L57
            goto L4a
        L37:
            boolean r0 = r4 instanceof java.lang.String
            goto L48
        L3a:
            boolean r0 = r4 instanceof java.lang.Boolean
            goto L48
        L3d:
            boolean r0 = r4 instanceof java.lang.Double
            goto L48
        L40:
            boolean r0 = r4 instanceof java.lang.Float
            goto L48
        L43:
            boolean r0 = r4 instanceof java.lang.Long
            goto L48
        L46:
            boolean r0 = r4 instanceof java.lang.Integer
        L48:
            if (r0 == 0) goto L57
        L4a:
            boolean r0 = r4 instanceof com.google.android.recaptcha.internal.zzjj
            if (r0 == 0) goto L51
            r0 = 1
            r2.zzd = r0
        L51:
            com.google.android.recaptcha.internal.zzle r2 = r2.zza
            r2.put(r3, r4)
            return
        L57:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            int r0 = r3.zza()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            com.google.android.recaptcha.internal.zzmb r3 = r3.zzd()
            com.google.android.recaptcha.internal.zzmc r3 = r3.zza()
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = r4.getName()
            java.lang.Object[] r3 = new java.lang.Object[]{r0, r3, r4}
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r3 = java.lang.String.format(r4, r3)
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzij.zzi(com.google.android.recaptcha.internal.zzii, java.lang.Object):void");
    }

    public final boolean zzj() {
        return this.zzc;
    }

    public final boolean zzk() {
        for (int i = 0; i < this.zza.zzb(); i++) {
            if (!zzn(this.zza.zzg(i))) {
                return false;
            }
        }
        Iterator it2 = this.zza.zzc().iterator();
        while (it2.hasNext()) {
            if (!zzn((Map.Entry) it2.next())) {
                return false;
            }
        }
        return true;
    }

    private zzij(boolean z) {
        zzg();
        zzg();
    }
}
