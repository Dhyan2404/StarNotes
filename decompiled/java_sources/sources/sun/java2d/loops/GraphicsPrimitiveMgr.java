package sun.java2d.loops;

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.geom.AffineTransform;
import java.awt.geom.Path2D;
import java.util.Arrays;
import java.util.Comparator;
import sun.awt.SunHints;
import sun.java2d.SunGraphics2D;

/* loaded from: classes16.dex */
public final class GraphicsPrimitiveMgr {
    private static final boolean debugTrace = false;
    private static GraphicsPrimitive[] generalPrimitives = null;
    private static boolean needssort = true;
    private static Comparator primFinder;
    private static Comparator primSorter;
    private static GraphicsPrimitive[] primitives;

    /* loaded from: classes16.dex */
    public static class PrimitiveSpec {
        public int uniqueID;

        private PrimitiveSpec() {
        }
    }

    static {
        initIDs(GraphicsPrimitive.class, SurfaceType.class, CompositeType.class, SunGraphics2D.class, Color.class, AffineTransform.class, XORComposite.class, AlphaComposite.class, Path2D.class, Path2D.Float.class, SunHints.class);
        CustomComponent.register();
        GeneralRenderer.register();
        registerNativeLoops();
        primSorter = new Comparator() { // from class: sun.java2d.loops.GraphicsPrimitiveMgr.1
            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                int uniqueID = ((GraphicsPrimitive) obj).getUniqueID();
                int uniqueID2 = ((GraphicsPrimitive) obj2).getUniqueID();
                if (uniqueID == uniqueID2) {
                    return 0;
                }
                return uniqueID < uniqueID2 ? -1 : 1;
            }
        };
        primFinder = new Comparator() { // from class: sun.java2d.loops.GraphicsPrimitiveMgr.2
            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                int uniqueID = ((GraphicsPrimitive) obj).getUniqueID();
                int i = ((PrimitiveSpec) obj2).uniqueID;
                if (uniqueID == i) {
                    return 0;
                }
                return uniqueID < i ? -1 : 1;
            }
        };
    }

    private GraphicsPrimitiveMgr() {
    }

    private static void initIDs(Class cls, Class cls2, Class cls3, Class cls4, Class cls5, Class cls6, Class cls7, Class cls8, Class cls9, Class cls10, Class cls11) {
    }

    public static synchronized GraphicsPrimitive locate(int i, SurfaceType surfaceType) {
        GraphicsPrimitive locate;
        synchronized (GraphicsPrimitiveMgr.class) {
            locate = locate(i, SurfaceType.OpaqueColor, CompositeType.Src, surfaceType);
        }
        return locate;
    }

    private static GraphicsPrimitive locateGeneral(int i) {
        if (generalPrimitives == null) {
            return null;
        }
        int i2 = 0;
        while (true) {
            GraphicsPrimitive[] graphicsPrimitiveArr = generalPrimitives;
            if (i2 >= graphicsPrimitiveArr.length) {
                return null;
            }
            GraphicsPrimitive graphicsPrimitive = graphicsPrimitiveArr[i2];
            if (graphicsPrimitive.getPrimTypeID() == i) {
                return graphicsPrimitive;
            }
            i2++;
        }
    }

    public static synchronized GraphicsPrimitive locatePrim(int i, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        synchronized (GraphicsPrimitiveMgr.class) {
            PrimitiveSpec primitiveSpec = new PrimitiveSpec();
            while (surfaceType2 != null) {
                for (SurfaceType surfaceType3 = surfaceType; surfaceType3 != null; surfaceType3 = surfaceType3.getSuperType()) {
                    for (CompositeType compositeType2 = compositeType; compositeType2 != null; compositeType2 = compositeType2.getSuperType()) {
                        primitiveSpec.uniqueID = GraphicsPrimitive.makeUniqueID(i, surfaceType3, compositeType2, surfaceType2);
                        GraphicsPrimitive locate = locate(primitiveSpec);
                        if (locate != null) {
                            return locate;
                        }
                    }
                }
                surfaceType2 = surfaceType2.getSuperType();
            }
            return null;
        }
    }

    public static void main(String[] strArr) {
        if (needssort) {
            Arrays.sort(primitives, primSorter);
            needssort = false;
        }
        testPrimitiveInstantiation(strArr.length > 0);
    }

    public static synchronized void register(GraphicsPrimitive[] graphicsPrimitiveArr) {
        synchronized (GraphicsPrimitiveMgr.class) {
            GraphicsPrimitive[] graphicsPrimitiveArr2 = primitives;
            int length = graphicsPrimitiveArr.length;
            int length2 = graphicsPrimitiveArr2 != null ? graphicsPrimitiveArr2.length : 0;
            GraphicsPrimitive[] graphicsPrimitiveArr3 = new GraphicsPrimitive[length2 + length];
            if (graphicsPrimitiveArr2 != null) {
                System.arraycopy(graphicsPrimitiveArr2, 0, graphicsPrimitiveArr3, 0, length2);
            }
            System.arraycopy(graphicsPrimitiveArr, 0, graphicsPrimitiveArr3, length2, length);
            needssort = true;
            primitives = graphicsPrimitiveArr3;
        }
    }

    public static synchronized void registerGeneral(GraphicsPrimitive graphicsPrimitive) {
        synchronized (GraphicsPrimitiveMgr.class) {
            GraphicsPrimitive[] graphicsPrimitiveArr = generalPrimitives;
            if (graphicsPrimitiveArr == null) {
                generalPrimitives = new GraphicsPrimitive[]{graphicsPrimitive};
                return;
            }
            int length = graphicsPrimitiveArr.length;
            GraphicsPrimitive[] graphicsPrimitiveArr2 = new GraphicsPrimitive[length + 1];
            System.arraycopy(graphicsPrimitiveArr, 0, graphicsPrimitiveArr2, 0, length);
            graphicsPrimitiveArr2[length] = graphicsPrimitive;
            generalPrimitives = graphicsPrimitiveArr2;
        }
    }

    private static void registerNativeLoops() {
    }

    public static void testPrimitiveInstantiation() {
        testPrimitiveInstantiation(false);
    }

    private static void writeLog(String str) {
    }

    public static synchronized GraphicsPrimitive locate(int i, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        GraphicsPrimitive locatePrim;
        synchronized (GraphicsPrimitiveMgr.class) {
            locatePrim = locatePrim(i, surfaceType, compositeType, surfaceType2);
            if (locatePrim == null && (locatePrim = locateGeneral(i)) != null && (locatePrim = locatePrim.makePrimitive(surfaceType, compositeType, surfaceType2)) != null && GraphicsPrimitive.traceflags != 0) {
                locatePrim = locatePrim.traceWrap();
            }
        }
        return locatePrim;
    }

    public static void testPrimitiveInstantiation(boolean z) {
        int i = 0;
        int i2 = 0;
        for (GraphicsPrimitive graphicsPrimitive : primitives) {
            if (graphicsPrimitive instanceof GraphicsPrimitiveProxy) {
                GraphicsPrimitive instantiate = ((GraphicsPrimitiveProxy) graphicsPrimitive).instantiate();
                if (!instantiate.getSignature().equals(graphicsPrimitive.getSignature()) || instantiate.getUniqueID() != graphicsPrimitive.getUniqueID()) {
                    System.out.println("r.getSignature == " + instantiate.getSignature());
                    System.out.println("r.getUniqueID == " + instantiate.getUniqueID());
                    System.out.println("p.getSignature == " + graphicsPrimitive.getSignature());
                    System.out.println("p.getUniqueID == " + graphicsPrimitive.getUniqueID());
                    throw new RuntimeException("Primitive " + graphicsPrimitive + " returns wrong signature for " + instantiate.getClass());
                }
                i2++;
                if (z) {
                    System.out.println(instantiate);
                }
            } else {
                if (z) {
                    System.out.println(graphicsPrimitive + " (not proxied).");
                }
                i++;
            }
        }
        System.out.println(i + " graphics primitives were not proxied.");
        System.out.println(i2 + " proxied graphics primitives resolved correctly.");
        System.out.println((i + i2) + " total graphics primitives");
    }

    private static GraphicsPrimitive locate(PrimitiveSpec primitiveSpec) {
        int binarySearch;
        if (needssort) {
            if (GraphicsPrimitive.traceflags != 0) {
                int i = 0;
                while (true) {
                    GraphicsPrimitive[] graphicsPrimitiveArr = primitives;
                    if (i >= graphicsPrimitiveArr.length) {
                        break;
                    }
                    graphicsPrimitiveArr[i] = graphicsPrimitiveArr[i].traceWrap();
                    i++;
                }
            }
            Arrays.sort(primitives, primSorter);
            needssort = false;
        }
        GraphicsPrimitive[] graphicsPrimitiveArr2 = primitives;
        if (graphicsPrimitiveArr2 == null || (binarySearch = Arrays.binarySearch(graphicsPrimitiveArr2, primitiveSpec, primFinder)) < 0) {
            return null;
        }
        GraphicsPrimitive graphicsPrimitive = graphicsPrimitiveArr2[binarySearch];
        if (!(graphicsPrimitive instanceof GraphicsPrimitiveProxy)) {
            return graphicsPrimitive;
        }
        GraphicsPrimitive instantiate = ((GraphicsPrimitiveProxy) graphicsPrimitive).instantiate();
        graphicsPrimitiveArr2[binarySearch] = instantiate;
        return instantiate;
    }
}
