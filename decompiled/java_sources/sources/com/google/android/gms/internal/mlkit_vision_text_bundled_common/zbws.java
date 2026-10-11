package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* loaded from: classes5.dex */
final class zbws {
    static final long zba;
    static final boolean zbb;
    private static final Unsafe zbc;
    private static final Class zbd;
    private static final boolean zbe;
    private static final zbwr zbf;
    private static final boolean zbg;
    private static final boolean zbh;

    /* JADX WARN: Removed duplicated region for block: B:15:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    static {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbws.<clinit>():void");
    }

    private zbws() {
    }

    private static int zbA(Class cls) {
        if (zbh) {
            return zbf.zba.arrayIndexScale(cls);
        }
        return -1;
    }

    private static Field zbB() {
        int i = zbsm.zba;
        Field zbC = zbC(Buffer.class, "effectiveDirectAddress");
        if (zbC != null) {
            return zbC;
        }
        Field zbC2 = zbC(Buffer.class, "address");
        if (zbC2 == null || zbC2.getType() != Long.TYPE) {
            return null;
        }
        return zbC2;
    }

    private static Field zbC(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zbD(Object obj, long j, byte b) {
        zbwr zbwrVar = zbf;
        long j2 = (-4) & j;
        int i = zbwrVar.zba.getInt(obj, j2);
        int i2 = ((~((int) j)) & 3) << 3;
        zbwrVar.zba.putInt(obj, j2, ((255 & b) << i2) | (i & (~(255 << i2))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zbE(Object obj, long j, byte b) {
        zbwr zbwrVar = zbf;
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        zbwrVar.zba.putInt(obj, j2, ((255 & b) << i) | (zbwrVar.zba.getInt(obj, j2) & (~(255 << i))));
    }

    public static double zba(Object obj, long j) {
        return zbf.zba(obj, j);
    }

    public static float zbb(Object obj, long j) {
        return zbf.zbb(obj, j);
    }

    public static int zbc(Object obj, long j) {
        return zbf.zba.getInt(obj, j);
    }

    public static long zbd(Object obj, long j) {
        return zbf.zba.getLong(obj, j);
    }

    public static Object zbe(Class cls) {
        try {
            return zbc.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    public static Object zbf(Object obj, long j) {
        return zbf.zba.getObject(obj, j);
    }

    public static Unsafe zbg() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zbwo());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* bridge */ /* synthetic */ void zbh(Throwable th) {
        Logger.getLogger(zbws.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    public static void zbm(Object obj, long j, boolean z) {
        zbf.zbc(obj, j, z);
    }

    public static void zbn(byte[] bArr, long j, byte b) {
        zbf.zbd(bArr, zba + j, b);
    }

    public static void zbo(Object obj, long j, double d) {
        zbf.zbe(obj, j, d);
    }

    public static void zbp(Object obj, long j, float f) {
        zbf.zbf(obj, j, f);
    }

    public static void zbq(Object obj, long j, int i) {
        zbf.zba.putInt(obj, j, i);
    }

    public static void zbr(Object obj, long j, long j2) {
        zbf.zba.putLong(obj, j, j2);
    }

    public static void zbs(Object obj, long j, Object obj2) {
        zbf.zba.putObject(obj, j, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean zbt(Object obj, long j) {
        return ((byte) ((zbf.zba.getInt(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean zbu(Object obj, long j) {
        return ((byte) ((zbf.zba.getInt(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean zbv(Class cls) {
        int i = zbsm.zba;
        try {
            Class cls2 = zbd;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean zbw(Object obj, long j) {
        return zbf.zbg(obj, j);
    }

    public static boolean zbx() {
        return zbh;
    }

    public static boolean zby() {
        return zbg;
    }

    private static int zbz(Class cls) {
        if (zbh) {
            return zbf.zba.arrayBaseOffset(cls);
        }
        return -1;
    }
}
