package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zbvp<T> implements zbvx<T> {
    private static final int[] zba = new int[0];
    private static final Unsafe zbb = zbws.zbg();
    private final int[] zbc;
    private final Object[] zbd;
    private final int zbe;
    private final int zbf;
    private final zbvm zbg;
    private final boolean zbh;
    private final int[] zbi;
    private final int zbj;
    private final int zbk;
    private final zbwl zbl;
    private final zbtq zbm;

    private zbvp(int[] iArr, Object[] objArr, int i, int i2, zbvm zbvmVar, boolean z, int[] iArr2, int i3, int i4, zbvs zbvsVar, zbuy zbuyVar, zbwl zbwlVar, zbtq zbtqVar, zbvh zbvhVar) {
        this.zbc = iArr;
        this.zbd = objArr;
        this.zbe = i;
        this.zbf = i2;
        boolean z2 = false;
        if (zbtqVar != null && (zbvmVar instanceof zbub)) {
            z2 = true;
        }
        this.zbh = z2;
        this.zbi = iArr2;
        this.zbj = i3;
        this.zbk = i4;
        this.zbl = zbwlVar;
        this.zbm = zbtqVar;
        this.zbg = zbvmVar;
    }

    private static void zbA(Object obj) {
        if (!zbL(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zbB(Object obj, Object obj2, int i) {
        if (zbI(obj2, i)) {
            int zbs = zbs(i) & 1048575;
            Unsafe unsafe = zbb;
            long j = zbs;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zbc[i] + " is present but null: " + obj2.toString());
            }
            zbvx zbv = zbv(i);
            if (!zbI(obj, i)) {
                if (zbL(object)) {
                    Object zbe = zbv.zbe();
                    zbv.zbg(zbe, object);
                    unsafe.putObject(obj, j, zbe);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zbD(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zbL(object2)) {
                Object zbe2 = zbv.zbe();
                zbv.zbg(zbe2, object2);
                unsafe.putObject(obj, j, zbe2);
                object2 = zbe2;
            }
            zbv.zbg(object2, object);
        }
    }

    private final void zbC(Object obj, Object obj2, int i) {
        int i2 = this.zbc[i];
        if (zbM(obj2, i2, i)) {
            int zbs = zbs(i) & 1048575;
            Unsafe unsafe = zbb;
            long j = zbs;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zbc[i] + " is present but null: " + obj2.toString());
            }
            zbvx zbv = zbv(i);
            if (!zbM(obj, i2, i)) {
                if (zbL(object)) {
                    Object zbe = zbv.zbe();
                    zbv.zbg(zbe, object);
                    unsafe.putObject(obj, j, zbe);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zbE(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zbL(object2)) {
                Object zbe2 = zbv.zbe();
                zbv.zbg(zbe2, object2);
                unsafe.putObject(obj, j, zbe2);
                object2 = zbe2;
            }
            zbv.zbg(object2, object);
        }
    }

    private final void zbD(Object obj, int i) {
        int zbp = zbp(i);
        long j = 1048575 & zbp;
        if (j == 1048575) {
            return;
        }
        zbws.zbq(obj, j, (1 << (zbp >>> 20)) | zbws.zbc(obj, j));
    }

    private final void zbE(Object obj, int i, int i2) {
        zbws.zbq(obj, zbp(i2) & 1048575, i);
    }

    private final void zbF(Object obj, int i, Object obj2) {
        zbb.putObject(obj, zbs(i) & 1048575, obj2);
        zbD(obj, i);
    }

    private final void zbG(Object obj, int i, int i2, Object obj2) {
        zbb.putObject(obj, zbs(i2) & 1048575, obj2);
        zbE(obj, i, i2);
    }

    private final boolean zbH(Object obj, Object obj2, int i) {
        return zbI(obj, i) == zbI(obj2, i);
    }

    private final boolean zbI(Object obj, int i) {
        int zbp = zbp(i);
        long j = zbp & 1048575;
        if (j != 1048575) {
            return ((1 << (zbp >>> 20)) & zbws.zbc(obj, j)) != 0;
        }
        int zbs = zbs(i);
        long j2 = zbs & 1048575;
        switch (zbr(zbs)) {
            case 0:
                return Double.doubleToRawLongBits(zbws.zba(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zbws.zbb(obj, j2)) != 0;
            case 2:
                return zbws.zbd(obj, j2) != 0;
            case 3:
                return zbws.zbd(obj, j2) != 0;
            case 4:
                return zbws.zbc(obj, j2) != 0;
            case 5:
                return zbws.zbd(obj, j2) != 0;
            case 6:
                return zbws.zbc(obj, j2) != 0;
            case 7:
                return zbws.zbw(obj, j2);
            case 8:
                Object zbf = zbws.zbf(obj, j2);
                if (zbf instanceof String) {
                    return !((String) zbf).isEmpty();
                }
                if (zbf instanceof zbtc) {
                    return !zbtc.zbb.equals(zbf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zbws.zbf(obj, j2) != null;
            case 10:
                return !zbtc.zbb.equals(zbws.zbf(obj, j2));
            case 11:
                return zbws.zbc(obj, j2) != 0;
            case 12:
                return zbws.zbc(obj, j2) != 0;
            case 13:
                return zbws.zbc(obj, j2) != 0;
            case 14:
                return zbws.zbd(obj, j2) != 0;
            case 15:
                return zbws.zbc(obj, j2) != 0;
            case 16:
                return zbws.zbd(obj, j2) != 0;
            case 17:
                return zbws.zbf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zbJ(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zbI(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zbK(Object obj, int i, zbvx zbvxVar) {
        return zbvxVar.zbk(zbws.zbf(obj, i & 1048575));
    }

    private static boolean zbL(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zbuf) {
            return ((zbuf) obj).zbG();
        }
        return true;
    }

    private final boolean zbM(Object obj, int i, int i2) {
        return zbws.zbc(obj, (long) (zbp(i2) & 1048575)) == i;
    }

    private static boolean zbN(Object obj, long j) {
        return ((Boolean) zbws.zbf(obj, j)).booleanValue();
    }

    private static final int zbO(byte[] bArr, int i, int i2, zbww zbwwVar, Class cls, zbsq zbsqVar) throws IOException {
        int i3;
        zbww zbwwVar2 = zbww.zba;
        switch (zbwwVar.ordinal()) {
            case 0:
                i3 = i + 8;
                zbsqVar.zbc = Double.valueOf(Double.longBitsToDouble(zbsr.zbr(bArr, i)));
                break;
            case 1:
                i3 = i + 4;
                zbsqVar.zbc = Float.valueOf(Float.intBitsToFloat(zbsr.zbc(bArr, i)));
                break;
            case 2:
            case 3:
                int zbn = zbsr.zbn(bArr, i, zbsqVar);
                zbsqVar.zbc = Long.valueOf(zbsqVar.zbb);
                return zbn;
            case 4:
            case 12:
            case 13:
                int zbk = zbsr.zbk(bArr, i, zbsqVar);
                zbsqVar.zbc = Integer.valueOf(zbsqVar.zba);
                return zbk;
            case 5:
            case 15:
                i3 = i + 8;
                zbsqVar.zbc = Long.valueOf(zbsr.zbr(bArr, i));
                break;
            case 6:
            case 14:
                i3 = i + 4;
                zbsqVar.zbc = Integer.valueOf(zbsr.zbc(bArr, i));
                break;
            case 7:
                int zbn2 = zbsr.zbn(bArr, i, zbsqVar);
                zbsqVar.zbc = Boolean.valueOf(zbsqVar.zbb != 0);
                return zbn2;
            case 8:
                return zbsr.zbi(bArr, i, zbsqVar);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                return zbsr.zbe(zbvu.zba().zbb(cls), bArr, i, i2, zbsqVar);
            case 11:
                return zbsr.zba(bArr, i, zbsqVar);
            case 16:
                int zbk2 = zbsr.zbk(bArr, i, zbsqVar);
                zbsqVar.zbc = Integer.valueOf(zbtg.zbb(zbsqVar.zba));
                return zbk2;
            case 17:
                int zbn3 = zbsr.zbn(bArr, i, zbsqVar);
                zbsqVar.zbc = Long.valueOf(zbtg.zbc(zbsqVar.zbb));
                return zbn3;
        }
        return i3;
    }

    private static final void zbP(int i, Object obj, zbwy zbwyVar) throws IOException {
        if (obj instanceof String) {
            zbwyVar.zbH(i, (String) obj);
        } else {
            zbwyVar.zbd(i, (zbtc) obj);
        }
    }

    public static zbwm zbd(Object obj) {
        zbuf zbufVar = (zbuf) obj;
        zbwm zbwmVar = zbufVar.zbc;
        if (zbwmVar != zbwm.zbc()) {
            return zbwmVar;
        }
        zbwm zbf = zbwm.zbf();
        zbufVar.zbc = zbf;
        return zbf;
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0268  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvp zbl(java.lang.Class r34, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvj r35, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvs r36, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuy r37, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwl r38, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtq r39, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvh r40) {
        /*
            Method dump skipped, instructions count: 1044
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvp.zbl(java.lang.Class, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvj, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvs, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuy, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwl, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtq, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvh):com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvp");
    }

    private static double zbm(Object obj, long j) {
        return ((Double) zbws.zbf(obj, j)).doubleValue();
    }

    private static float zbn(Object obj, long j) {
        return ((Float) zbws.zbf(obj, j)).floatValue();
    }

    private static int zbo(Object obj, long j) {
        return ((Integer) zbws.zbf(obj, j)).intValue();
    }

    private final int zbp(int i) {
        return this.zbc[i + 2];
    }

    private final int zbq(int i, int i2) {
        int length = (this.zbc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zbc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int zbr(int i) {
        return (i >>> 20) & 255;
    }

    private final int zbs(int i) {
        return this.zbc[i + 1];
    }

    private static long zbt(Object obj, long j) {
        return ((Long) zbws.zbf(obj, j)).longValue();
    }

    private final zbuj zbu(int i) {
        int i2 = i / 3;
        return (zbuj) this.zbd[i2 + i2 + 1];
    }

    private final zbvx zbv(int i) {
        Object[] objArr = this.zbd;
        int i2 = i / 3;
        int i3 = i2 + i2;
        zbvx zbvxVar = (zbvx) objArr[i3];
        if (zbvxVar != null) {
            return zbvxVar;
        }
        zbvx zbb2 = zbvu.zba().zbb((Class) objArr[i3 + 1]);
        this.zbd[i3] = zbb2;
        return zbb2;
    }

    private final Object zbw(int i) {
        int i2 = i / 3;
        return this.zbd[i2 + i2];
    }

    private final Object zbx(Object obj, int i) {
        zbvx zbv = zbv(i);
        int zbs = zbs(i) & 1048575;
        if (!zbI(obj, i)) {
            return zbv.zbe();
        }
        Object object = zbb.getObject(obj, zbs);
        if (zbL(object)) {
            return object;
        }
        Object zbe = zbv.zbe();
        if (object != null) {
            zbv.zbg(zbe, object);
        }
        return zbe;
    }

    private final Object zby(Object obj, int i, int i2) {
        zbvx zbv = zbv(i2);
        if (!zbM(obj, i, i2)) {
            return zbv.zbe();
        }
        Object object = zbb.getObject(obj, zbs(i2) & 1048575);
        if (zbL(object)) {
            return object;
        }
        Object zbe = zbv.zbe();
        if (object != null) {
            zbv.zbg(zbe, object);
        }
        return zbe;
    }

    private static Field zbz(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0056. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v115, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v118, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v137 */
    /* JADX WARN: Type inference failed for: r0v185, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v253, types: [int] */
    /* JADX WARN: Type inference failed for: r0v260, types: [int] */
    /* JADX WARN: Type inference failed for: r0v265 */
    /* JADX WARN: Type inference failed for: r0v266 */
    /* JADX WARN: Type inference failed for: r0v267 */
    /* JADX WARN: Type inference failed for: r0v268 */
    /* JADX WARN: Type inference failed for: r0v269 */
    /* JADX WARN: Type inference failed for: r0v270 */
    /* JADX WARN: Type inference failed for: r0v271 */
    /* JADX WARN: Type inference failed for: r0v272 */
    /* JADX WARN: Type inference failed for: r0v273 */
    /* JADX WARN: Type inference failed for: r0v274 */
    /* JADX WARN: Type inference failed for: r0v275 */
    /* JADX WARN: Type inference failed for: r0v276 */
    /* JADX WARN: Type inference failed for: r0v277 */
    /* JADX WARN: Type inference failed for: r0v278 */
    /* JADX WARN: Type inference failed for: r0v279 */
    /* JADX WARN: Type inference failed for: r0v280 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v118, types: [int] */
    /* JADX WARN: Type inference failed for: r1v121, types: [int] */
    /* JADX WARN: Type inference failed for: r1v158 */
    /* JADX WARN: Type inference failed for: r1v161 */
    /* JADX WARN: Type inference failed for: r1v162 */
    /* JADX WARN: Type inference failed for: r1v163 */
    /* JADX WARN: Type inference failed for: r1v164 */
    /* JADX WARN: Type inference failed for: r1v78, types: [int] */
    /* JADX WARN: Type inference failed for: r1v80 */
    /* JADX WARN: Type inference failed for: r2v32, types: [int] */
    /* JADX WARN: Type inference failed for: r2v40, types: [int] */
    /* JADX WARN: Type inference failed for: r2v44, types: [int] */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v53, types: [int] */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r2v82, types: [int] */
    /* JADX WARN: Type inference failed for: r2v84 */
    /* JADX WARN: Type inference failed for: r2v85, types: [int] */
    /* JADX WARN: Type inference failed for: r2v93 */
    /* JADX WARN: Type inference failed for: r2v94 */
    /* JADX WARN: Type inference failed for: r2v95 */
    /* JADX WARN: Type inference failed for: r2v96 */
    /* JADX WARN: Type inference failed for: r2v97 */
    /* JADX WARN: Type inference failed for: r2v98 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27, types: [int] */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v30, types: [int] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v39, types: [int] */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v46, types: [int] */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r3v58 */
    /* JADX WARN: Type inference failed for: r3v59 */
    /* JADX WARN: Type inference failed for: r3v60 */
    /* JADX WARN: Type inference failed for: r3v61 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31, types: [int] */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v38, types: [int] */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v44 */
    /* JADX WARN: Type inference failed for: r4v45 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final int zba(Object obj) {
        int i;
        int i2;
        ?? r5;
        int zbD;
        int zbD2;
        int zbD3;
        int zbE;
        int zbD4;
        int zbD5;
        int zbd;
        int zbD6;
        ?? zbg;
        int size;
        int zbD7;
        int zbC;
        int zbC2;
        ?? r3;
        int zbB;
        ?? r1;
        ?? r0;
        int zbe;
        int zbD8;
        int zbD9;
        ?? r4;
        Unsafe unsafe = zbb;
        boolean z = false;
        int i3 = 1048575;
        ?? r12 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i4 < this.zbc.length) {
            int zbs = zbs(i4);
            int zbr = zbr(zbs);
            int[] iArr = this.zbc;
            int i7 = iArr[i4];
            int i8 = iArr[i4 + 2];
            int i9 = i8 & i3;
            if (zbr <= 17) {
                if (i9 != i6) {
                    r12 = i9 == i3 ? z : unsafe.getInt(obj, i9);
                    i6 = i9;
                }
                i = i6;
                i2 = r12;
                r5 = 1 << (i8 >>> 20);
            } else {
                i = i6;
                i2 = r12;
                r5 = z;
            }
            int i10 = zbs & i3;
            if (zbr >= zbtv.zbJ.zba()) {
                zbtv.zbW.zba();
            }
            long j = i10;
            switch (zbr) {
                case 0:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        zbD = zbtk.zbD(i7 << 3);
                        r0 = zbD + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        zbD2 = zbtk.zbD(i7 << 3);
                        r0 = zbD2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        long j2 = unsafe.getLong(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbE(j2);
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        long j3 = unsafe.getLong(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbE(j3);
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        long j4 = unsafe.getInt(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbE(j4);
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        zbD = zbtk.zbD(i7 << 3);
                        r0 = zbD + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        zbD2 = zbtk.zbD(i7 << 3);
                        r0 = zbD2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        zbD4 = zbtk.zbD(i7 << 3);
                        r0 = zbD4 + 1;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zbJ(obj, i4, i, i2, r5)) {
                        break;
                    } else {
                        int i11 = i7 << 3;
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zbtc) {
                            zbD5 = zbtk.zbD(i11);
                            zbd = ((zbtc) object).zbd();
                            zbD6 = zbtk.zbD(zbd);
                            r0 = zbD5 + zbD6 + zbd;
                            i5 += r0;
                            break;
                        } else {
                            zbD3 = zbtk.zbD(i11);
                            zbE = zbtk.zbC((String) object);
                            r0 = zbD3 + zbE;
                            i5 += r0;
                        }
                    }
                case 9:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        r0 = zbvz.zbh(i7, unsafe.getObject(obj, j), zbv(i4));
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        zbtc zbtcVar = (zbtc) unsafe.getObject(obj, j);
                        zbD5 = zbtk.zbD(i7 << 3);
                        zbd = zbtcVar.zbd();
                        zbD6 = zbtk.zbD(zbd);
                        r0 = zbD5 + zbD6 + zbd;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        int i12 = unsafe.getInt(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbD(i12);
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        long j5 = unsafe.getInt(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbE(j5);
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        zbD2 = zbtk.zbD(i7 << 3);
                        r0 = zbD2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        zbD = zbtk.zbD(i7 << 3);
                        r0 = zbD + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        int i13 = unsafe.getInt(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbD((i13 >> 31) ^ (i13 + i13));
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        long j6 = unsafe.getLong(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbE((j6 >> 63) ^ (j6 + j6));
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zbJ(obj, i4, i, i2, r5)) {
                        r0 = zbtk.zbz(i7, (zbvm) unsafe.getObject(obj, j), zbv(i4));
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    r0 = zbvz.zbd(i7, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 19:
                    r0 = zbvz.zbb(i7, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    int i14 = zbvz.zba;
                    if (list.size() != 0) {
                        zbg = zbvz.zbg(list) + (list.size() * zbtk.zbD(i7 << 3));
                        i5 += zbg;
                        break;
                    }
                    zbg = z;
                    i5 += zbg;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    int i15 = zbvz.zba;
                    size = list2.size();
                    if (size != 0) {
                        zbD3 = zbvz.zbl(list2);
                        zbD7 = zbtk.zbD(i7 << 3);
                        zbE = size * zbD7;
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    int i16 = zbvz.zba;
                    size = list3.size();
                    if (size != 0) {
                        zbD3 = zbvz.zbf(list3);
                        zbD7 = zbtk.zbD(i7 << 3);
                        zbE = size * zbD7;
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 23:
                    r0 = zbvz.zbd(i7, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 24:
                    r0 = zbvz.zbb(i7, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j);
                    int i17 = zbvz.zba;
                    int size2 = list4.size();
                    if (size2 != 0) {
                        r0 = size2 * (zbtk.zbD(i7 << 3) + 1);
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 26:
                    ?? r02 = (List) unsafe.getObject(obj, j);
                    int i18 = zbvz.zba;
                    int size3 = r02.size();
                    if (size3 != 0) {
                        int zbD10 = zbtk.zbD(i7 << 3) * size3;
                        if (r02 instanceof zbux) {
                            zbux zbuxVar = (zbux) r02;
                            zbg = zbD10;
                            for (?? r32 = z; r32 < size3; r32++) {
                                Object zba2 = zbuxVar.zba();
                                if (zba2 instanceof zbtc) {
                                    int zbd2 = ((zbtc) zba2).zbd();
                                    zbC2 = zbg + zbtk.zbD(zbd2) + zbd2;
                                } else {
                                    zbC2 = zbg + zbtk.zbC((String) zba2);
                                }
                                zbg = zbC2;
                            }
                        } else {
                            zbg = zbD10;
                            for (?? r33 = z; r33 < size3; r33++) {
                                Object obj2 = r02.get(r33);
                                if (obj2 instanceof zbtc) {
                                    int zbd3 = ((zbtc) obj2).zbd();
                                    zbC = zbg + zbtk.zbD(zbd3) + zbd3;
                                } else {
                                    zbC = zbg + zbtk.zbC((String) obj2);
                                }
                                zbg = zbC;
                            }
                        }
                        i5 += zbg;
                        break;
                    }
                    zbg = z;
                    i5 += zbg;
                case 27:
                    ?? r03 = (List) unsafe.getObject(obj, j);
                    zbvx zbv = zbv(i4);
                    int i19 = zbvz.zba;
                    int size4 = r03.size();
                    if (size4 == 0) {
                        r3 = z;
                    } else {
                        r3 = zbtk.zbD(i7 << 3) * size4;
                        for (?? r42 = z; r42 < size4; r42++) {
                            Object obj3 = r03.get(r42);
                            if (obj3 instanceof zbuw) {
                                int zba3 = ((zbuw) obj3).zba();
                                zbB = (r3 == true ? 1 : 0) + zbtk.zbD(zba3) + zba3;
                            } else {
                                zbB = (r3 == true ? 1 : 0) + zbtk.zbB((zbvm) obj3, zbv);
                            }
                            r3 = zbB;
                        }
                    }
                    i5 += r3;
                    break;
                case 28:
                    ?? r04 = (List) unsafe.getObject(obj, j);
                    int i20 = zbvz.zba;
                    int size5 = r04.size();
                    if (size5 == 0) {
                        r1 = z;
                    } else {
                        r1 = size5 * zbtk.zbD(i7 << 3);
                        for (?? r2 = z; r2 < r04.size(); r2++) {
                            int zbd4 = ((zbtc) r04.get(r2)).zbd();
                            r1 += zbtk.zbD(zbd4) + zbd4;
                        }
                    }
                    i5 += r1;
                    break;
                case 29:
                    List list5 = (List) unsafe.getObject(obj, j);
                    int i21 = zbvz.zba;
                    size = list5.size();
                    if (size != 0) {
                        zbD3 = zbvz.zbk(list5);
                        zbD7 = zbtk.zbD(i7 << 3);
                        zbE = size * zbD7;
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 30:
                    List list6 = (List) unsafe.getObject(obj, j);
                    int i22 = zbvz.zba;
                    size = list6.size();
                    if (size != 0) {
                        zbD3 = zbvz.zba(list6);
                        zbD7 = zbtk.zbD(i7 << 3);
                        zbE = size * zbD7;
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 31:
                    r0 = zbvz.zbb(i7, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 32:
                    r0 = zbvz.zbd(i7, (List) unsafe.getObject(obj, j), z);
                    i5 += r0;
                    break;
                case 33:
                    List list7 = (List) unsafe.getObject(obj, j);
                    int i23 = zbvz.zba;
                    size = list7.size();
                    if (size != 0) {
                        zbD3 = zbvz.zbi(list7);
                        zbD7 = zbtk.zbD(i7 << 3);
                        zbE = size * zbD7;
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 34:
                    List list8 = (List) unsafe.getObject(obj, j);
                    int i24 = zbvz.zba;
                    size = list8.size();
                    if (size != 0) {
                        zbD3 = zbvz.zbj(list8);
                        zbD7 = zbtk.zbD(i7 << 3);
                        zbE = size * zbD7;
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    }
                    r0 = z;
                    i5 += r0;
                case 35:
                    zbe = zbvz.zbe((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    zbe = zbvz.zbc((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    zbe = zbvz.zbg((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    zbe = zbvz.zbl((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    zbe = zbvz.zbf((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    zbe = zbvz.zbe((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    zbe = zbvz.zbc((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list9 = (List) unsafe.getObject(obj, j);
                    int i25 = zbvz.zba;
                    zbe = list9.size();
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    zbe = zbvz.zbk((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    zbe = zbvz.zba((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    zbe = zbvz.zbc((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    zbe = zbvz.zbe((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    zbe = zbvz.zbi((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    zbe = zbvz.zbj((List) unsafe.getObject(obj, j));
                    if (zbe > 0) {
                        zbD8 = zbtk.zbD(i7 << 3);
                        zbD9 = zbtk.zbD(zbe);
                        r1 = zbD8 + zbD9 + zbe;
                        i5 += r1;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    ?? r05 = (List) unsafe.getObject(obj, j);
                    zbvx zbv2 = zbv(i4);
                    int i26 = zbvz.zba;
                    int size6 = r05.size();
                    if (size6 == 0) {
                        r4 = z;
                    } else {
                        boolean z2 = z;
                        r4 = z2;
                        ?? r34 = z2;
                        while (r34 < size6) {
                            int zbz = zbtk.zbz(i7, (zbvm) r05.get(r34), zbv2);
                            r34++;
                            r4 = (r4 == true ? 1 : 0) + zbz;
                        }
                    }
                    i5 += r4;
                    break;
                case 50:
                    zbvg zbvgVar = (zbvg) unsafe.getObject(obj, j);
                    zbvf zbvfVar = (zbvf) zbw(i4);
                    if (!zbvgVar.isEmpty()) {
                        zbg = z;
                        for (Map.Entry entry : zbvgVar.entrySet()) {
                            zbg += zbvfVar.zba(i7, entry.getKey(), entry.getValue());
                        }
                        i5 += zbg;
                        break;
                    }
                    zbg = z;
                    i5 += zbg;
                case 51:
                    if (zbM(obj, i7, i4)) {
                        zbD = zbtk.zbD(i7 << 3);
                        r0 = zbD + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zbM(obj, i7, i4)) {
                        zbD2 = zbtk.zbD(i7 << 3);
                        r0 = zbD2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zbM(obj, i7, i4)) {
                        long zbt = zbt(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbE(zbt);
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zbM(obj, i7, i4)) {
                        long zbt2 = zbt(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbE(zbt2);
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zbM(obj, i7, i4)) {
                        long zbo = zbo(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbE(zbo);
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zbM(obj, i7, i4)) {
                        zbD = zbtk.zbD(i7 << 3);
                        r0 = zbD + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zbM(obj, i7, i4)) {
                        zbD2 = zbtk.zbD(i7 << 3);
                        r0 = zbD2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zbM(obj, i7, i4)) {
                        zbD4 = zbtk.zbD(i7 << 3);
                        r0 = zbD4 + 1;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!zbM(obj, i7, i4)) {
                        break;
                    } else {
                        int i27 = i7 << 3;
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zbtc) {
                            zbD5 = zbtk.zbD(i27);
                            zbd = ((zbtc) object2).zbd();
                            zbD6 = zbtk.zbD(zbd);
                            r0 = zbD5 + zbD6 + zbd;
                            i5 += r0;
                            break;
                        } else {
                            zbD3 = zbtk.zbD(i27);
                            zbE = zbtk.zbC((String) object2);
                            r0 = zbD3 + zbE;
                            i5 += r0;
                        }
                    }
                case 60:
                    if (zbM(obj, i7, i4)) {
                        r0 = zbvz.zbh(i7, unsafe.getObject(obj, j), zbv(i4));
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zbM(obj, i7, i4)) {
                        zbtc zbtcVar2 = (zbtc) unsafe.getObject(obj, j);
                        zbD5 = zbtk.zbD(i7 << 3);
                        zbd = zbtcVar2.zbd();
                        zbD6 = zbtk.zbD(zbd);
                        r0 = zbD5 + zbD6 + zbd;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zbM(obj, i7, i4)) {
                        int zbo2 = zbo(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbD(zbo2);
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zbM(obj, i7, i4)) {
                        long zbo3 = zbo(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbE(zbo3);
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zbM(obj, i7, i4)) {
                        zbD2 = zbtk.zbD(i7 << 3);
                        r0 = zbD2 + 4;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zbM(obj, i7, i4)) {
                        zbD = zbtk.zbD(i7 << 3);
                        r0 = zbD + 8;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zbM(obj, i7, i4)) {
                        int zbo4 = zbo(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbD((zbo4 >> 31) ^ (zbo4 + zbo4));
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zbM(obj, i7, i4)) {
                        long zbt3 = zbt(obj, j);
                        zbD3 = zbtk.zbD(i7 << 3);
                        zbE = zbtk.zbE((zbt3 >> 63) ^ (zbt3 + zbt3));
                        r0 = zbD3 + zbE;
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zbM(obj, i7, i4)) {
                        r0 = zbtk.zbz(i7, (zbvm) unsafe.getObject(obj, j), zbv(i4));
                        i5 += r0;
                        break;
                    } else {
                        break;
                    }
            }
            i4 += 3;
            i6 = i;
            r12 = i2;
            z = false;
            i3 = 1048575;
        }
        int zba4 = i5 + ((zbuf) obj).zbc.zba();
        if (!this.zbh) {
            return zba4;
        }
        zbtu zbtuVar = ((zbub) obj).zbb;
        int zbc = zbtuVar.zba.zbc();
        int i28 = 0;
        for (int i29 = 0; i29 < zbc; i29++) {
            Map.Entry zbg2 = zbtuVar.zba.zbg(i29);
            i28 += zbtu.zbb((zbtt) ((zbwb) zbg2).zba(), zbg2.getValue());
        }
        for (Map.Entry entry2 : zbtuVar.zba.zbd()) {
            i28 += zbtu.zbb((zbtt) entry2.getKey(), entry2.getValue());
        }
        return zba4 + i28;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001c. Please report as an issue. */
    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final int zbb(Object obj) {
        int i;
        long doubleToLongBits;
        int floatToIntBits;
        int i2;
        int i3 = 0;
        for (int i4 = 0; i4 < this.zbc.length; i4 += 3) {
            int zbs = zbs(i4);
            int[] iArr = this.zbc;
            int i5 = 1048575 & zbs;
            int zbr = zbr(zbs);
            int i6 = iArr[i4];
            long j = i5;
            int i7 = 37;
            switch (zbr) {
                case 0:
                    i = i3 * 53;
                    doubleToLongBits = Double.doubleToLongBits(zbws.zba(obj, j));
                    byte[] bArr = zbuo.zbb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i3 = i + floatToIntBits;
                    break;
                case 1:
                    i = i3 * 53;
                    floatToIntBits = Float.floatToIntBits(zbws.zbb(obj, j));
                    i3 = i + floatToIntBits;
                    break;
                case 2:
                    i = i3 * 53;
                    doubleToLongBits = zbws.zbd(obj, j);
                    byte[] bArr2 = zbuo.zbb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i3 = i + floatToIntBits;
                    break;
                case 3:
                    i = i3 * 53;
                    doubleToLongBits = zbws.zbd(obj, j);
                    byte[] bArr3 = zbuo.zbb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i3 = i + floatToIntBits;
                    break;
                case 4:
                    i = i3 * 53;
                    floatToIntBits = zbws.zbc(obj, j);
                    i3 = i + floatToIntBits;
                    break;
                case 5:
                    i = i3 * 53;
                    doubleToLongBits = zbws.zbd(obj, j);
                    byte[] bArr4 = zbuo.zbb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i3 = i + floatToIntBits;
                    break;
                case 6:
                    i = i3 * 53;
                    floatToIntBits = zbws.zbc(obj, j);
                    i3 = i + floatToIntBits;
                    break;
                case 7:
                    i = i3 * 53;
                    floatToIntBits = zbuo.zba(zbws.zbw(obj, j));
                    i3 = i + floatToIntBits;
                    break;
                case 8:
                    i = i3 * 53;
                    floatToIntBits = ((String) zbws.zbf(obj, j)).hashCode();
                    i3 = i + floatToIntBits;
                    break;
                case 9:
                    i2 = i3 * 53;
                    Object zbf = zbws.zbf(obj, j);
                    if (zbf != null) {
                        i7 = zbf.hashCode();
                    }
                    i3 = i2 + i7;
                    break;
                case 10:
                    i = i3 * 53;
                    floatToIntBits = zbws.zbf(obj, j).hashCode();
                    i3 = i + floatToIntBits;
                    break;
                case 11:
                    i = i3 * 53;
                    floatToIntBits = zbws.zbc(obj, j);
                    i3 = i + floatToIntBits;
                    break;
                case 12:
                    i = i3 * 53;
                    floatToIntBits = zbws.zbc(obj, j);
                    i3 = i + floatToIntBits;
                    break;
                case 13:
                    i = i3 * 53;
                    floatToIntBits = zbws.zbc(obj, j);
                    i3 = i + floatToIntBits;
                    break;
                case 14:
                    i = i3 * 53;
                    doubleToLongBits = zbws.zbd(obj, j);
                    byte[] bArr5 = zbuo.zbb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i3 = i + floatToIntBits;
                    break;
                case 15:
                    i = i3 * 53;
                    floatToIntBits = zbws.zbc(obj, j);
                    i3 = i + floatToIntBits;
                    break;
                case 16:
                    i = i3 * 53;
                    doubleToLongBits = zbws.zbd(obj, j);
                    byte[] bArr6 = zbuo.zbb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i3 = i + floatToIntBits;
                    break;
                case 17:
                    i2 = i3 * 53;
                    Object zbf2 = zbws.zbf(obj, j);
                    if (zbf2 != null) {
                        i7 = zbf2.hashCode();
                    }
                    i3 = i2 + i7;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i3 * 53;
                    floatToIntBits = zbws.zbf(obj, j).hashCode();
                    i3 = i + floatToIntBits;
                    break;
                case 50:
                    i = i3 * 53;
                    floatToIntBits = zbws.zbf(obj, j).hashCode();
                    i3 = i + floatToIntBits;
                    break;
                case 51:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zbm(obj, j));
                        byte[] bArr7 = zbuo.zbb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = Float.floatToIntBits(zbn(obj, j));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        doubleToLongBits = zbt(obj, j);
                        byte[] bArr8 = zbuo.zbb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        doubleToLongBits = zbt(obj, j);
                        byte[] bArr9 = zbuo.zbb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zbo(obj, j);
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        doubleToLongBits = zbt(obj, j);
                        byte[] bArr10 = zbuo.zbb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zbo(obj, j);
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zbuo.zba(zbN(obj, j));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = ((String) zbws.zbf(obj, j)).hashCode();
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zbws.zbf(obj, j).hashCode();
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zbws.zbf(obj, j).hashCode();
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zbo(obj, j);
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zbo(obj, j);
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zbo(obj, j);
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        doubleToLongBits = zbt(obj, j);
                        byte[] bArr11 = zbuo.zbb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zbo(obj, j);
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        doubleToLongBits = zbt(obj, j);
                        byte[] bArr12 = zbuo.zbb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zbM(obj, i6, i4)) {
                        i = i3 * 53;
                        floatToIntBits = zbws.zbf(obj, j).hashCode();
                        i3 = i + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i3 * 53) + ((zbuf) obj).zbc.hashCode();
        return this.zbh ? (hashCode * 53) + ((zbub) obj).zbb.zba.hashCode() : hashCode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:220:0x0aee, code lost:
    
        throw new com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0e3f, code lost:
    
        if (r6 == 1048575) goto L548;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0e41, code lost:
    
        r37.putInt(r9, r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0e47, code lost:
    
        r0 = r8.zbj;
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0e4d, code lost:
    
        if (r0 >= r8.zbk) goto L675;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0e4f, code lost:
    
        r3 = r8.zbi;
        r5 = r8.zbl;
        r6 = r8.zbc;
        r3 = r3[r0];
        r6 = r6[r3];
        r10 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbws.zbf(r9, r8.zbs(r3) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0e66, code lost:
    
        if (r10 == null) goto L676;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0e68, code lost:
    
        r12 = r8.zbu(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0e6c, code lost:
    
        if (r12 == null) goto L677;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0e6e, code lost:
    
        r3 = ((com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvf) r8.zbw(r3)).zbc();
        r10 = ((com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvg) r10).entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0e86, code lost:
    
        if (r10.hasNext() == false) goto L678;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0e88, code lost:
    
        r13 = (java.util.Map.Entry) r10.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0e9c, code lost:
    
        if (r12.zba(((java.lang.Integer) r13.getValue()).intValue()) != false) goto L681;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0e9e, code lost:
    
        if (r2 != 0) goto L562;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0ea0, code lost:
    
        r2 = r5.zba(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0ea4, code lost:
    
        r14 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvf.zbb(r3, r13.getKey(), r13.getValue());
        r15 = com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtc.zbb;
        r15 = new byte[r14];
        r17 = r5;
        r11 = new com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbth(r15, 0, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0ebc, code lost:
    
        com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvf.zbe(r11, r3, r13.getKey(), r13.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0ec7, code lost:
    
        r2.zbj((r6 << 3) | 2, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsy.zba(r11, r15));
        r10.remove();
        r5 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0ede, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0ee4, code lost:
    
        throw new java.lang.RuntimeException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0ee5, code lost:
    
        r0 = r0 + 1;
        r2 = (com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwm) r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0eed, code lost:
    
        if (r2 == 0) goto L571;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0eef, code lost:
    
        ((com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuf) r9).zbc = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0ef4, code lost:
    
        if (r7 != 0) goto L577;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0ef8, code lost:
    
        if (r1 != r44) goto L575;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0f02, code lost:
    
        throw new com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuq(r38);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0f0b, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0f03, code lost:
    
        r2 = r38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0f07, code lost:
    
        if (r1 > r44) goto L581;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0f09, code lost:
    
        if (r4 != r7) goto L581;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0f11, code lost:
    
        throw new com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuq(r2);
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:232:0x03fc. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x0b1c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:605:0x00bb. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:242:0x09b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x09c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0d92 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0da6 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r22v15 */
    /* JADX WARN: Type inference failed for: r22v16 */
    /* JADX WARN: Type inference failed for: r22v19 */
    /* JADX WARN: Type inference failed for: r22v21 */
    /* JADX WARN: Type inference failed for: r22v23 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v164, types: [int] */
    /* JADX WARN: Type inference failed for: r2v197 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwm] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zbc(java.lang.Object r41, byte[] r42, int r43, int r44, int r45, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsq r46) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4002
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvp.zbc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbsq):int");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final Object zbe() {
        return ((zbuf) this.zbg).zbt();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final void zbf(Object obj) {
        if (zbL(obj)) {
            if (obj instanceof zbuf) {
                zbuf zbufVar = (zbuf) obj;
                zbufVar.zbE(Integer.MAX_VALUE);
                zbufVar.zba = 0;
                zbufVar.zbC();
            }
            int[] iArr = this.zbc;
            for (int i = 0; i < iArr.length; i += 3) {
                int zbs = zbs(i);
                int i2 = 1048575 & zbs;
                int zbr = zbr(zbs);
                long j = i2;
                if (zbr != 9) {
                    if (zbr != 60 && zbr != 68) {
                        switch (zbr) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                ((zbun) zbws.zbf(obj, j)).zbb();
                                break;
                            case 50:
                                Unsafe unsafe = zbb;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    ((zbvg) object).zbc();
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zbM(obj, this.zbc[i], i)) {
                        zbv(i).zbf(zbb.getObject(obj, j));
                    }
                }
                if (zbI(obj, i)) {
                    zbv(i).zbf(zbb.getObject(obj, j));
                }
            }
            this.zbl.zbb(obj);
            if (this.zbh) {
                this.zbm.zba(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final void zbg(Object obj, Object obj2) {
        zbA(obj);
        obj2.getClass();
        for (int i = 0; i < this.zbc.length; i += 3) {
            int zbs = zbs(i);
            int i2 = 1048575 & zbs;
            int[] iArr = this.zbc;
            int zbr = zbr(zbs);
            int i3 = iArr[i];
            long j = i2;
            switch (zbr) {
                case 0:
                    if (zbI(obj2, i)) {
                        zbws.zbo(obj, j, zbws.zba(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zbI(obj2, i)) {
                        zbws.zbp(obj, j, zbws.zbb(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zbI(obj2, i)) {
                        zbws.zbr(obj, j, zbws.zbd(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zbI(obj2, i)) {
                        zbws.zbr(obj, j, zbws.zbd(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zbI(obj2, i)) {
                        zbws.zbq(obj, j, zbws.zbc(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zbI(obj2, i)) {
                        zbws.zbr(obj, j, zbws.zbd(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zbI(obj2, i)) {
                        zbws.zbq(obj, j, zbws.zbc(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zbI(obj2, i)) {
                        zbws.zbm(obj, j, zbws.zbw(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zbI(obj2, i)) {
                        zbws.zbs(obj, j, zbws.zbf(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zbB(obj, obj2, i);
                    break;
                case 10:
                    if (zbI(obj2, i)) {
                        zbws.zbs(obj, j, zbws.zbf(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zbI(obj2, i)) {
                        zbws.zbq(obj, j, zbws.zbc(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zbI(obj2, i)) {
                        zbws.zbq(obj, j, zbws.zbc(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zbI(obj2, i)) {
                        zbws.zbq(obj, j, zbws.zbc(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zbI(obj2, i)) {
                        zbws.zbr(obj, j, zbws.zbd(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zbI(obj2, i)) {
                        zbws.zbq(obj, j, zbws.zbc(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zbI(obj2, i)) {
                        zbws.zbr(obj, j, zbws.zbd(obj2, j));
                        zbD(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zbB(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zbun zbunVar = (zbun) zbws.zbf(obj, j);
                    zbun zbunVar2 = (zbun) zbws.zbf(obj2, j);
                    int size = zbunVar.size();
                    int size2 = zbunVar2.size();
                    if (size > 0 && size2 > 0) {
                        if (!zbunVar.zbc()) {
                            zbunVar = zbunVar.zbd(size2 + size);
                        }
                        zbunVar.addAll(zbunVar2);
                    }
                    if (size > 0) {
                        zbunVar2 = zbunVar;
                    }
                    zbws.zbs(obj, j, zbunVar2);
                    break;
                case 50:
                    int i4 = zbvz.zba;
                    zbws.zbs(obj, j, zbvh.zba(zbws.zbf(obj, j), zbws.zbf(obj2, j)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zbM(obj2, i3, i)) {
                        zbws.zbs(obj, j, zbws.zbf(obj2, j));
                        zbE(obj, i3, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zbC(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zbM(obj2, i3, i)) {
                        zbws.zbs(obj, j, zbws.zbf(obj2, j));
                        zbE(obj, i3, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zbC(obj, obj2, i);
                    break;
            }
        }
        zbvz.zbp(this.zbl, obj, obj2);
        if (this.zbh) {
            zbvz.zbo(this.zbm, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final void zbh(Object obj, byte[] bArr, int i, int i2, zbsq zbsqVar) throws IOException {
        zbc(obj, bArr, i, i2, 0, zbsqVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0094. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x04d1  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04f1  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0577  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x05d7  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x05f7  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0616  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0635  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0664  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0031  */
    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zbi(java.lang.Object r23, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwy r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1808
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvp.zbi(java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbwy):void");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01c3 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zbj(java.lang.Object r8, java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvp.zbj(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbvx
    public final boolean zbk(Object obj) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i4 < this.zbj) {
            int[] iArr = this.zbi;
            int[] iArr2 = this.zbc;
            int i6 = iArr[i4];
            int i7 = iArr2[i6];
            int zbs = zbs(i6);
            int i8 = this.zbc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i5) {
                if (i9 != 1048575) {
                    i3 = zbb.getInt(obj, i9);
                }
                i2 = i3;
                i = i9;
            } else {
                i = i5;
                i2 = i3;
            }
            if ((268435456 & zbs) != 0 && !zbJ(obj, i6, i, i2, i10)) {
                return false;
            }
            int zbr = zbr(zbs);
            if (zbr != 9 && zbr != 17) {
                if (zbr != 27) {
                    if (zbr == 60 || zbr == 68) {
                        if (zbM(obj, i7, i6) && !zbK(obj, zbs, zbv(i6))) {
                            return false;
                        }
                    } else if (zbr != 49) {
                        if (zbr != 50) {
                            continue;
                        } else {
                            zbvg zbvgVar = (zbvg) zbws.zbf(obj, zbs & 1048575);
                            if (!zbvgVar.isEmpty() && ((zbvf) zbw(i6)).zbc().zbc.zbb() == zbwx.MESSAGE) {
                                zbvx zbvxVar = null;
                                for (Object obj2 : zbvgVar.values()) {
                                    if (zbvxVar == null) {
                                        zbvxVar = zbvu.zba().zbb(obj2.getClass());
                                    }
                                    if (!zbvxVar.zbk(obj2)) {
                                        return false;
                                    }
                                }
                            }
                        }
                    }
                }
                List list = (List) zbws.zbf(obj, zbs & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zbvx zbv = zbv(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zbv.zbk(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (zbJ(obj, i6, i, i2, i10) && !zbK(obj, zbs, zbv(i6))) {
                return false;
            }
            i4++;
            i5 = i;
            i3 = i2;
        }
        return !this.zbh || ((zbub) obj).zbb.zbm();
    }
}
