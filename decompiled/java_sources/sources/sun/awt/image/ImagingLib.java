package sun.awt.image;

import com.onyx.common.util.CloseUtils;
import com.trans.android.AndroidGraphics2D;
import com.trans.android.AndroidImage;
import com.trans.android.util.BridgeUtils;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import java.awt.image.ConvolveOp;
import java.awt.image.ImageObserver;
import java.awt.image.Kernel;
import java.awt.image.LookupOp;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.security.AccessController;
import java.security.PrivilegedAction;

/* loaded from: classes16.dex */
public class ImagingLib {
    private static final int AFFINE_OP = 1;
    private static final int CONVOLVE_OP = 2;
    private static final int LOOKUP_OP = 0;
    private static final int NUM_NATIVE_OPS = 3;
    private static Class<?>[] nativeOpClass = new Class[3];
    static boolean useLib = ((Boolean) AccessController.doPrivileged(new PrivilegedAction<Boolean>() { // from class: sun.awt.image.ImagingLib.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.security.PrivilegedAction
        public Boolean run() {
            System.getProperty("os.arch");
            return Boolean.valueOf(ImagingLib.access$000());
        }
    })).booleanValue();
    static boolean verbose;

    static {
        try {
            nativeOpClass[0] = LookupOp.class;
        } catch (ClassNotFoundException e) {
            System.err.println("Could not find class: " + e);
        }
        try {
            nativeOpClass[1] = AffineTransformOp.class;
        } catch (ClassNotFoundException e2) {
            System.err.println("Could not find class: " + e2);
        }
        try {
            nativeOpClass[2] = ConvolveOp.class;
        } catch (ClassNotFoundException e3) {
            System.err.println("Could not find class: " + e3);
        }
    }

    public static /* synthetic */ boolean access$000() {
        return init();
    }

    public static int convolveBI(BufferedImage bufferedImage, BufferedImage bufferedImage2, Kernel kernel, int i) {
        return 1;
    }

