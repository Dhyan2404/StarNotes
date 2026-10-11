package org.apache.poi.sl.draw;

import com.sunia.HTREnginev2.whf;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.LinearGradientPaint;
import java.awt.MultipleGradientPaint;
import java.awt.Paint;
import java.awt.RadialGradientPaint;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.IndexColorModel;
import java.awt.image.WritableRaster;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.TreeMap;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.stream.Stream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.draw.PathGradientPaint;
import org.apache.poi.sl.draw.geom.ArcToCommand;
import org.apache.poi.sl.usermodel.AbstractColorStyle;
import org.apache.poi.sl.usermodel.ColorStyle;
import org.apache.poi.sl.usermodel.Insets2D;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.PlaceableShape;

/* loaded from: classes12.dex */
public class DrawPaint {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Logger LOG = LogManager.getLogger((Class<?>) DrawPaint.class);
    private static final Color TRANSPARENT = new Color(1.0f, 1.0f, 1.0f, 0.0f);
    protected PlaceableShape<?, ?> shape;

    /* renamed from: org.apache.poi.sl.draw.DrawPaint$2 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196022 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$FlipMode;

        /* renamed from: $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$GradientPaint$GradientType */
        static final /* synthetic */ int[] f111465x425bedb0;

        static {
            int[] iArr = new int[PaintStyle.FlipMode.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$FlipMode = iArr;
            try {
                iArr[PaintStyle.FlipMode.X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$FlipMode[PaintStyle.FlipMode.Y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$FlipMode[PaintStyle.FlipMode.XY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[PaintStyle.GradientPaint.GradientType.values().length];
            f111465x425bedb0 = iArr2;
            try {
                iArr2[PaintStyle.GradientPaint.GradientType.linear.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f111465x425bedb0[PaintStyle.GradientPaint.GradientType.rectangular.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f111465x425bedb0[PaintStyle.GradientPaint.GradientType.circular.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f111465x425bedb0[PaintStyle.GradientPaint.GradientType.shape.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public DrawPaint(PlaceableShape<?, ?> placeableShape) {
        this.shape = placeableShape;
    }

    public static Color HSL2RGB(double d, double d2, double d3, double d4) {
        double max = Math.max(0.0d, Math.min(100.0d, d2));
        double max2 = Math.max(0.0d, Math.min(100.0d, d3));
        if (d4 < 0.0d || d4 > 1.0d) {
            throw new IllegalArgumentException("Color parameter outside of expected range - Alpha: " + d4);
        }
        double d5 = (d % 360.0d) / 360.0d;
        double d6 = max / 100.0d;
        double d7 = max2 / 100.0d;
        double d8 = d7 < 0.5d ? (d6 + 1.0d) * d7 : (d7 + d6) - (d6 * d7);
        double d9 = (d7 * 2.0d) - d8;
        double d10 = d8;
        return new Color((float) Math.min(Math.max(0.0d, HUE2RGB(d9, d10, d5 + 0.3333333333333333d)), 1.0d), (float) Math.min(Math.max(0.0d, HUE2RGB(d9, d10, d5)), 1.0d), (float) Math.min(Math.max(0.0d, HUE2RGB(d9, d10, d5 - 0.3333333333333333d)), 1.0d), (float) d4);
    }

    private static double HUE2RGB(double d, double d2, double d3) {
        double d4;
        if (d3 < 0.0d) {
            d3 += 1.0d;
        }
        if (d3 > 1.0d) {
            d3 -= 1.0d;
        }
        if (d3 * 6.0d < 1.0d) {
            d4 = (d2 - d) * 6.0d * d3;
        } else {
            if (d3 * 2.0d < 1.0d) {
                return d2;
            }
            if (3.0d * d3 >= 2.0d) {
                return d;
            }
            d4 = (d2 - d) * 6.0d * (0.6666666666666666d - d3);
        }
        return d + d4;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double[] RGB2HSL(java.awt.Color r19) {
        /*
            r0 = 0
            r1 = r19
            float[] r0 = r1.getRGBColorComponents(r0)
            r1 = 0
            r2 = r0[r1]
            double r2 = (double) r2
            r4 = 1
            r5 = r0[r4]
            double r5 = (double) r5
            r7 = 2
            r0 = r0[r7]
            double r8 = (double) r0
            double r10 = java.lang.Math.min(r5, r8)
            double r10 = java.lang.Math.min(r2, r10)
            double r12 = java.lang.Math.max(r5, r8)
            double r12 = java.lang.Math.max(r2, r12)
            int r0 = (r12 > r10 ? 1 : (r12 == r10 ? 0 : -1))
            r14 = 0
            if (r0 != 0) goto L2b
        L29:
            r5 = r14
            goto L5b
        L2b:
            int r16 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            r17 = 4633641066610819072(0x404e000000000000, double:60.0)
            if (r16 != 0) goto L3f
            double r5 = r5 - r8
            double r5 = r5 * r17
            double r2 = r12 - r10
            double r5 = r5 / r2
            r2 = 4645040803167600640(0x4076800000000000, double:360.0)
            double r5 = r5 + r2
            double r5 = r5 % r2
            goto L5b
        L3f:
            int r16 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r16 != 0) goto L4e
            double r8 = r8 - r2
            double r8 = r8 * r17
            double r2 = r12 - r10
            double r8 = r8 / r2
            r2 = 4638144666238189568(0x405e000000000000, double:120.0)
            double r5 = r8 + r2
            goto L5b
        L4e:
            int r8 = (r12 > r8 ? 1 : (r12 == r8 ? 0 : -1))
            if (r8 != 0) goto L29
            double r2 = r2 - r5
            double r2 = r2 * r17
            double r5 = r12 - r10
            double r2 = r2 / r5
            r5 = 4642648265865560064(0x406e000000000000, double:240.0)
            double r5 = r5 + r2
        L5b:
            double r2 = r12 + r10
            r8 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r16 = r2 / r8
            if (r0 != 0) goto L64
            goto L74
        L64:
            r14 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            int r0 = (r16 > r14 ? 1 : (r16 == r14 ? 0 : -1))
            if (r0 > 0) goto L6e
            double r12 = r12 - r10
            double r14 = r12 / r2
            goto L74
        L6e:
            double r2 = r12 - r10
            double r8 = r8 - r12
            double r8 = r8 - r10
            double r14 = r2 / r8
        L74:
            r0 = 3
            double[] r0 = new double[r0]
            r0[r1] = r5
            r1 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r14 = r14 * r1
            r0[r4] = r14
            double r16 = r16 * r1
            r0[r7] = r16
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.sl.draw.DrawPaint.RGB2HSL(java.awt.Color):double[]");
    }

    public static double[] RGB2SCRGB(Color color) {
        float[] colorComponents = color.getColorComponents(null);
        double[] dArr = new double[3];
        for (int i = 0; i < 3; i++) {
            float f = colorComponents[i];
            if (f < 0.0f) {
                dArr[i] = 0.0d;
            } else if (f <= 0.04045d) {
                dArr[i] = f / 12.92d;
            } else if (f <= 1.0f) {
                dArr[i] = Math.pow((f + 0.055d) / 1.055d, 2.4d);
            } else {
                dArr[i] = 1.0d;
            }
        }
        return dArr;
    }

    public static Color SCRGB2RGB(double... dArr) {
        double[] dArr2 = new double[3];
        for (int i = 0; i < 3; i++) {
            double d = dArr[i];
            if (d < 0.0d) {
                dArr2[i] = 0.0d;
            } else if (d <= 0.0031308d) {
                dArr2[i] = d * 12.92d;
            } else if (d < 1.0d) {
                dArr2[i] = (Math.pow(d, 0.4166666666666667d) * 1.055d) - 0.055d;
            } else {
                dArr2[i] = 1.0d;
            }
        }
        return new Color((float) dArr2[0], (float) dArr2[1], (float) dArr2[2]);
    }

    private static PathGradientPaint applyColorTransform(List<ColorStyle> list) {
        Color[] colorArr = (Color[]) list.stream().map(new whf()).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.bif
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                Color[] lambda$applyColorTransform$1;
                lambda$applyColorTransform$1 = DrawPaint.lambda$applyColorTransform$1(i);
                return lambda$applyColorTransform$1;
            }
        });
        float[] fArr = new float[colorArr.length];
        for (int i = 0; i < colorArr.length; i++) {
            fArr[i] = (i * 1.0f) / (colorArr.length - 1);
        }
        fArr[colorArr.length - 1] = 1.0f;
        return new PathGradientPaint(fArr, colorArr);
    }

    private static void applyHslModOff(double[] dArr, int i, int i2, int i3) {
        if (i2 != -1) {
            dArr[i] = dArr[i] * (i2 / 100000.0d);
        }
        if (i3 != -1) {
            dArr[i] = dArr[i] + (i3 / 1000.0d);
        }
    }

    private static void applyShade(double[] dArr, ColorStyle colorStyle) {
        int shade = colorStyle.getShade();
        if (shade == -1) {
            return;
        }
        double d = shade / 100000.0d;
        for (int i = 0; i < 3; i++) {
            dArr[i] = Math.max(0.0d, Math.min(1.0d, dArr[i] * d));
        }
    }

    private static void applyTint(double[] dArr, ColorStyle colorStyle) {
        int tint = colorStyle.getTint();
        if (tint == -1 || tint == 0) {
            return;
        }
        double d = tint / 100000.0d;
        for (int i = 0; i < 3; i++) {
            dArr[i] = 1.0d - ((1.0d - dArr[i]) * d);
        }
    }

    private static BufferedImage colorizePattern(PaintStyle.TexturePaint texturePaint, BufferedImage bufferedImage) {
        List<ColorStyle> duoTone = texturePaint.getDuoTone();
        if (duoTone == null || duoTone.size() != 2) {
            return bufferedImage;
        }
        int i = 0;
        int max = Math.max(Math.min(bufferedImage.getSampleModel().getSampleSize(0), 8), 1);
        int i2 = 1 << max;
        double max2 = i2 / (1 << Math.max(r1, 1));
        BufferedImage bufferedImage2 = new BufferedImage(bufferedImage.getWidth(), bufferedImage.getHeight(), 13, new IndexColorModel(max, i2, linearBlendedColors(duoTone, i2), 0, true, -1, 0));
        WritableRaster raster = bufferedImage.getRaster();
        WritableRaster raster2 = bufferedImage2.getRaster();
        int width = bufferedImage.getWidth();
        int[] iArr = new int[width];
        while (i < bufferedImage.getHeight()) {
            raster.getSamples(0, i, width, 1, 0, iArr);
            scaleShades(iArr, max2);
            int[] iArr2 = iArr;
            int i3 = width;
            raster2.setSamples(0, i, i3, 1, 0, iArr2);
            i++;
            iArr = iArr2;
            width = i3;
        }
        return bufferedImage2;
    }

    public static PaintStyle.SolidPaint createSolidPaint(Color color) {
        if (color == null) {
            return null;
        }
        return new SimpleSolidPaint(color);
    }

    public static void fillPaintWorkaround(Graphics2D graphics2D, Shape shape) {
        try {
            graphics2D.fill(shape);
        } catch (ArrayIndexOutOfBoundsException e) {
            LOG.atWarn().withThrowable(e).log("IBM JDK failed with TexturePaintContext AIOOBE - try adding the following to the VM parameter:\n-Xjit:exclude={sun/java2d/pipe/AlphaPaintPipe.renderPathTile(Ljava/lang/Object;[BIIIIII)V} and search for 'JIT Problem Determination for IBM SDK using -Xjit' (http://www-01.ibm.com/support/docview.wss?uid=swg21294023) for how to add/determine further excludes");
        }
    }

    private static double getAlpha(Color color, ColorStyle colorStyle) {
        double alpha = color.getAlpha() / 255.0d;
        int alpha2 = colorStyle.getAlpha();
        if (alpha2 != -1) {
            alpha *= alpha2 / 100000.0d;
        }
        return Math.min(1.0d, Math.max(0.0d, alpha));
    }

    private static double getCenterVal(double d, double d2, double d3, double d4) {
        double d5 = d2 - d;
        double d6 = d + (d5 * d3);
        double d7 = d5 * d4;
        return d6 + (((d3 + d4 <= 1.0d ? d2 - d7 : d2 + d7) - d6) / 2.0d);
    }

    private static double getScale(double d, double d2, double d3, double d4) {
        double d5 = d2 - d;
        double d6 = d + (d5 * d3);
        double d7 = d3 + d4;
        double d8 = d4 * d5;
        double d9 = d7 <= 1.0d ? d2 - d8 : d2 + d8;
        if (d5 == 0.0d) {
            return 1.0d;
        }
        return (d9 - d6) / d5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Color[] lambda$applyColorTransform$1(int i) {
        return new Color[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Paint lambda$createLinearGradientPaint$2(Point2D point2D, Point2D point2D2, float[] fArr, Color[] colorArr) {
        return new LinearGradientPaint(point2D, point2D2, fArr, colorArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Paint lambda$createRadialGradientPaint$3(Point2D point2D, float f, Point2D point2D2, AffineTransform affineTransform, float[] fArr, Color[] colorArr) {
        return new RadialGradientPaint(point2D, f, point2D2, fArr, colorArr, MultipleGradientPaint.CycleMethod.NO_CYCLE, MultipleGradientPaint.ColorSpaceType.SRGB, affineTransform);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Color[] lambda$linearBlendedColors$0(int i) {
        return new Color[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Color lambda$safeFractions$4(ColorStyle colorStyle) {
        return colorStyle == null ? TRANSPARENT : applyColorTransform(colorStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$toArray$5(float[] fArr, int[] iArr, Float f) {
        int i = iArr[0];
        iArr[0] = i + 1;
        fArr[i] = f.floatValue();
    }

    private static int[] linearBlendedColors(List<ColorStyle> list, int i) {
        Color[] colorArr = (Color[]) list.stream().map(new whf()).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.xhf
            @Override // java.util.function.IntFunction
            public final Object apply(int i2) {
                Color[] lambda$linearBlendedColors$0;
                lambda$linearBlendedColors$0 = DrawPaint.lambda$linearBlendedColors$0(i2);
                return lambda$linearBlendedColors$0;
            }
        });
        BufferedImage bufferedImage = new BufferedImage(i, 1, 2);
        Graphics2D createGraphics = bufferedImage.createGraphics();
        createGraphics.setPaint(new LinearGradientPaint(0.0f, 0.0f, i, 0.0f, new float[]{0.0f, 1.0f}, colorArr));
        createGraphics.fillRect(0, 0, i, 1);
        createGraphics.dispose();
        return bufferedImage.getRGB(0, 0, i, 1, null, 0, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Paint safeFractions(BiFunction<float[], Color[], Paint> biFunction, PaintStyle.GradientPaint gradientPaint) {
        Iterator it2 = Stream.of((Object[]) gradientPaint.getGradientColors()).map(new Function() { // from class: com.sunia.HTREnginev2.aif
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Color lambda$safeFractions$4;
                lambda$safeFractions$4 = DrawPaint.lambda$safeFractions$4((ColorStyle) obj);
                return lambda$safeFractions$4;
            }
        }).iterator();
        TreeMap treeMap = new TreeMap();
        for (float f : gradientPaint.getGradientFractions()) {
            if (treeMap.containsKey(Float.valueOf(f))) {
                double d = f;
                f = (float) (d + ((d == 1.0d ? -1.0d : 1.0d) * 5.0E-8d));
            }
            treeMap.put(Float.valueOf(f), it2.next());
        }
        return (Paint) biFunction.apply(toArray(treeMap.keySet()), treeMap.values().toArray(new Color[0]));
    }

    private static void scaleShades(int[] iArr, double d) {
        if (d != 1.0d) {
            for (int i = 0; i < iArr.length; i++) {
                iArr[i] = (int) Math.rint(iArr[i] * d);
            }
        }
    }

    private static float[] toArray(Collection<Float> collection) {
        final int[] iArr = {0};
        final float[] fArr = new float[collection.size()];
        collection.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.yhf
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DrawPaint.lambda$toArray$5(fArr, iArr, (Float) obj);
            }
        });
        return fArr;
    }

    public Paint createLinearGradientPaint(PaintStyle.GradientPaint gradientPaint, Graphics2D graphics2D) {
        double gradientAngle = gradientPaint.getGradientAngle();
        if (!gradientPaint.isRotatedWithShape()) {
            gradientAngle -= this.shape.getRotation();
        }
        Rectangle2D anchor = DrawShape.getAnchor(graphics2D, this.shape);
        if (anchor == null) {
            return TRANSPARENT;
        }
        AffineTransform rotateInstance = AffineTransform.getRotateInstance(Math.toRadians(ArcToCommand.convertOoxml2AwtAngle(-gradientAngle, anchor.getWidth(), anchor.getHeight())), anchor.getCenterX(), anchor.getCenterY());
        final Point2D transform = rotateInstance.transform(new Point2D.Double(anchor.getCenterX() - (Math.sqrt(Math.pow(anchor.getWidth(), 2.0d) + Math.pow(anchor.getHeight(), 2.0d)) / 2.0d), anchor.getCenterY()), null);
        final Point2D transform2 = rotateInstance.transform(new Point2D.Double(anchor.getMaxX(), anchor.getCenterY()), null);
        if (transform.equals(transform2) || gradientPaint.getGradientFractions().length < 2) {
            return null;
        }
        return safeFractions(new BiFunction() { // from class: com.sunia.HTREnginev2.vhf
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Paint lambda$createLinearGradientPaint$2;
                lambda$createLinearGradientPaint$2 = DrawPaint.lambda$createLinearGradientPaint$2(Point2D.this, transform2, (float[]) obj, (Color[]) obj2);
                return lambda$createLinearGradientPaint$2;
            }
        }, gradientPaint);
    }

    public Paint createPathGradientPaint(PaintStyle.GradientPaint gradientPaint, Graphics2D graphics2D) {
        return safeFractions(new BiFunction() { // from class: com.sunia.HTREnginev2.zhf
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return new PathGradientPaint((float[]) obj, (Color[]) obj2);
            }
        }, gradientPaint);
    }

    public Paint createRadialGradientPaint(PaintStyle.GradientPaint gradientPaint, Graphics2D graphics2D) {
        Rectangle2D anchor = DrawShape.getAnchor(graphics2D, this.shape);
        if (anchor == null) {
            return TRANSPARENT;
        }
        Insets2D fillToInsets = gradientPaint.getFillToInsets();
        if (fillToInsets == null) {
            fillToInsets = new Insets2D(0.0d, 0.0d, 0.0d, 0.0d);
        }
        final Point2D.Double r3 = new Point2D.Double(anchor.getCenterX(), anchor.getCenterY());
        final Point2D.Double r4 = new Point2D.Double(getCenterVal(anchor.getMinX(), anchor.getMaxX(), fillToInsets.left, fillToInsets.right), getCenterVal(anchor.getMinY(), anchor.getMaxY(), fillToInsets.top, fillToInsets.bottom));
        final float max = (float) Math.max(anchor.getWidth(), anchor.getHeight());
        final AffineTransform affineTransform = new AffineTransform();
        affineTransform.translate(r4.getX(), r4.getY());
        affineTransform.scale(getScale(anchor.getMinX(), anchor.getMaxX(), fillToInsets.left, fillToInsets.right), getScale(anchor.getMinY(), anchor.getMaxY(), fillToInsets.top, fillToInsets.bottom));
        affineTransform.translate(-r4.getX(), -r4.getY());
        return safeFractions(new BiFunction() { // from class: com.sunia.HTREnginev2.cif
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Paint lambda$createRadialGradientPaint$3;
                lambda$createRadialGradientPaint$3 = DrawPaint.lambda$createRadialGradientPaint$3(Point2D.this, max, r4, affineTransform, (float[]) obj, (Color[]) obj2);
                return lambda$createRadialGradientPaint$3;
            }
        }, gradientPaint);
    }

    public Paint getGradientPaint(PaintStyle.GradientPaint gradientPaint, Graphics2D graphics2D) {
        int i = C196022.f111465x425bedb0[gradientPaint.getGradientType().ordinal()];
        if (i == 1) {
            return createLinearGradientPaint(gradientPaint, graphics2D);
        }
        if (i == 2 || i == 3) {
            return createRadialGradientPaint(gradientPaint, graphics2D);
        }
        if (i == 4) {
            return createPathGradientPaint(gradientPaint, graphics2D);
        }
        throw new UnsupportedOperationException("gradient fill of type " + gradientPaint + " not supported.");
    }

    public Paint getPaint(Graphics2D graphics2D, PaintStyle paintStyle) {
        return getPaint(graphics2D, paintStyle, PaintStyle.PaintModifier.NORM);
    }

    public Paint getSolidPaint(PaintStyle.SolidPaint solidPaint, Graphics2D graphics2D, final PaintStyle.PaintModifier paintModifier) {
        final ColorStyle solidColor = solidPaint.getSolidColor();
        return applyColorTransform(new AbstractColorStyle() { // from class: org.apache.poi.sl.draw.DrawPaint.1
            private int scale(int i, PaintStyle.PaintModifier paintModifier2, PaintStyle.PaintModifier paintModifier3) {
                if (i == -1) {
                    return -1;
                }
                PaintStyle.PaintModifier paintModifier4 = paintModifier;
                return Math.min(100000, Math.max(0, i) + (paintModifier4 == paintModifier2 ? 20000 : paintModifier4 == paintModifier3 ? 40000 : 0));
            }

            @Override // org.apache.poi.sl.usermodel.ColorStyle
            public int getAlpha() {
                return solidColor.getAlpha();
            }

            @Override // org.apache.poi.sl.usermodel.ColorStyle
            public Color getColor() {
                return solidColor.getColor();
            }

            @Override // org.apache.poi.sl.usermodel.ColorStyle
            public int getHueMod() {
                return solidColor.getHueMod();
            }

            @Override // org.apache.poi.sl.usermodel.ColorStyle
            public int getHueOff() {
                return solidColor.getHueOff();
            }

            @Override // org.apache.poi.sl.usermodel.ColorStyle
            public int getLumMod() {
                return solidColor.getLumMod();
            }

            @Override // org.apache.poi.sl.usermodel.ColorStyle
            public int getLumOff() {
                return solidColor.getLumOff();
            }

            @Override // org.apache.poi.sl.usermodel.ColorStyle
            public int getSatMod() {
                return solidColor.getSatMod();
            }

            @Override // org.apache.poi.sl.usermodel.ColorStyle
            public int getSatOff() {
                return solidColor.getSatOff();
            }

            @Override // org.apache.poi.sl.usermodel.ColorStyle
            public int getShade() {
                return scale(solidColor.getShade(), PaintStyle.PaintModifier.DARKEN_LESS, PaintStyle.PaintModifier.DARKEN);
            }

            @Override // org.apache.poi.sl.usermodel.ColorStyle
            public int getTint() {
                return scale(solidColor.getTint(), PaintStyle.PaintModifier.LIGHTEN_LESS, PaintStyle.PaintModifier.LIGHTEN);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0126 A[Catch: all -> 0x0162, TryCatch #0 {all -> 0x0162, blocks: (B:10:0x0022, B:15:0x002a, B:17:0x0036, B:20:0x003f, B:24:0x0050, B:25:0x0059, B:27:0x0065, B:28:0x0072, B:30:0x0078, B:33:0x0089, B:35:0x008f, B:37:0x0093, B:43:0x00bf, B:48:0x0136, B:49:0x0147, B:52:0x00e1, B:53:0x0115, B:54:0x0126), top: B:8:0x0020, outer: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.awt.Paint getTexturePaint(org.apache.poi.sl.usermodel.PaintStyle.TexturePaint r26, java.awt.Graphics2D r27) {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.sl.draw.DrawPaint.getTexturePaint(org.apache.poi.sl.usermodel.PaintStyle$TexturePaint, java.awt.Graphics2D):java.awt.Paint");
    }

    public static PaintStyle.SolidPaint createSolidPaint(ColorStyle colorStyle) {
        if (colorStyle == null) {
            return null;
        }
        return new SimpleSolidPaint(colorStyle);
    }

    public Paint getPaint(Graphics2D graphics2D, PaintStyle paintStyle, PaintStyle.PaintModifier paintModifier) {
        if (paintModifier == PaintStyle.PaintModifier.NONE) {
            return TRANSPARENT;
        }
        if (paintStyle instanceof PaintStyle.SolidPaint) {
            return getSolidPaint((PaintStyle.SolidPaint) paintStyle, graphics2D, paintModifier);
        }
        if (paintStyle instanceof PaintStyle.GradientPaint) {
            return getGradientPaint((PaintStyle.GradientPaint) paintStyle, graphics2D);
        }
        if (paintStyle instanceof PaintStyle.TexturePaint) {
            PaintStyle.TexturePaint texturePaint = (PaintStyle.TexturePaint) paintStyle;
            List<ColorStyle> duoTone = texturePaint.getDuoTone();
            if (duoTone == null) {
                return getTexturePaint(texturePaint, graphics2D);
            }
            if (duoTone.size() == 1) {
                return applyColorTransform(duoTone.get(0));
            }
            return applyColorTransform(duoTone);
        }
        return TRANSPARENT;
    }

    /* loaded from: classes12.dex */
    public static class SimpleSolidPaint implements PaintStyle.SolidPaint {
        private final ColorStyle solidColor;

        public SimpleSolidPaint(final Color color) {
            if (color != null) {
                this.solidColor = new AbstractColorStyle() { // from class: org.apache.poi.sl.draw.DrawPaint.SimpleSolidPaint.1
                    @Override // org.apache.poi.sl.usermodel.ColorStyle
                    public int getAlpha() {
                        return (int) Math.round((color.getAlpha() * 100000.0d) / 255.0d);
                    }

                    @Override // org.apache.poi.sl.usermodel.ColorStyle
                    public Color getColor() {
                        return new Color(color.getRed(), color.getGreen(), color.getBlue());
                    }

                    @Override // org.apache.poi.sl.usermodel.ColorStyle
                    public int getHueMod() {
                        return -1;
                    }

                    @Override // org.apache.poi.sl.usermodel.ColorStyle
                    public int getHueOff() {
                        return -1;
                    }

                    @Override // org.apache.poi.sl.usermodel.ColorStyle
                    public int getLumMod() {
                        return -1;
                    }

                    @Override // org.apache.poi.sl.usermodel.ColorStyle
                    public int getLumOff() {
                        return -1;
                    }

                    @Override // org.apache.poi.sl.usermodel.ColorStyle
                    public int getSatMod() {
                        return -1;
                    }

                    @Override // org.apache.poi.sl.usermodel.ColorStyle
                    public int getSatOff() {
                        return -1;
                    }

                    @Override // org.apache.poi.sl.usermodel.ColorStyle
                    public int getShade() {
                        return -1;
                    }

                    @Override // org.apache.poi.sl.usermodel.ColorStyle
                    public int getTint() {
                        return -1;
                    }
                };
                return;
            }
            throw new NullPointerException("Color needs to be specified");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof PaintStyle.SolidPaint) {
                return Objects.equals(getSolidColor(), ((PaintStyle.SolidPaint) obj).getSolidColor());
            }
            return false;
        }

        @Override // org.apache.poi.sl.usermodel.PaintStyle.SolidPaint
        public ColorStyle getSolidColor() {
            return this.solidColor;
        }

        public int hashCode() {
            return Objects.hash(this.solidColor);
        }

        public SimpleSolidPaint(ColorStyle colorStyle) {
            if (colorStyle != null) {
                this.solidColor = colorStyle;
                return;
            }
            throw new NullPointerException("Color needs to be specified");
        }
    }

    public static Color applyColorTransform(ColorStyle colorStyle) {
        if (colorStyle != null && colorStyle.getColor() != null) {
            Color color = colorStyle.getColor();
            double alpha = getAlpha(color, colorStyle);
            double[] RGB2SCRGB = RGB2SCRGB(color);
            applyShade(RGB2SCRGB, colorStyle);
            applyTint(RGB2SCRGB, colorStyle);
            double[] RGB2HSL = RGB2HSL(SCRGB2RGB(RGB2SCRGB));
            applyHslModOff(RGB2HSL, 0, colorStyle.getHueMod(), colorStyle.getHueOff());
            applyHslModOff(RGB2HSL, 1, colorStyle.getSatMod(), colorStyle.getSatOff());
            applyHslModOff(RGB2HSL, 2, colorStyle.getLumMod(), colorStyle.getLumOff());
            return HSL2RGB(RGB2HSL[0], RGB2HSL[1], RGB2HSL[2], alpha);
        }
        return TRANSPARENT;
    }
}
