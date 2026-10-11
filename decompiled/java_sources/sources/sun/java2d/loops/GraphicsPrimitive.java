package sun.java2d.loops;

import androidx.core.app.NotificationCompat;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.awt.AlphaComposite;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.Region;
import sun.security.action.GetPropertyAction;

/* loaded from: classes16.dex */
public abstract class GraphicsPrimitive {
    public static final int TRACECOUNTS = 4;
    public static final int TRACELOG = 1;
    public static final int TRACETIMESTAMP = 2;
    static HashMap traceMap = null;
    public static String tracefile = null;
    public static int traceflags = 0;
    public static PrintStream traceout = null;
    private static int unusedPrimID = 1;
    private String cachedname;
    private CompositeType compositeType;
    private SurfaceType destType;
    private String methodSignature;
    private long pNativePrim;
    private SurfaceType sourceType;
    private int uniqueID;

    /* loaded from: classes16.dex */
    public interface GeneralBinaryOp {
        CompositeType getCompositeType();

        SurfaceType getDestType();

        int getPrimTypeID();

        String getSignature();

        SurfaceType getSourceType();

        void setPrimitives(Blit blit, Blit blit2, GraphicsPrimitive graphicsPrimitive, Blit blit3);
    }

    /* loaded from: classes16.dex */
    public interface GeneralUnaryOp {
        CompositeType getCompositeType();

        SurfaceType getDestType();

        int getPrimTypeID();

        String getSignature();

        void setPrimitives(Blit blit, GraphicsPrimitive graphicsPrimitive, Blit blit2);
    }

