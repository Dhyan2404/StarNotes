package sun.java2d.loops;

/* loaded from: classes16.dex */
public class GraphicsPrimitiveProxy extends GraphicsPrimitive {
    private Class owner;
    private String relativeClassName;

    public GraphicsPrimitiveProxy(Class cls, String str, String str2, int i, SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        super(str2, i, surfaceType, compositeType, surfaceType2);
        this.owner = cls;
        this.relativeClassName = str;
    }

    private static String getPackageName(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf < 0 ? str : str.substring(0, lastIndexOf);
    }

    public GraphicsPrimitive instantiate() {
        String str = getPackageName(this.owner.getName()) + "." + this.relativeClassName;
        try {
            GraphicsPrimitive graphicsPrimitive = (GraphicsPrimitive) Class.forName(str).newInstance();
            if (satisfiesSameAs(graphicsPrimitive)) {
                return graphicsPrimitive;
            }
            throw new RuntimeException("Primitive " + graphicsPrimitive + " incompatible with proxy for " + str);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e.toString());
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2.toString());
        } catch (InstantiationException e3) {
            throw new RuntimeException(e3.toString());
        }
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive makePrimitive(SurfaceType surfaceType, CompositeType compositeType, SurfaceType surfaceType2) {
        throw new InternalError("makePrimitive called on a Proxy!");
    }

    @Override // sun.java2d.loops.GraphicsPrimitive
    public GraphicsPrimitive traceWrap() {
        return instantiate().traceWrap();
    }
}