    public static int convolveRaster(Raster raster, Raster raster2, Kernel kernel, int i) {
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        if (convolveRaster(r4, r5, r3.getKernel(), r3.getEdgeCondition()) > 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        if (transformRasterForAndroid(r4, r5, ((java.awt.image.AffineTransformOp) r3).getTransform()) > 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0057, code lost:
    
        if (lookupByteRaster(r4, r5, ((java.awt.image.ByteLookupTable) r3).getTable()) > 0) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.awt.image.WritableRaster filter(java.awt.image.RasterOp r3, java.awt.image.Raster r4, java.awt.image.WritableRaster r5) {
        /*
            boolean r0 = sun.awt.image.ImagingLib.useLib
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            if (r5 != 0) goto Lc
            java.awt.image.WritableRaster r5 = r3.createCompatibleDestRaster(r4)
        Lc:
            java.lang.Class r0 = r3.getClass()
            int r0 = getNativeOpIndex(r0)
            if (r0 == 0) goto L3c
            r2 = 1
            if (r0 == r2) goto L2e
            r2 = 2
            if (r0 == r2) goto L1d
            goto L5a
        L1d:
            java.awt.image.ConvolveOp r3 = (java.awt.image.ConvolveOp) r3
            java.awt.image.Kernel r0 = r3.getKernel()
            int r3 = r3.getEdgeCondition()
            int r3 = convolveRaster(r4, r5, r0, r3)
            if (r3 <= 0) goto L5a
            goto L3a
        L2e:
            java.awt.image.AffineTransformOp r3 = (java.awt.image.AffineTransformOp) r3
            java.awt.geom.AffineTransform r3 = r3.getTransform()
            int r3 = transformRasterForAndroid(r4, r5, r3)
            if (r3 <= 0) goto L5a
        L3a:
            r1 = r5
            goto L5a
        L3c:
            java.awt.image.LookupOp r3 = (java.awt.image.LookupOp) r3
            java.awt.image.LookupTable r3 = r3.getTable()
            int r0 = r3.getOffset()
            if (r0 == 0) goto L49
            return r1
        L49:
            boolean r0 = r3 instanceof java.awt.image.ByteLookupTable
            if (r0 == 0) goto L5a
            java.awt.image.ByteLookupTable r3 = (java.awt.image.ByteLookupTable) r3
            byte[][] r3 = r3.getTable()
            int r3 = lookupByteRaster(r4, r5, r3)
            if (r3 <= 0) goto L5a
            goto L3a
        L5a:
            if (r1 == 0) goto L5f
            sun.awt.image.SunWritableRaster.markDirty(r1)
        L5f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.awt.image.ImagingLib.filter(java.awt.image.RasterOp, java.awt.image.Raster, java.awt.image.WritableRaster):java.awt.image.WritableRaster");
    }

    private static int getNativeOpIndex(Class<?> cls) {
        for (int i = 0; i < 3; i++) {
            if (cls == nativeOpClass[i]) {
                return i;
            }
        }
        return -1;
    }

    private static boolean init() {
        return true;
    }

    public static int lookupByteBI(BufferedImage bufferedImage, BufferedImage bufferedImage2, byte[][] bArr) {
        return 1;
    }

    public static int lookupByteRaster(Raster raster, Raster raster2, byte[][] bArr) {
        return 1;
    }

    public static int transformBI(BufferedImage bufferedImage, BufferedImage bufferedImage2, double[] dArr, int i) {
        return 1;
    }

    public static int transformBIForAndroid(BufferedImage bufferedImage, BufferedImage bufferedImage2, AffineTransform affineTransform) {
        Graphics2D createGraphics = bufferedImage2.createGraphics();
        createGraphics.setTransform(affineTransform);
        createGraphics.drawImage(bufferedImage, 0, 0, (ImageObserver) null);
        createGraphics.dispose();
        return 1;
    }

    public static int transformRaster(Raster raster, Raster raster2, double[] dArr, int i) {
        return 1;
    }

    public static int transformRasterForAndroid(Raster raster, WritableRaster writableRaster, AffineTransform affineTransform) {
        AndroidImage androidImage = new AndroidImage(raster.getWidth(), raster.getHeight());
        AndroidImage androidImage2 = new AndroidImage(writableRaster.getWidth(), writableRaster.getHeight());
        androidImage.setData(raster);
        AndroidGraphics2D createGraphics = androidImage2.createGraphics();
        createGraphics.setTransform(affineTransform);
        createGraphics.drawImage(androidImage, 0, 0, (ImageObserver) null);
        BridgeUtils.copyData(androidImage2.getAndroidBitmap(), writableRaster);
        createGraphics.dispose();
        CloseUtils.close(androidImage);
        CloseUtils.close(androidImage2);
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
    
        if (convolveBI(r4, r5, r3.getKernel(), r3.getEdgeCondition()) > 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0064, code lost:
    
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0062, code lost:
    
        if (transformBIForAndroid(r4, r5, ((java.awt.image.AffineTransformOp) r3).getTransform()) > 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0081, code lost:
    
        if (lookupByteBI(r4, r5, ((java.awt.image.ByteLookupTable) r3).getTable()) > 0) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.awt.image.BufferedImage filter(java.awt.image.BufferedImageOp r3, java.awt.image.BufferedImage r4, java.awt.image.BufferedImage r5) {
        /*
            boolean r0 = sun.awt.image.ImagingLib.verbose
            if (r0 == 0) goto L2a
            java.io.PrintStream r0 = java.lang.System.out
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "in filter and op is "
            r1.append(r2)
            r1.append(r3)
            java.lang.String r2 = "bufimage is "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r2 = " and "
            r1.append(r2)
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            r0.println(r1)
        L2a:
            boolean r0 = sun.awt.image.ImagingLib.useLib
            r1 = 0
            if (r0 != 0) goto L30
            return r1
        L30:
            if (r5 != 0) goto L36
            java.awt.image.BufferedImage r5 = r3.createCompatibleDestImage(r4, r1)
        L36:
            java.lang.Class r0 = r3.getClass()
            int r0 = getNativeOpIndex(r0)
            if (r0 == 0) goto L66
            r2 = 1
            if (r0 == r2) goto L58
            r2 = 2
            if (r0 == r2) goto L47
            goto L84
        L47:
            java.awt.image.ConvolveOp r3 = (java.awt.image.ConvolveOp) r3
            java.awt.image.Kernel r0 = r3.getKernel()
            int r3 = r3.getEdgeCondition()
            int r3 = convolveBI(r4, r5, r0, r3)
            if (r3 <= 0) goto L84
            goto L64
        L58:
            java.awt.image.AffineTransformOp r3 = (java.awt.image.AffineTransformOp) r3
            java.awt.geom.AffineTransform r3 = r3.getTransform()
            int r3 = transformBIForAndroid(r4, r5, r3)
            if (r3 <= 0) goto L84
        L64:
            r1 = r5
            goto L84
        L66:
            java.awt.image.LookupOp r3 = (java.awt.image.LookupOp) r3
            java.awt.image.LookupTable r3 = r3.getTable()
            int r0 = r3.getOffset()
            if (r0 == 0) goto L73
            return r1
        L73:
            boolean r0 = r3 instanceof java.awt.image.ByteLookupTable
            if (r0 == 0) goto L84
            java.awt.image.ByteLookupTable r3 = (java.awt.image.ByteLookupTable) r3
            byte[][] r3 = r3.getTable()
            int r3 = lookupByteBI(r4, r5, r3)
            if (r3 <= 0) goto L84
            goto L64
        L84:
            if (r1 == 0) goto L89
            sun.awt.image.SunWritableRaster.markDirty(r1)
        L89:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.awt.image.ImagingLib.filter(java.awt.image.BufferedImageOp, java.awt.image.BufferedImage, java.awt.image.BufferedImage):java.awt.image.BufferedImage");
    }
}
