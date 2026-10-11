package com.sunia.HTREnginev2;

import com.twelvemonkeys.image.ImageUtil;
import com.twelvemonkeys.image.ResampleOp;
import com.twelvemonkeys.lang.SystemUtil;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;

/* loaded from: classes10.dex */
public final class l6j {

    /* renamed from: a */
    public static final boolean f76188a = k6j.f75139a;

    /* renamed from: b */
    public static final boolean f76189b = m55395d();

    /* renamed from: c */
    public static final int f76190c = 0;

    /* renamed from: d */
    public static Class[] f76191d;

    static {
        Class[] clsArr = new Class[1];
        f76191d = clsArr;
        try {
            clsArr[0] = Class.forName("com.twelvemonkeys.image.ResampleOp");
        } catch (ClassNotFoundException e) {
            System.err.println("Could not find class: " + e);
        }
    }

    /* renamed from: a */
    public static BufferedImage m55392a(BufferedImageOp bufferedImageOp, BufferedImage bufferedImage, BufferedImage bufferedImage2) {
        if (f76189b && m55393b(bufferedImageOp.getClass()) == 0) {
            ResampleOp resampleOp = (ResampleOp) bufferedImageOp;
            BufferedImage m55394c = m55394c(bufferedImage, resampleOp.f93974a, resampleOp.f93975b, resampleOp.f93976c);
            if (bufferedImage2 == null) {
                return m55394c;
            }
            ImageUtil.m60362l(bufferedImage2, m55394c);
            return bufferedImage2;
        }
        return null;
    }

    /* renamed from: b */
    public static int m55393b(Class cls) {
        int i = 0;
        while (true) {
            Class[] clsArr = f76191d;
            if (i >= clsArr.length) {
                return -1;
            }
            if (cls == clsArr[i]) {
                return i;
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006e  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.awt.image.BufferedImage m55394c(java.awt.image.BufferedImage r5, int r6, int r7, int r8) {
        /*
            r0 = 0
            magick.MagickImage r5 = com.twelvemonkeys.image.MagickUtil.toMagick(r5)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L53
            boolean r1 = com.sunia.HTREnginev2.l6j.f76188a     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            if (r1 == 0) goto Le
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            goto L10
        Le:
            r2 = 0
        L10:
            r5.setFilter(r8)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            magick.MagickImage r0 = r5.zoomImage(r6, r7)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            if (r1 == 0) goto L39
            long r6 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            long r6 = r6 - r2
            java.io.PrintStream r8 = java.lang.System.out     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            r1.<init>()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            java.lang.String r2 = "Filtered: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            r1.append(r6)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            java.lang.String r6 = " ms"
            r1.append(r6)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            java.lang.String r6 = r1.toString()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            r8.println(r6)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
        L39:
            java.awt.image.BufferedImage r6 = com.twelvemonkeys.image.MagickUtil.toBuffered(r0)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4b
            r5.destroyImages()
            if (r0 == 0) goto L45
            r0.destroyImages()
        L45:
            return r6
        L46:
            r6 = move-exception
            r4 = r0
            r0 = r5
            r5 = r4
            goto L67
        L4b:
            r6 = move-exception
            r4 = r0
            r0 = r5
            r5 = r4
            goto L55
        L50:
            r6 = move-exception
            r5 = r0
            goto L67
        L53:
            r6 = move-exception
            r5 = r0
        L55:
            boolean r7 = r6 instanceof java.lang.RuntimeException     // Catch: java.lang.Throwable -> L66
            if (r7 == 0) goto L5c
            java.lang.RuntimeException r6 = (java.lang.RuntimeException) r6     // Catch: java.lang.Throwable -> L66
            throw r6     // Catch: java.lang.Throwable -> L66
        L5c:
            com.twelvemonkeys.image.ImageConversionException r7 = new com.twelvemonkeys.image.ImageConversionException     // Catch: java.lang.Throwable -> L66
            java.lang.String r8 = r6.getMessage()     // Catch: java.lang.Throwable -> L66
            r7.<init>(r8, r6)     // Catch: java.lang.Throwable -> L66
            throw r7     // Catch: java.lang.Throwable -> L66
        L66:
            r6 = move-exception
        L67:
            if (r0 == 0) goto L6c
            r0.destroyImages()
        L6c:
            if (r5 == 0) goto L71
            r5.destroyImages()
        L71:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.l6j.m55394c(java.awt.image.BufferedImage, int, int, int):java.awt.image.BufferedImage");
    }

    /* renamed from: d */
    public static boolean m55395d() {
        try {
            boolean isClassAvailable = SystemUtil.isClassAvailable("magick.MagickImage");
            boolean z = f76188a;
            if (z && !isClassAvailable) {
                System.err.print("ImageMagick bindings not available.");
            }
            boolean z2 = isClassAvailable && !"FALSE".equalsIgnoreCase(System.getProperty("com.twelvemonkeys.image.accel"));
            if (z) {
                System.err.println(z2 ? "Will use ImageMagick bindings to accelerate image resampling operations." : "Will not use ImageMagick to accelerate image resampling operations.");
            }
            return z2;
        } catch (Throwable th) {
            System.err.println("Could not enable ImageMagick bindings: " + th);
            return false;
        }
    }
}
