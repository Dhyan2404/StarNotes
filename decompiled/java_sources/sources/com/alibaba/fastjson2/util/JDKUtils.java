package com.alibaba.fastjson2.util;

import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public class JDKUtils {
    public static final int ANDROID_SDK_INT;
    public static final long ARRAY_BYTE_BASE_OFFSET;
    public static final long ARRAY_CHAR_BASE_OFFSET;
    public static final boolean BIG_ENDIAN;
    public static final long FIELD_DECIMAL_INT_COMPACT_OFFSET;
    public static final Unsafe UNSAFE;

    /* JADX WARN: Can't wrap try/catch for region: R(18:1|(1:3)(1:40)|4|5|6|(1:(2:8|(1:12)(1:36))(2:37|38))|(11:16|17|(1:19)(1:33)|20|21|22|23|24|25|26|27)|35|17|(0)(0)|20|21|22|23|24|25|26|27) */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0068, code lost:
    
        r3 = -1;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0053  */
    static {
        /*
            java.nio.ByteOrder r0 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteOrder r1 = java.nio.ByteOrder.BIG_ENDIAN
            r2 = 0
            r3 = 1
            if (r0 != r1) goto Lc
            r0 = r3
            goto Ld
        Lc:
            r0 = r2
        Ld:
            com.alibaba.fastjson2.util.JDKUtils.BIG_ENDIAN = r0
            r0 = 0
            java.lang.Class<sun.misc.Unsafe> r1 = sun.misc.Unsafe.class
            java.lang.reflect.Field[] r1 = r1.getDeclaredFields()     // Catch: java.lang.Throwable -> L40
            int r4 = r1.length     // Catch: java.lang.Throwable -> L40
        L17:
            if (r2 >= r4) goto L33
            r5 = r1[r2]     // Catch: java.lang.Throwable -> L40
            java.lang.String r6 = r5.getName()     // Catch: java.lang.Throwable -> L40
            java.lang.String r7 = "theUnsafe"
            boolean r7 = r6.equals(r7)     // Catch: java.lang.Throwable -> L40
            if (r7 != 0) goto L34
            java.lang.String r7 = "THE_ONE"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L40
            if (r6 == 0) goto L30
            goto L34
        L30:
            int r2 = r2 + 1
            goto L17
        L33:
            r5 = r0
        L34:
            if (r5 == 0) goto L40
            r5.setAccessible(r3)     // Catch: java.lang.Throwable -> L40
            java.lang.Object r1 = r5.get(r0)     // Catch: java.lang.Throwable -> L40
            sun.misc.Unsafe r1 = (sun.misc.Unsafe) r1     // Catch: java.lang.Throwable -> L40
            goto L41
        L40:
            r1 = r0
        L41:
            com.alibaba.fastjson2.util.JDKUtils.UNSAFE = r1
            r2 = -1
            if (r1 == 0) goto L53
            java.lang.Class<byte[]> r3 = byte[].class
            int r3 = r1.arrayBaseOffset(r3)
            java.lang.Class<char[]> r4 = char[].class
            int r4 = r1.arrayBaseOffset(r4)
            goto L55
        L53:
            r3 = r2
            r4 = r3
        L55:
            long r5 = (long) r3
            com.alibaba.fastjson2.util.JDKUtils.ARRAY_BYTE_BASE_OFFSET = r5
            long r3 = (long) r4
            com.alibaba.fastjson2.util.JDKUtils.ARRAY_CHAR_BASE_OFFSET = r3
            java.lang.Class<java.math.BigDecimal> r3 = java.math.BigDecimal.class
            java.lang.String r4 = "intCompact"
            java.lang.reflect.Field r3 = r3.getDeclaredField(r4)     // Catch: java.lang.Throwable -> L68
            long r3 = r1.objectFieldOffset(r3)     // Catch: java.lang.Throwable -> L68
            goto L6a
        L68:
            r3 = -1
        L6a:
            com.alibaba.fastjson2.util.JDKUtils.FIELD_DECIMAL_INT_COMPACT_OFFSET = r3
            java.lang.String r1 = "android.os.Build$VERSION"
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r3 = "SDK_INT"
            java.lang.reflect.Field r1 = r1.getField(r3)     // Catch: java.lang.Throwable -> L7c
            int r2 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L7c
        L7c:
            com.alibaba.fastjson2.util.JDKUtils.ANDROID_SDK_INT = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.JDKUtils.<clinit>():void");
    }
}
