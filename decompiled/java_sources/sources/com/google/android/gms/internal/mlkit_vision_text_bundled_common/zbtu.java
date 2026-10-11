package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
final class zbtu {
    private static final zbtu zbb = new zbtu(true);
    final zbwh zba = new zbwa();
    private boolean zbc;
    private boolean zbd;

    private zbtu() {
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001a. Please report as an issue. */
    public static int zba(zbww zbwwVar, int i, Object obj) {
        int zbd;
        int zbD;
        int zbD2 = zbtk.zbD(i << 3);
        if (zbwwVar == zbww.zbj) {
            zbuo.zbd((zbvm) obj);
            zbD2 += zbD2;
        }
        zbwx zbwxVar = zbwx.INT;
        int i2 = 4;
        switch (zbwwVar.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                i2 = 8;
                return zbD2 + i2;
            case 1:
                ((Float) obj).floatValue();
                return zbD2 + i2;
            case 2:
                i2 = zbtk.zbE(((Long) obj).longValue());
                return zbD2 + i2;
            case 3:
                i2 = zbtk.zbE(((Long) obj).longValue());
                return zbD2 + i2;
            case 4:
                i2 = zbtk.zbE(((Integer) obj).intValue());
                return zbD2 + i2;
            case 5:
                ((Long) obj).longValue();
                i2 = 8;
                return zbD2 + i2;
            case 6:
                ((Integer) obj).intValue();
                return zbD2 + i2;
            case 7:
                ((Boolean) obj).booleanValue();
                i2 = 1;
                return zbD2 + i2;
            case 8:
                if (!(obj instanceof zbtc)) {
                    i2 = zbtk.zbC((String) obj);
                    return zbD2 + i2;
                }
                zbd = ((zbtc) obj).zbd();
                zbD = zbtk.zbD(zbd);
                i2 = zbD + zbd;
                return zbD2 + i2;
            case 9:
                i2 = ((zbvm) obj).zbo();
                return zbD2 + i2;
            case 10:
                if (!(obj instanceof zbuv)) {
                    i2 = zbtk.zbA((zbvm) obj);
                    return zbD2 + i2;
                }
                zbd = ((zbuv) obj).zba();
                zbD = zbtk.zbD(zbd);
                i2 = zbD + zbd;
                return zbD2 + i2;
            case 11:
                if (obj instanceof zbtc) {
                    zbd = ((zbtc) obj).zbd();
                    zbD = zbtk.zbD(zbd);
                } else {
                    zbd = ((byte[]) obj).length;
                    zbD = zbtk.zbD(zbd);
                }
                i2 = zbD + zbd;
                return zbD2 + i2;
            case 12:
                i2 = zbtk.zbD(((Integer) obj).intValue());
                return zbD2 + i2;
            case 13:
                i2 = obj instanceof zbuh ? zbtk.zbE(((zbuh) obj).zba()) : zbtk.zbE(((Integer) obj).intValue());
                return zbD2 + i2;
            case 14:
                ((Integer) obj).intValue();
                return zbD2 + i2;
            case 15:
                ((Long) obj).longValue();
                i2 = 8;
                return zbD2 + i2;
            case 16:
                int intValue = ((Integer) obj).intValue();
                i2 = zbtk.zbD((intValue >> 31) ^ (intValue + intValue));
                return zbD2 + i2;
            case 17:
                long longValue = ((Long) obj).longValue();
                i2 = zbtk.zbE((longValue >> 63) ^ (longValue + longValue));
                return zbD2 + i2;
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int zbb(zbtt zbttVar, Object obj) {
        zbww zbd = zbttVar.zbd();
        zbttVar.zba();
        zbttVar.zbg();
        return zba(zbd, 32149011, obj);
    }

    public static zbtu zbe() {
        return zbb;
    }

    public static void zbk(zbtk zbtkVar, zbww zbwwVar, int i, Object obj) throws IOException {
        if (zbwwVar == zbww.zbj) {
            zbvm zbvmVar = (zbvm) obj;
            zbuo.zbd(zbvmVar);
            zbtkVar.zbu(i, 3);
            zbvmVar.zbL(zbtkVar);
            zbtkVar.zbu(i, 4);
            return;
        }
        zbtkVar.zbu(i, zbwwVar.zba());
        zbwx zbwxVar = zbwx.INT;
        switch (zbwwVar.ordinal()) {
            case 0:
                zbtkVar.zbk(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                return;
            case 1:
                zbtkVar.zbi(Float.floatToRawIntBits(((Float) obj).floatValue()));
                return;
            case 2:
                zbtkVar.zby(((Long) obj).longValue());
                return;
            case 3:
                zbtkVar.zby(((Long) obj).longValue());
                return;
            case 4:
                zbtkVar.zbm(((Integer) obj).intValue());
                return;
            case 5:
                zbtkVar.zbk(((Long) obj).longValue());
                return;
            case 6:
                zbtkVar.zbi(((Integer) obj).intValue());
                return;
            case 7:
                zbtkVar.zbb(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                return;
            case 8:
                if (obj instanceof zbtc) {
                    zbtkVar.zbg((zbtc) obj);
                    return;
                } else {
                    zbtkVar.zbt((String) obj);
                    return;
                }
            case 9:
                ((zbvm) obj).zbL(zbtkVar);
                return;
            case 10:
                zbtkVar.zbp((zbvm) obj);
                return;
            case 11:
                if (obj instanceof zbtc) {
                    zbtkVar.zbg((zbtc) obj);
                    return;
                } else {
                    byte[] bArr = (byte[]) obj;
                    zbtkVar.zbe(bArr, 0, bArr.length);
                    return;
                }
            case 12:
                zbtkVar.zbw(((Integer) obj).intValue());
                return;
            case 13:
                if (obj instanceof zbuh) {
                    zbtkVar.zbm(((zbuh) obj).zba());
                    return;
                } else {
                    zbtkVar.zbm(((Integer) obj).intValue());
                    return;
                }
            case 14:
                zbtkVar.zbi(((Integer) obj).intValue());
                return;
            case 15:
                zbtkVar.zbk(((Long) obj).longValue());
                return;
            case 16:
                int intValue = ((Integer) obj).intValue();
                zbtkVar.zbw((intValue >> 31) ^ (intValue + intValue));
                return;
            case 17:
                long longValue = ((Long) obj).longValue();
                zbtkVar.zby((longValue >> 63) ^ (longValue + longValue));
                return;
            default:
                return;
        }
    }

    private static Object zbn(Object obj) {
        if (obj instanceof zbvr) {
            return ((zbvr) obj).zbc();
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

    private final void zbo(Map.Entry entry) {
        zbtt zbttVar = (zbtt) entry.getKey();
        Object value = entry.getValue();
        boolean z = value instanceof zbuv;
        zbttVar.zbg();
        if (zbttVar.zbe() != zbwx.MESSAGE) {
            if (z) {
                throw new IllegalStateException("Lazy fields must be message-valued");
            }
            this.zba.put(zbttVar, zbn(value));
            return;
        }
        Object zbf = zbf(zbttVar);
        if (zbf == null) {
            this.zba.put(zbttVar, zbn(value));
            if (z) {
                this.zbd = true;
                return;
            }
            return;
        }
        if (z) {
            throw null;
        }
        this.zba.put(zbttVar, zbf instanceof zbvr ? zbttVar.zbc((zbvr) zbf, (zbvr) value) : zbttVar.zbb(((zbvm) zbf).zbK(), (zbvm) value).zbk());
    }

    private static boolean zbp(Map.Entry entry) {
        zbtt zbttVar = (zbtt) entry.getKey();
        if (zbttVar.zbe() != zbwx.MESSAGE) {
            return true;
        }
        zbttVar.zbg();
        Object value = entry.getValue();
        if (value instanceof zbvn) {
            return ((zbvn) value).zbp();
        }
        if (value instanceof zbuv) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    private static final int zbq(Map.Entry entry) {
        int i;
        int zbD;
        int zbD2;
        zbtt zbttVar = (zbtt) entry.getKey();
        Object value = entry.getValue();
        if (zbttVar.zbe() != zbwx.MESSAGE) {
            return zbb(zbttVar, value);
        }
        zbttVar.zbg();
        zbttVar.zbf();
        if (value instanceof zbuv) {
            ((zbtt) entry.getKey()).zba();
            int zbD3 = zbtk.zbD(8);
            i = zbD3 + zbD3;
            zbD = zbtk.zbD(16) + zbtk.zbD(32149011);
            int zbD4 = zbtk.zbD(24);
            int zba = ((zbuv) value).zba();
            zbD2 = zbD4 + zbtk.zbD(zba) + zba;
        } else {
            ((zbtt) entry.getKey()).zba();
            int zbD5 = zbtk.zbD(8);
            i = zbD5 + zbD5;
            zbD = zbtk.zbD(16) + zbtk.zbD(32149011);
            zbD2 = zbtk.zbD(24) + zbtk.zbA((zbvm) value);
        }
        return i + zbD + zbD2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zbtu) {
            return this.zba.equals(((zbtu) obj).zba);
        }
        return false;
    }

    public final int hashCode() {
        return this.zba.hashCode();
    }

    public final int zbc() {
        int zbc = this.zba.zbc();
        int i = 0;
        for (int i2 = 0; i2 < zbc; i2++) {
            i += zbq(this.zba.zbg(i2));
        }
        Iterator it2 = this.zba.zbd().iterator();
        while (it2.hasNext()) {
            i += zbq((Map.Entry) it2.next());
        }
        return i;
    }

    /* renamed from: zbd, reason: merged with bridge method [inline-methods] */
    public final zbtu clone() {
        zbtu zbtuVar = new zbtu();
        int zbc = this.zba.zbc();
        for (int i = 0; i < zbc; i++) {
            Map.Entry zbg = this.zba.zbg(i);
            zbtuVar.zbj((zbtt) ((zbwb) zbg).zba(), zbg.getValue());
        }
        for (Map.Entry entry : this.zba.zbd()) {
            zbtuVar.zbj((zbtt) entry.getKey(), entry.getValue());
        }
        zbtuVar.zbd = this.zbd;
        return zbtuVar;
    }

    public final Object zbf(zbtt zbttVar) {
        Object obj = this.zba.get(zbttVar);
        if (!(obj instanceof zbuv)) {
            return obj;
        }
        throw null;
    }

    public final Iterator zbg() {
        return this.zba.isEmpty() ? Collections.emptyIterator() : this.zbd ? new zbuu(this.zba.entrySet().iterator()) : this.zba.entrySet().iterator();
    }

    public final void zbh() {
        if (this.zbc) {
            return;
        }
        int zbc = this.zba.zbc();
        for (int i = 0; i < zbc; i++) {
            Map.Entry zbg = this.zba.zbg(i);
            if (zbg.getValue() instanceof zbuf) {
                ((zbuf) zbg.getValue()).zbB();
            }
        }
        this.zba.zba();
        this.zbc = true;
    }

    public final void zbi(zbtu zbtuVar) {
        int zbc = zbtuVar.zba.zbc();
        for (int i = 0; i < zbc; i++) {
            zbo(zbtuVar.zba.zbg(i));
        }
        Iterator it2 = zbtuVar.zba.zbd().iterator();
        while (it2.hasNext()) {
            zbo((Map.Entry) it2.next());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuh) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
    
        if ((r4 instanceof byte[]) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
    
        if (r0 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0022, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuv) == false) goto L32;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0018. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zbj(com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtt r3, java.lang.Object r4) {
        /*
            r2 = this;
            r3.zbg()
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbww r0 = r3.zbd()
            byte[] r1 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuo.zbb
            r4.getClass()
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbww r1 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbww.zba
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwx r1 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwx.INT
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwx r0 = r0.zbb()
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
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvm
            if (r0 != 0) goto L4a
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuv
            if (r0 == 0) goto L57
            goto L4a
        L25:
            boolean r0 = r4 instanceof java.lang.Integer
            if (r0 != 0) goto L4a
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuh
            if (r0 == 0) goto L57
            goto L4a
        L2e:
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtc
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
            boolean r0 = r4 instanceof com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuv
            if (r0 == 0) goto L51
            r0 = 1
            r2.zbd = r0
        L51:
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwh r2 = r2.zba
            r2.put(r3, r4)
            return
        L57:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            r3.zba()
            r0 = 32149011(0x1ea8e13, float:8.616189E-38)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbww r3 = r3.zbd()
            com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwx r3 = r3.zbb()
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = r4.getName()
            java.lang.Object[] r3 = new java.lang.Object[]{r0, r3, r4}
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r3 = java.lang.String.format(r4, r3)
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtu.zbj(com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtt, java.lang.Object):void");
    }

    public final boolean zbl() {
        return this.zbc;
    }

    public final boolean zbm() {
        int zbc = this.zba.zbc();
        for (int i = 0; i < zbc; i++) {
            if (!zbp(this.zba.zbg(i))) {
                return false;
            }
        }
        Iterator it2 = this.zba.zbd().iterator();
        while (it2.hasNext()) {
            if (!zbp((Map.Entry) it2.next())) {
                return false;
            }
        }
        return true;
    }

    private zbtu(boolean z) {
        zbh();
        zbh();
    }
}
