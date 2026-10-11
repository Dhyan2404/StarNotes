package sun.java2d.pipe;

import com.google.android.material.motion.MotionUtils;
import java.awt.BasicStroke;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.PathIterator;
import java.io.PrintStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Iterator;
import java.util.ServiceLoader;
import sun.awt.geom.PathConsumer2D;
import sun.security.action.GetPropertyAction;

/* loaded from: classes16.dex */
public abstract class RenderingEngine {
    private static RenderingEngine reImpl;

    public static void feedConsumer(PathIterator pathIterator, PathConsumer2D pathConsumer2D) {
        float[] fArr = new float[6];
        while (!pathIterator.isDone()) {
            int currentSegment = pathIterator.currentSegment(fArr);
            if (currentSegment == 0) {
                pathConsumer2D.moveTo(fArr[0], fArr[1]);
            } else if (currentSegment == 1) {
                pathConsumer2D.lineTo(fArr[0], fArr[1]);
            } else if (currentSegment == 2) {
                pathConsumer2D.quadTo(fArr[0], fArr[1], fArr[2], fArr[3]);
            } else if (currentSegment == 3) {
                pathConsumer2D.curveTo(fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5]);
            } else if (currentSegment == 4) {
                pathConsumer2D.closePath();
            }
            pathIterator.next();
        }
    }

    public static synchronized RenderingEngine getInstance() {
        synchronized (RenderingEngine.class) {
            RenderingEngine renderingEngine = reImpl;
            if (renderingEngine != null) {
                return renderingEngine;
            }
            RenderingEngine renderingEngine2 = (RenderingEngine) AccessController.doPrivileged(new PrivilegedAction<RenderingEngine>() { // from class: sun.java2d.pipe.RenderingEngine.1
                @Override // java.security.PrivilegedAction
                public RenderingEngine run() {
                    String property = System.getProperty("sun.java2d.renderer", "sun.java2d.pipe.AndroidRenderingEngine");
                    if (property.equals("sun.java2d.pipe.AndroidRenderingEngine")) {
                        try {
                            return (RenderingEngine) AndroidRenderingEngine.class.newInstance();
                        } catch (ReflectiveOperationException unused) {
                        }
                    }
                    Iterator it2 = ServiceLoader.loadInstalled(RenderingEngine.class).iterator();
                    RenderingEngine renderingEngine3 = null;
                    while (it2.hasNext()) {
                        renderingEngine3 = (RenderingEngine) it2.next();
                        if (renderingEngine3.getClass().getName().equals(property)) {
                            break;
                        }
                    }
                    return renderingEngine3;
                }
            });
            reImpl = renderingEngine2;
            if (renderingEngine2 == null) {
                throw new InternalError("No RenderingEngine module found");
            }
            if (((String) AccessController.doPrivileged(new GetPropertyAction("sun.java2d.renderer.trace"))) != null) {
                reImpl = new Tracer(reImpl);
            }
            return reImpl;
        }
    }

    public abstract Shape createStrokedShape(Shape shape, float f, int i, int i2, float f2, float[] fArr, float f3);

    public abstract AATileGenerator getAATileGenerator(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, Region region, int[] iArr);

    public abstract AATileGenerator getAATileGenerator(Shape shape, AffineTransform affineTransform, Region region, BasicStroke basicStroke, boolean z, boolean z2, int[] iArr);

    public abstract float getMinimumAAPenSize();

    public abstract void strokeTo(Shape shape, AffineTransform affineTransform, BasicStroke basicStroke, boolean z, boolean z2, boolean z3, PathConsumer2D pathConsumer2D);

    /* loaded from: classes16.dex */
    public static class Tracer extends RenderingEngine {
        String name;
        RenderingEngine target;

        public Tracer(RenderingEngine renderingEngine) {
            this.target = renderingEngine;
            this.name = renderingEngine.getClass().getName();
        }

        @Override // sun.java2d.pipe.RenderingEngine
        public Shape createStrokedShape(Shape shape, float f, int i, int i2, float f2, float[] fArr, float f3) {
            System.out.println(this.name + ".createStrokedShape(" + shape.getClass().getName() + ", width = " + f + ", caps = " + i + ", join = " + i2 + ", miter = " + f2 + ", dashes = " + fArr + ", dashphase = " + f3 + MotionUtils.f31762d);
            return this.target.createStrokedShape(shape, f, i, i2, f2, fArr, f3);
        }

        @Override // sun.java2d.pipe.RenderingEngine
        public AATileGenerator getAATileGenerator(Shape shape, AffineTransform affineTransform, Region region, BasicStroke basicStroke, boolean z, boolean z2, int[] iArr) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append(this.name);
            sb.append(".getAATileGenerator(");
            sb.append(shape.getClass().getName());
            sb.append(", ");
            sb.append(affineTransform);
            sb.append(", ");
            sb.append(region);
            sb.append(", ");
            sb.append(basicStroke);
            sb.append(", ");
            sb.append(z ? "thin" : "wide");
            sb.append(", ");
            sb.append(z2 ? "normalized" : "pure");
            sb.append(MotionUtils.f31762d);
            printStream.println(sb.toString());
            return this.target.getAATileGenerator(shape, affineTransform, region, basicStroke, z, z2, iArr);
        }

        @Override // sun.java2d.pipe.RenderingEngine
        public float getMinimumAAPenSize() {
            System.out.println(this.name + ".getMinimumAAPenSize()");
            return this.target.getMinimumAAPenSize();
        }

        @Override // sun.java2d.pipe.RenderingEngine
        public void strokeTo(Shape shape, AffineTransform affineTransform, BasicStroke basicStroke, boolean z, boolean z2, boolean z3, PathConsumer2D pathConsumer2D) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append(this.name);
            sb.append(".strokeTo(");
            sb.append(shape.getClass().getName());
            sb.append(", ");
            sb.append(affineTransform);
            sb.append(", ");
            sb.append(basicStroke);
            sb.append(", ");
            sb.append(z ? "thin" : "wide");
            sb.append(", ");
            sb.append(z2 ? "normalized" : "pure");
            sb.append(", ");
            sb.append(z3 ? "AA" : "non-AA");
            sb.append(", ");
            sb.append(pathConsumer2D.getClass().getName());
            sb.append(MotionUtils.f31762d);
            printStream.println(sb.toString());
            this.target.strokeTo(shape, affineTransform, basicStroke, z, z2, z3, pathConsumer2D);
        }

        @Override // sun.java2d.pipe.RenderingEngine
        public AATileGenerator getAATileGenerator(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, Region region, int[] iArr) {
            System.out.println(this.name + ".getAATileGenerator(" + d + ", " + d2 + ", " + d3 + ", " + d4 + ", " + d5 + ", " + d6 + ", " + d7 + ", " + d8 + ", " + region + MotionUtils.f31762d);
            return this.target.getAATileGenerator(d, d2, d3, d4, d5, d6, d7, d8, region, iArr);
        }
    }
}