    /* loaded from: classes16.dex */
    public static class TraceReporter extends Thread {
        public static void setShutdownHook() {
            AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: sun.java2d.loops.GraphicsPrimitive.TraceReporter.1
                @Override // java.security.PrivilegedAction
                public Void run() {
                    TraceReporter traceReporter = new TraceReporter();
                    traceReporter.setContextClassLoader(null);
                    Runtime.getRuntime().addShutdownHook(traceReporter);
                    return null;
                }
            });
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            PrintStream access$000 = GraphicsPrimitive.access$000();
            long j = 0;
            int i = 0;
            for (Map.Entry entry : GraphicsPrimitive.traceMap.entrySet()) {
                Object key = entry.getKey();
                int[] iArr = (int[]) entry.getValue();
                if (iArr[0] == 1) {
                    access$000.print("1 call to ");
                } else {
                    access$000.print(iArr[0] + " calls to ");
                }
                access$000.println(key);
                i++;
                j += iArr[0];
            }
            if (i == 0) {
                access$000.println("No graphics primitives executed");
                return;
            }
            if (i > 1) {
                access$000.println(j + " total calls to " + i + " different primitives");
            }
        }
    }

    static {
        String str = (String) AccessController.doPrivileged(new GetPropertyAction("sun.java2d.trace"));
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
            boolean z = false;
            int i = 0;
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                if (nextToken.equalsIgnoreCase("count")) {
                    i |= 4;
                } else if (nextToken.equalsIgnoreCase("log")) {
                    i |= 1;
                } else if (nextToken.equalsIgnoreCase(NotificationCompat.CarExtender.f4980p)) {
                    i |= 2;
                } else if (nextToken.equalsIgnoreCase("verbose")) {
                    z = true;
                } else if (nextToken.regionMatches(true, 0, "out:", 0, 4)) {
                    tracefile = nextToken.substring(4);
                } else {
                    if (!nextToken.equalsIgnoreCase("help")) {
                        System.err.println("unrecognized token: " + nextToken);
                    }
                    System.err.println("usage: -Dsun.java2d.trace=[log[,timestamp]],[count],[out:<filename>],[help],[verbose]");
                }
            }
            if (z) {
                System.err.print("GraphicsPrimitive logging ");
                if ((i & 1) != 0) {
                    System.err.println("enabled");
                    System.err.print("GraphicsPrimitive timetamps ");
                    if ((i & 2) != 0) {
                        System.err.println("enabled");
                    } else {
                        System.err.println("disabled");
                    }
                } else {
                    System.err.println("[and timestamps] disabled");
                }
                System.err.print("GraphicsPrimitive invocation counts ");
                if ((i & 4) != 0) {
                    System.err.println("enabled");
                } else {
                    System.err.println("disabled");
                }
                System.err.print("GraphicsPrimitive trace output to ");
                if (tracefile == null) {
                    System.err.println("System.err");
                } else {
                    System.err.println("file '" + tracefile + CloudStorageConstants.SINGLE_QUOTES);
                }
            }
            traceflags = i;
        }
    }

    public GraphicsPrimitive(String str, int i, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        this.methodSignature = str;
        this.sourceType = surfaceType;
        this.compositeType = compositeType;
        this.destType = surfaceType2;
        if (surfaceType != null && compositeType != null && surfaceType2 != null) {
            this.uniqueID = makeUniqueID(i, surfaceType, compositeType, surfaceType2);
        } else {
            this.uniqueID = i << 24;
        }
    }

    public static /* synthetic */ PrintStream access$000() {
        return getTraceOutputFile();
    }

    public static SurfaceData convertFrom(Blit blit, SurfaceData surfaceData, int i, int i2, int i3, int i4, SurfaceData surfaceData2) {
        return convertFrom(blit, surfaceData, i, i2, i3, i4, surfaceData2, 2);
    }

    public static void convertTo(Blit blit, SurfaceData surfaceData, SurfaceData surfaceData2, Region region, int i, int i2, int i3, int i4) {
        if (blit != null) {
            blit.Blit(surfaceData, surfaceData2, AlphaComposite.Src, region, 0, 0, i, i2, i3, i4);
        }
    }

    public static Blit createConverter(SurfaceType surfaceType, SurfaceType surfaceType2) {
        if (surfaceType.equals(surfaceType2)) {
            return null;
        }
        Blit fromCache = Blit.getFromCache(surfaceType, CompositeType.SrcNoEa, surfaceType2);
        if (fromCache != null) {
            return fromCache;
        }
        throw new InternalError("Cannot construct converter for " + surfaceType + "=>" + surfaceType2);
    }

    public static GraphicsPrimitive getGeneralOp(int i, CompositeType compositeType) {
        SurfaceType surfaceType = SurfaceType.IntArgb;
        return GraphicsPrimitiveMgr.locatePrim(i, surfaceType, compositeType, surfaceType);
    }

    private static PrintStream getTraceOutputFile() {
        if (traceout == null) {
            if (tracefile != null) {
                FileOutputStream fileOutputStream = (FileOutputStream) AccessController.doPrivileged(new PrivilegedAction<FileOutputStream>() { // from class: sun.java2d.loops.GraphicsPrimitive.1
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.security.PrivilegedAction
                    public FileOutputStream run() {
                        try {
                            return new FileOutputStream(GraphicsPrimitive.tracefile);
                        } catch (FileNotFoundException unused) {
                            return null;
                        }
                    }
                });
                if (fileOutputStream != null) {
                    traceout = new PrintStream(fileOutputStream);
                } else {
                    traceout = System.err;
                }
            } else {
                traceout = System.err;
            }
        }
        return traceout;
    }

    public static final synchronized int makePrimTypeID() {
        int i;
        synchronized (GraphicsPrimitive.class) {
            i = unusedPrimID;
            if (i > 255) {
                throw new InternalError("primitive id overflow");
            }
            unusedPrimID = i + 1;
        }
        return i;
    }

    public static final synchronized int makeUniqueID(int i, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        int uniqueID;
        synchronized (GraphicsPrimitive.class) {
            uniqueID = (i << 24) | (surfaceType2.getUniqueID() << 16) | (compositeType.getUniqueID() << 8) | surfaceType.getUniqueID();
        }
        return uniqueID;
    }

    public static String simplename(Field[] fieldArr, Object obj) {
        for (Field field : fieldArr) {
            if (obj == field.get(null)) {
                return field.getName();
            }
            continue;
        }
        return "\"" + obj.toString() + "\"";
    }

    public static synchronized void tracePrimitive(Object obj) {
        synchronized (GraphicsPrimitive.class) {
            if ((traceflags & 4) != 0) {
                if (traceMap == null) {
                    traceMap = new HashMap();
                    TraceReporter.setShutdownHook();
                }
                Object obj2 = traceMap.get(obj);
                if (obj2 == null) {
                    obj2 = new int[1];
                    traceMap.put(obj, obj2);
                }
                int[] iArr = (int[]) obj2;
                iArr[0] = iArr[0] + 1;
            }
            if ((traceflags & 1) != 0) {
                PrintStream traceOutputFile = getTraceOutputFile();
                if ((traceflags & 2) != 0) {
                    traceOutputFile.print(System.currentTimeMillis() + ": ");
                }
                traceOutputFile.println(obj);
            }
        }
    }

    public static boolean tracingEnabled() {
        return traceflags != 0;
    }

    public final CompositeType getCompositeType() {
        return this.compositeType;
    }

    public final SurfaceType getDestType() {
        return this.destType;
    }

    public final long getNativePrim() {
        return this.pNativePrim;
    }

    public final int getPrimTypeID() {
        return this.uniqueID >>> 24;
    }

    public final String getSignature() {
        return this.methodSignature;
    }

    public final SurfaceType getSourceType() {
        return this.sourceType;
    }

    public final int getUniqueID() {
        return this.uniqueID;
    }

    public abstract GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2);

    public final boolean satisfies(String str, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        if (str != this.methodSignature) {
            return false;
        }
        while (surfaceType != null) {
            if (surfaceType.equals(this.sourceType)) {
                while (compositeType != null) {
                    if (compositeType.equals(this.compositeType)) {
                        while (surfaceType2 != null) {
                            if (surfaceType2.equals(this.destType)) {
                                return true;
                            }
                            surfaceType2 = surfaceType2.getSuperType();
                        }
                        return false;
                    }
                    compositeType = compositeType.getSuperType();
                }
                return false;
            }
            surfaceType = surfaceType.getSuperType();
        }
        return false;
    }

    public final boolean satisfiesSameAs(GraphicsPrimitive graphicsPrimitive) {
        return this.methodSignature == graphicsPrimitive.methodSignature && this.sourceType.equals(graphicsPrimitive.sourceType) && this.compositeType.equals(graphicsPrimitive.compositeType) && this.destType.equals(graphicsPrimitive.destType);
    }

    public void setupGeneralBinaryOp(GeneralBinaryOp generalBinaryOp) {
        Blit createConverter;
        Blit createConverter2;
        int primTypeID = generalBinaryOp.getPrimTypeID();
        String signature = generalBinaryOp.getSignature();
        SurfaceType sourceType = generalBinaryOp.getSourceType();
        CompositeType compositeType = generalBinaryOp.getCompositeType();
        SurfaceType destType = generalBinaryOp.getDestType();
        SurfaceType surfaceType = SurfaceType.IntArgb;
        Blit createConverter3 = createConverter(sourceType, surfaceType);
        GraphicsPrimitive locatePrim = GraphicsPrimitiveMgr.locatePrim(primTypeID, surfaceType, compositeType, destType);
        if (locatePrim != null) {
            createConverter = null;
            createConverter2 = null;
        } else {
            locatePrim = getGeneralOp(primTypeID, compositeType);
            if (locatePrim == null) {
                throw new InternalError("Cannot construct general op for " + signature + " " + compositeType);
            }
            createConverter = createConverter(destType, surfaceType);
            createConverter2 = createConverter(surfaceType, destType);
        }
        generalBinaryOp.setPrimitives(createConverter3, createConverter, locatePrim, createConverter2);
    }

    public void setupGeneralUnaryOp(GeneralUnaryOp generalUnaryOp) {
        int primTypeID = generalUnaryOp.getPrimTypeID();
        generalUnaryOp.getSignature();
        CompositeType compositeType = generalUnaryOp.getCompositeType();
        SurfaceType destType = generalUnaryOp.getDestType();
        SurfaceType surfaceType = SurfaceType.IntArgb;
        Blit createConverter = createConverter(destType, surfaceType);
        GraphicsPrimitive generalOp = getGeneralOp(primTypeID, compositeType);
        Blit createConverter2 = createConverter(surfaceType, destType);
        if (createConverter != null && generalOp != null && createConverter2 != null) {
            generalUnaryOp.setPrimitives(createConverter, generalOp, createConverter2);
            return;
        }
        throw new InternalError("Cannot construct binary op for " + compositeType + " " + destType);
    }

    public String toString() {
        if (this.cachedname == null) {
            String str = this.methodSignature;
            int indexOf = str.indexOf(40);
            if (indexOf >= 0) {
                str = str.substring(0, indexOf);
            }
            this.cachedname = getClass().getName() + "::" + str + MotionUtils.f31761c + simplename(this.sourceType) + ", " + simplename(this.compositeType) + ", " + simplename(this.destType) + MotionUtils.f31762d;
        }
        return this.cachedname;
    }

    public abstract GraphicsPrimitive traceWrap();

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static sun.java2d.SurfaceData convertFrom(sun.java2d.loops.Blit r12, sun.java2d.SurfaceData r13, int r14, int r15, int r16, int r17, sun.java2d.SurfaceData r18, int r19) {
        /*
            r9 = r16
            r10 = r17
            if (r18 == 0) goto L14
            java.awt.Rectangle r0 = r18.getBounds()
            int r1 = r0.width
            if (r9 > r1) goto L12
            int r0 = r0.height
            if (r10 <= r0) goto L14
        L12:
            r0 = 0
            goto L16
        L14:
            r0 = r18
        L16:
            if (r0 != 0) goto L23
            java.awt.image.BufferedImage r0 = new java.awt.image.BufferedImage
            r1 = r19
            r0.<init>(r9, r10, r1)
            sun.java2d.SurfaceData r0 = sun.awt.image.BufImgSurfaceData.createData(r0)
        L23:
            r11 = r0
            java.awt.AlphaComposite r3 = java.awt.AlphaComposite.Src
            r4 = 0
            r7 = 0
            r8 = 0
            r0 = r12
            r1 = r13
            r2 = r11
            r5 = r14
            r6 = r15
            r9 = r16
            r10 = r17
            r0.Blit(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.loops.GraphicsPrimitive.convertFrom(sun.java2d.loops.Blit, sun.java2d.SurfaceData, int, int, int, int, sun.java2d.SurfaceData, int):sun.java2d.SurfaceData");
    }

    public static String simplename(SurfaceType surfaceType) {
        return simplename(SurfaceType.class.getDeclaredFields(), surfaceType);
    }

    public static String simplename(CompositeType compositeType) {
        return simplename(CompositeType.class.getDeclaredFields(), compositeType);
    }

    public GraphicsPrimitive(long j, String str, int i, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        this.pNativePrim = j;
        this.methodSignature = str;
        this.sourceType = surfaceType;
        this.compositeType = compositeType;
        this.destType = surfaceType2;
        if (surfaceType != null && compositeType != null && surfaceType2 != null) {
            this.uniqueID = makeUniqueID(i, surfaceType, compositeType, surfaceType2);
        } else {
            this.uniqueID = i << 24;
        }
    }
}
