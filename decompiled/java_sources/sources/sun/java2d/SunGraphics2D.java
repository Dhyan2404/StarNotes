package sun.java2d;

import java.awt.AlphaComposite;
import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Composite;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.GraphicsConfiguration;
import java.awt.Image;
import java.awt.Paint;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphVector;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.geom.PathIterator;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ColorModel;
import java.awt.image.ImageObserver;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.WritableRaster;
import java.awt.image.renderable.RenderContext;
import java.awt.image.renderable.RenderableImage;
import java.text.AttributedCharacterIterator;
import java.util.Hashtable;
import java.util.Map;
import sun.awt.SunHints;
import sun.awt.image.MultiResolutionImage;
import sun.awt.image.SurfaceManager;
import sun.font.FontDesignMetrics;
import sun.java2d.loops.Blit;
import sun.java2d.loops.CompositeType;
import sun.java2d.loops.FontInfo;
import sun.java2d.loops.MaskFill;
import sun.java2d.loops.RenderLoops;
import sun.java2d.loops.SurfaceType;
import sun.java2d.loops.XORComposite;
import sun.java2d.pipe.DrawImagePipe;
import sun.java2d.pipe.LoopPipe;
import sun.java2d.pipe.PixelDrawPipe;
import sun.java2d.pipe.PixelFillPipe;
import sun.java2d.pipe.Region;
import sun.java2d.pipe.RenderingEngine;
import sun.java2d.pipe.ShapeDrawPipe;
import sun.java2d.pipe.ShapeSpanIterator;
import sun.java2d.pipe.TextPipe;
import sun.java2d.pipe.ValidatePipe;

/* loaded from: classes16.dex */
public final class SunGraphics2D extends Graphics2D {
    public static final int CLIP_DEVICE = 0;
    public static final int CLIP_RECTANGULAR = 1;
    public static final int CLIP_SHAPE = 2;
    public static final int COMP_ALPHA = 1;
    public static final int COMP_CUSTOM = 3;
    public static final int COMP_ISCOPY = 0;
    public static final int COMP_XOR = 2;
    private static final int MINALLOCATED = 8;
    public static final double MinPenSizeAA;
    public static final double MinPenSizeAASquared;
    public static final double MinPenSizeSquared = 1.000000001d;
    static final int NON_RECTILINEAR_TRANSFORM_MASK = 48;
    static final int NON_UNIFORM_SCALE_MASK = 36;
    public static final int PAINT_ALPHACOLOR = 1;
    public static final int PAINT_CUSTOM = 6;
    public static final int PAINT_GRADIENT = 2;
    public static final int PAINT_LIN_GRADIENT = 3;
    public static final int PAINT_OPAQUECOLOR = 0;
    public static final int PAINT_RAD_GRADIENT = 4;
    public static final int PAINT_TEXTURE = 5;
    public static final int STROKE_CUSTOM = 3;
    public static final int STROKE_THIN = 0;
    public static final int STROKE_THINDASHED = 1;
    public static final int STROKE_WIDE = 2;
    private static final int TEXTARRSIZE = 17;
    public static final int TRANSFORM_ANY_TRANSLATE = 2;
    public static final int TRANSFORM_GENERIC = 4;
    public static final int TRANSFORM_INT_TRANSLATE = 1;
    public static final int TRANSFORM_ISIDENT = 0;
    public static final int TRANSFORM_TRANSLATESCALE = 3;
    private static final int slowTextTransformMask = 120;
    public MaskFill alphafill;
    public Color backgroundColor;
    private FontRenderContext cachedFRC;
    public Region clipRegion;
    public int clipState;
    public int compositeState;
    public Region constrainClip;
    public int constrainX;
    public int constrainY;
    protected Region devClip;
    private final int devScale;
    public PixelDrawPipe drawpipe;
    public int eargb;
    public PixelFillPipe fillpipe;
    protected Font font;
    private FontInfo fontInfo;
    protected FontMetrics fontMetrics;
    public Color foregroundColor;
    private FontRenderContext glyphVectorFRC;
    private FontInfo glyphVectorFontInfo;
    public RenderingHints hints;
    public DrawImagePipe imagepipe;
    Blit lastCAblit;
    Composite lastCAcomp;
    public RenderLoops loops;
    public Paint paint;
    public int paintState;
    public int pixel;
    public ShapeDrawPipe shapepipe;
    public int strokeState;
    public SurfaceData surfaceData;
    public TextPipe textpipe;
    public int transX;
    public int transY;
    public int transformState;
    public Shape usrClip;
    private boolean validFontInfo;
    protected static final Stroke defaultStroke = new BasicStroke();
    protected static final Composite defaultComposite = AlphaComposite.SrcOver;
    private static final Font defaultFont = new Font(Font.DIALOG, 0, 12);
    private static int lcdTextContrastDefaultValue = 140;
    protected static ValidatePipe invalidpipe = new ValidatePipe();
    private static final double[] IDENT_MATRIX = {1.0d, 0.0d, 0.0d, 1.0d};
    private static final AffineTransform IDENT_ATX = new AffineTransform();
    private static double[][] textTxArr = new double[17];
    private static AffineTransform[] textAtArr = new AffineTransform[17];
    public AffineTransform transform = new AffineTransform();
    public Stroke stroke = defaultStroke;
    public Composite composite = defaultComposite;
    public CompositeType imageComp = CompositeType.SrcOverNoEa;
    public int renderHint = 0;
    public int antialiasHint = 1;
    public int textAntialiasHint = 0;
    protected int fractionalMetricsHint = 1;
    public int lcdTextContrast = lcdTextContrastDefaultValue;
    private int interpolationHint = -1;
    public int strokeHint = 0;
    private int resolutionVariantHint = 0;
    public int interpolationType = 1;

    static {
        for (int i = 8; i < 17; i++) {
            double[][] dArr = textTxArr;
            double[] dArr2 = new double[4];
            double d = i;
            dArr2[0] = d;
            dArr2[1] = 0.0d;
            dArr2[2] = 0.0d;
            dArr2[3] = d;
            dArr[i] = dArr2;
            textAtArr[i] = new AffineTransform(textTxArr[i]);
        }
        double minimumAAPenSize = RenderingEngine.getInstance().getMinimumAAPenSize();
        MinPenSizeAA = minimumAAPenSize;
        MinPenSizeAASquared = minimumAAPenSize * minimumAAPenSize;
    }

    public SunGraphics2D(SurfaceData surfaceData, Color color, Color color2, Font font) {
        this.surfaceData = surfaceData;
        this.foregroundColor = color;
        this.backgroundColor = color2;
        this.paint = this.foregroundColor;
        validateColor();
        int defaultScale = surfaceData.getDefaultScale();
        this.devScale = defaultScale;
        if (defaultScale != 1) {
            this.transform.setToScale(defaultScale, defaultScale);
            invalidateTransform();
        }
        this.font = font;
        if (font == null) {
            this.font = defaultFont;
        }
        setDevClip(surfaceData.getBounds());
        invalidatePipe();
    }

    private boolean clipTo(Rectangle rectangle, Rectangle rectangle2) {
        int i;
        int max = Math.max(rectangle.f97732x, rectangle2.f97732x);
        int min = Math.min(rectangle.f97732x + rectangle.width, rectangle2.f97732x + rectangle2.width);
        int max2 = Math.max(rectangle.f97733y, rectangle2.f97733y);
        int min2 = Math.min(rectangle.f97733y + rectangle.height, rectangle2.f97733y + rectangle2.height);
        int i2 = min - max;
        if (i2 < 0 || (i = min2 - max2) < 0) {
            rectangle.width = -1;
            rectangle.height = -1;
            return false;
        }
        rectangle.f97732x = max;
        rectangle.f97733y = max2;
        rectangle.width = i2;
        rectangle.height = i;
        return true;
    }

    public static Shape cloneShape(Shape shape) {
        return new GeneralPath(shape);
    }

    private void doCopyArea(int i, int i2, int i3, int i4, int i5, int i6) {
        if (i3 <= 0 || i4 <= 0) {
            return;
        }
        SurfaceData surfaceData = this.surfaceData;
        if (surfaceData.copyArea(this, i, i2, i3, i4, i5, i6)) {
            return;
        }
        if (this.transformState > 3) {
            throw new InternalError("transformed copyArea not implemented yet");
        }
        Region compClip = getCompClip();
        Composite composite = this.composite;
        if (this.lastCAcomp != composite) {
            SurfaceType surfaceType = surfaceData.getSurfaceType();
            CompositeType compositeType = this.imageComp;
            if (CompositeType.SrcOverNoEa.equals(compositeType) && surfaceData.getTransparency() == 1) {
                compositeType = CompositeType.SrcNoEa;
            }
            this.lastCAblit = Blit.locate(surfaceType, compositeType, surfaceType);
            this.lastCAcomp = composite;
        }
        double[] dArr = {i, i2, i + i3, i2 + i4, i + i5, i2 + i6};
        this.transform.transform(dArr, 0, dArr, 0, 3);
        int ceil = (int) Math.ceil(dArr[0] - 0.5d);
        int ceil2 = (int) Math.ceil(dArr[1] - 0.5d);
        int ceil3 = ((int) Math.ceil(dArr[2] - 0.5d)) - ceil;
        int ceil4 = ((int) Math.ceil(dArr[3] - 0.5d)) - ceil2;
        int ceil5 = ((int) Math.ceil(dArr[4] - 0.5d)) - ceil;
        int ceil6 = ((int) Math.ceil(dArr[5] - 0.5d)) - ceil2;
        if (ceil3 < 0) {
            ceil3 *= -1;
            ceil -= ceil3;
        }
        int i7 = ceil;
        int i8 = ceil3;
        if (ceil4 < 0) {
            ceil4 *= -1;
            ceil2 -= ceil4;
        }
        int i9 = ceil4;
        int i10 = ceil2;
        Blit blit = this.lastCAblit;
        if (ceil6 == 0 && ceil5 > 0 && ceil5 < i8) {
            while (i8 > 0) {
                int min = Math.min(i8, ceil5);
                int i11 = i8 - min;
                int i12 = i7 + i11;
                int i13 = i9;
                blit.Blit(surfaceData, surfaceData, composite, compClip, i12, i10, i12 + ceil5, i10 + ceil6, min, i13);
                i9 = i13;
                ceil5 = ceil5;
                compClip = compClip;
                i8 = i11;
                blit = blit;
            }
            return;
        }
        if (ceil6 <= 0 || ceil6 >= i9 || ceil5 <= (-i8) || ceil5 >= i8) {
            blit.Blit(surfaceData, surfaceData, composite, compClip, i7, i10, i7 + ceil5, i10 + ceil6, i8, i9);
            return;
        }
        int i14 = i9;
        while (i14 > 0) {
            int min2 = Math.min(i14, ceil6);
            int i15 = i14 - min2;
            int i16 = i10 + i15;
            blit.Blit(surfaceData, surfaceData, composite, compClip, i7, i16, i7 + ceil5, i16 + ceil6, i8, min2);
            i14 = i15;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.awt.Image] */
    /* JADX WARN: Type inference failed for: r26v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v9, types: [int] */
    /* JADX WARN: Type inference failed for: r5v8, types: [int] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    private boolean drawHiDPIImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Color color, ImageObserver imageObserver) {
        int i9;
        int i10;
        SunGraphics2D sunGraphics2D;
        ImageObserver imageObserver2;
        SunGraphics2D sunGraphics2D2;
        int i11;
        int i12;
        int i13;
        SunGraphics2D sunGraphics2D3;
        Image image2;
        SunGraphics2D sunGraphics2D4;
        SunGraphics2D sunGraphics2D5;
        ?? r0 = image;
        if (SurfaceManager.getImageScale(image) != 1) {
            double imageScale = SurfaceManager.getImageScale(image);
            int clipScale = Region.clipScale(i5, imageScale);
            int clipScale2 = Region.clipScale(i7, imageScale);
            ?? clipScale3 = Region.clipScale(i6, imageScale);
            i11 = Region.clipScale(i8, imageScale);
            i12 = clipScale2;
            sunGraphics2D2 = clipScale3;
            imageObserver2 = imageObserver;
            sunGraphics2D3 = this;
            i13 = clipScale;
            image2 = r0;
        } else {
            if (r0 instanceof MultiResolutionImage) {
                int width = r0.getWidth(imageObserver);
                int height = r0.getHeight(imageObserver);
                Image resolutionVariant = getResolutionVariant((MultiResolutionImage) r0, width, height, i, i2, i3, i4, i5, i6, i7, i8);
                if (resolutionVariant != r0 && resolutionVariant != null) {
                    int width2 = resolutionVariant.getWidth(null);
                    int height2 = resolutionVariant.getHeight(null);
                    if (width > 0 && height > 0 && width2 > 0 && height2 > 0) {
                        float f = width2 / width;
                        float f2 = height2 / height;
                        double d = f;
                        int clipScale4 = Region.clipScale(i5, d);
                        double d2 = f2;
                        sunGraphics2D3 = this;
                        i13 = clipScale4;
                        image2 = resolutionVariant;
                        imageObserver2 = null;
                        sunGraphics2D2 = Region.clipScale(i6, d2);
                        i12 = Region.clipScale(i7, d);
                        i11 = Region.clipScale(i8, d2);
                    }
                }
                sunGraphics2D = i6;
                i10 = i7;
                i9 = i8;
            } else {
                i9 = i8;
                i10 = i7;
                sunGraphics2D = i6;
            }
            imageObserver2 = imageObserver;
            sunGraphics2D2 = sunGraphics2D;
            i11 = i9;
            i12 = i10;
            i13 = i5;
            sunGraphics2D3 = this;
            image2 = r0;
        }
        try {
            try {
                ?? r9 = sunGraphics2D2;
                sunGraphics2D4 = sunGraphics2D2;
                sunGraphics2D5 = sunGraphics2D3;
                try {
                    boolean scaleImage = sunGraphics2D3.imagepipe.scaleImage(this, image2, i, i2, i3, i4, i13, r9 == true ? 1 : 0, i12, i11, color, imageObserver2);
                    sunGraphics2D5.surfaceData.markDirty();
                    return scaleImage;
                } catch (InvalidPipeException unused) {
                    try {
                        revalidateAll();
                        boolean scaleImage2 = sunGraphics2D5.imagepipe.scaleImage(this, image2, i, i2, i3, i4, i13, sunGraphics2D4 == true ? 1 : 0, i12, i11, color, imageObserver2);
                        sunGraphics2D5.surfaceData.markDirty();
                        return scaleImage2;
                    } catch (InvalidPipeException unused2) {
                        sunGraphics2D5.surfaceData.markDirty();
                        return false;
                    }
                }
            } catch (Throwable th) {
                th = th;
                sunGraphics2D2.surfaceData.markDirty();
                throw th;
            }
        } catch (InvalidPipeException unused3) {
            sunGraphics2D4 = sunGraphics2D2;
            sunGraphics2D5 = sunGraphics2D3;
        } catch (Throwable th2) {
            th = th2;
            sunGraphics2D2 = sunGraphics2D3;
            sunGraphics2D2.surfaceData.markDirty();
            throw th;
        }
    }

    private void drawTranslatedRenderedImage(RenderedImage renderedImage, Rectangle rectangle, int i, int i2) {
        Rectangle rectangle2 = rectangle;
        int tileGridXOffset = renderedImage.getTileGridXOffset();
        int tileGridYOffset = renderedImage.getTileGridYOffset();
        int tileWidth = renderedImage.getTileWidth();
        int tileHeight = renderedImage.getTileHeight();
        int tileIndex = getTileIndex(rectangle2.f97732x, tileGridXOffset, tileWidth);
        int tileIndex2 = getTileIndex(rectangle2.f97733y, tileGridYOffset, tileHeight);
        int tileIndex3 = getTileIndex((rectangle2.f97732x + rectangle2.width) - 1, tileGridXOffset, tileWidth);
        int tileIndex4 = getTileIndex((rectangle2.f97733y + rectangle2.height) - 1, tileGridYOffset, tileHeight);
        ColorModel colorModel = renderedImage.getColorModel();
        Rectangle rectangle3 = new Rectangle();
        while (tileIndex2 <= tileIndex4) {
            int i3 = tileIndex;
            while (i3 <= tileIndex3) {
                Raster tile = renderedImage.getTile(i3, tileIndex2);
                rectangle3.f97732x = (i3 * tileWidth) + tileGridXOffset;
                rectangle3.f97733y = (tileIndex2 * tileHeight) + tileGridYOffset;
                rectangle3.width = tileWidth;
                rectangle3.height = tileHeight;
                clipTo(rectangle3, rectangle2);
                copyImage(new BufferedImage(colorModel, (tile instanceof WritableRaster ? (WritableRaster) tile : Raster.createWritableRaster(tile.getSampleModel(), tile.getDataBuffer(), null)).createWritableChild(rectangle3.f97732x, rectangle3.f97733y, rectangle3.width, rectangle3.height, 0, 0, null), colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null), rectangle3.f97732x + i, rectangle3.f97733y + i2, 0, 0, rectangle3.width, rectangle3.height, null, null);
                i3++;
                rectangle2 = rectangle;
                tileGridXOffset = tileGridXOffset;
                tileGridYOffset = tileGridYOffset;
            }
            tileIndex2++;
            rectangle2 = rectangle;
        }
    }

    private static void fixRectangleOrientation(double[] dArr, Rectangle2D rectangle2D) {
        boolean z = rectangle2D.getWidth() > 0.0d;
        double d = dArr[2];
        double d2 = dArr[0];
        if (z != (d - d2 > 0.0d)) {
            dArr[0] = d;
            dArr[2] = d2;
        }
        boolean z2 = rectangle2D.getHeight() > 0.0d;
        double d3 = dArr[3];
        double d4 = dArr[1];
        if (z2 != (d3 - d4 > 0.0d)) {
            dArr[1] = d3;
            dArr[3] = d4;
        }
    }

    private static Rectangle getImageRegion(RenderedImage renderedImage, Region region, AffineTransform affineTransform, AffineTransform affineTransform2, int i, int i2) {
        Rectangle rectangle = new Rectangle(renderedImage.getMinX(), renderedImage.getMinY(), renderedImage.getWidth(), renderedImage.getHeight());
        try {
            double loX = region.getLoX();
            double hiX = region.getHiX();
            double loY = region.getLoY();
            double hiY = region.getHiY();
            double[] dArr = {loX, loY, loX, hiY, hiX, loY, hiX, hiY};
            affineTransform.inverseTransform(dArr, 0, dArr, 0, 4);
            affineTransform2.inverseTransform(dArr, 0, dArr, 0, 4);
            double d = dArr[0];
            double d2 = dArr[1];
            double d3 = d2;
            int i3 = 2;
            double d4 = d;
            while (i3 < 8) {
                int i4 = i3 + 1;
                double d5 = dArr[i3];
                if (d5 < d) {
                    d = d5;
                } else if (d5 > d4) {
                    d4 = d5;
                }
                i3 = i4 + 1;
                double d6 = dArr[i4];
                if (d6 < d2) {
                    d2 = d6;
                } else if (d6 > d3) {
                    d3 = d6;
                }
            }
            return new Rectangle(((int) d) - i, ((int) d2) - i2, (int) ((d4 - d) + (i * 2)), (int) ((d3 - d2) + (i2 * 2))).intersection(rectangle);
        } catch (NoninvertibleTransformException unused) {
            return rectangle;
        }
    }

    private Image getResolutionVariant(MultiResolutionImage multiResolutionImage, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        double hypot;
        double d;
        double hypot2;
        double d2;
        if (i > 0 && i2 > 0) {
            int i11 = i9 - i7;
            int i12 = i10 - i8;
            if (i11 != 0 && i12 != 0) {
                int type = this.transform.getType();
                int i13 = i5 - i3;
                int i14 = i6 - i4;
                if ((type & (-66)) == 0) {
                    hypot = i13;
                    d2 = i14;
                } else {
                    if ((type & (-72)) == 0) {
                        hypot = i13 * this.transform.getScaleX();
                        d = i14;
                        hypot2 = this.transform.getScaleY();
                    } else {
                        hypot = i13 * Math.hypot(this.transform.getScaleX(), this.transform.getShearY());
                        d = i14;
                        hypot2 = Math.hypot(this.transform.getShearX(), this.transform.getScaleY());
                    }
                    d2 = d * hypot2;
                }
                return multiResolutionImage.getResolutionVariant((int) Math.abs((i * hypot) / i11), (int) Math.abs((i2 * d2) / i12));
            }
        }
        return null;
    }

    private static int getTileIndex(int i, int i2, int i3) {
        int i4 = i - i2;
        if (i4 < 0) {
            i4 += 1 - i3;
        }
        return i4 / i3;
    }

    private boolean isHiDPIImage(Image image) {
        if (SurfaceManager.getImageScale(image) == 1) {
            return this.resolutionVariantHint != 1 && (image instanceof MultiResolutionImage);
        }
        return true;
    }

    private static boolean isIntegerTranslation(AffineTransform affineTransform) {
        if (affineTransform.isIdentity()) {
            return true;
        }
        if (affineTransform.getType() != 1) {
            return false;
        }
        double translateX = affineTransform.getTranslateX();
        double translateY = affineTransform.getTranslateY();
        return translateX == ((double) ((int) translateX)) && translateY == ((double) ((int) translateY));
    }

    public static boolean isRotated(double[] dArr) {
        double d = dArr[0];
        return (d == dArr[3] && dArr[1] == 0.0d && dArr[2] == 0.0d && d > 0.0d) ? false : true;
    }

    private void revalidateAll() {
        SurfaceData replacement = this.surfaceData.getReplacement();
        this.surfaceData = replacement;
        if (replacement == null) {
            this.surfaceData = NullSurfaceData.theInstance;
        }
        invalidatePipe();
        setDevClip(this.surfaceData.getBounds());
        if (this.paintState <= 1) {
            validateColor();
        }
        Composite composite = this.composite;
        if (composite instanceof XORComposite) {
            setComposite(new XORComposite(((XORComposite) composite).getXorColor(), this.surfaceData));
        }
        validatePipe();
    }

    private void validateBasicStroke(BasicStroke basicStroke) {
        double sqrt;
        boolean z = this.antialiasHint == 2;
        if (this.transformState < 3) {
            if (z) {
                if (basicStroke.getLineWidth() > MinPenSizeAA) {
                    this.strokeState = 2;
                    return;
                } else if (basicStroke.getDashArray() == null) {
                    this.strokeState = 0;
                    return;
                } else {
                    this.strokeState = 1;
                    return;
                }
            }
            if (basicStroke == defaultStroke) {
                this.strokeState = 0;
                return;
            }
            if (basicStroke.getLineWidth() > 1.0f) {
                this.strokeState = 2;
                return;
            } else if (basicStroke.getDashArray() == null) {
                this.strokeState = 0;
                return;
            } else {
                this.strokeState = 1;
                return;
            }
        }
        if ((this.transform.getType() & 36) == 0) {
            sqrt = Math.abs(this.transform.getDeterminant());
        } else {
            double scaleX = this.transform.getScaleX();
            double shearX = this.transform.getShearX();
            double shearY = this.transform.getShearY();
            double scaleY = this.transform.getScaleY();
            double d = (scaleX * scaleX) + (shearY * shearY);
            double d2 = ((scaleX * shearX) + (shearY * scaleY)) * 2.0d;
            double d3 = (shearX * shearX) + (scaleY * scaleY);
            double d4 = d - d3;
            sqrt = ((d + d3) + Math.sqrt((d2 * d2) + (d4 * d4))) / 2.0d;
        }
        if (basicStroke != defaultStroke) {
            sqrt *= basicStroke.getLineWidth() * basicStroke.getLineWidth();
        }
        if (sqrt > (z ? MinPenSizeAASquared : 1.000000001d)) {
            this.strokeState = 2;
        } else if (basicStroke.getDashArray() == null) {
            this.strokeState = 0;
        } else {
            this.strokeState = 1;
        }
    }

    @Override // java.awt.Graphics2D
    public void addRenderingHints(Map<?, ?> map) {
        boolean z = false;
        for (Object obj : map.keySet()) {
            if (obj == SunHints.KEY_RENDERING || obj == SunHints.KEY_ANTIALIASING || obj == SunHints.KEY_TEXT_ANTIALIASING || obj == SunHints.KEY_FRACTIONALMETRICS || obj == SunHints.KEY_TEXT_ANTIALIAS_LCD_CONTRAST || obj == SunHints.KEY_STROKE_CONTROL || obj == SunHints.KEY_INTERPOLATION) {
                setRenderingHint((RenderingHints.Key) obj, map.get(obj));
            } else {
                z = true;
            }
        }
        if (z) {
            RenderingHints renderingHints = this.hints;
            if (renderingHints == null) {
                this.hints = makeHints(map);
            } else {
                renderingHints.putAll(map);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0146, code lost:
    
        if (r15.antialiasHint == 2) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x014a, code lost:
    
        r13 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0156, code lost:
    
        if (r1.font2D.useAAForPtSize(r1.pixelHeight) != false) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public sun.java2d.loops.FontInfo checkFontInfo(sun.java2d.loops.FontInfo r16, java.awt.Font r17, java.awt.font.FontRenderContext r18) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.SunGraphics2D.checkFontInfo(sun.java2d.loops.FontInfo, java.awt.Font, java.awt.font.FontRenderContext):sun.java2d.loops.FontInfo");
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void clearRect(int i, int i2, int i3, int i4) {
        Composite composite = this.composite;
        Paint paint = this.paint;
        setComposite(AlphaComposite.Src);
        setColor(getBackground());
        fillRect(i, i2, i3, i4);
        setPaint(paint);
        setComposite(composite);
    }

    @Override // java.awt.Graphics2D
    public void clip(Shape shape) {
        Shape transformShape = transformShape(shape);
        Shape shape2 = this.usrClip;
        if (shape2 != null) {
            transformShape = intersectShapes(shape2, transformShape, true, true);
        }
        this.usrClip = transformShape;
        validateCompClip();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void clipRect(int i, int i2, int i3, int i4) {
        clip(new Rectangle(i, i2, i3, i4));
    }

    public Object clone() {
        try {
            SunGraphics2D sunGraphics2D = (SunGraphics2D) super.clone();
            sunGraphics2D.transform = new AffineTransform(this.transform);
            RenderingHints renderingHints = this.hints;
            if (renderingHints != null) {
                sunGraphics2D.hints = (RenderingHints) renderingHints.clone();
            }
            FontInfo fontInfo = this.fontInfo;
            if (fontInfo != null) {
                if (this.validFontInfo) {
                    sunGraphics2D.fontInfo = (FontInfo) fontInfo.clone();
                } else {
                    sunGraphics2D.fontInfo = null;
                }
            }
            FontInfo fontInfo2 = this.glyphVectorFontInfo;
            if (fontInfo2 != null) {
                sunGraphics2D.glyphVectorFontInfo = (FontInfo) fontInfo2.clone();
                sunGraphics2D.glyphVectorFRC = this.glyphVectorFRC;
            }
            return sunGraphics2D;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public AffineTransform cloneTransform() {
        return new AffineTransform(this.transform);
    }

    public void constrain(int i, int i2, int i3, int i4, Region region) {
        if ((i | i2) != 0) {
            translate(i, i2);
        }
        if (this.transformState > 3) {
            clipRect(0, 0, i3, i4);
            return;
        }
        double scaleX = this.transform.getScaleX();
        double scaleY = this.transform.getScaleY();
        int translateX = (int) this.transform.getTranslateX();
        this.constrainX = translateX;
        int translateY = (int) this.transform.getTranslateY();
        this.constrainY = translateY;
        int dimAdd = Region.dimAdd(translateX, Region.clipScale(i3, scaleX));
        int dimAdd2 = Region.dimAdd(translateY, Region.clipScale(i4, scaleY));
        Region region2 = this.constrainClip;
        Region instanceXYXY = region2 == null ? Region.getInstanceXYXY(translateX, translateY, dimAdd, dimAdd2) : region2.getIntersectionXYXY(translateX, translateY, dimAdd, dimAdd2);
        if (region != null) {
            instanceXYXY = instanceXYXY.getIntersection(region.getScaledRegion(scaleX, scaleY).getTranslatedRegion(translateX, translateY));
        }
        if (instanceXYXY == this.constrainClip) {
            return;
        }
        this.constrainClip = instanceXYXY;
        if (this.devClip.isInsideQuickCheck(instanceXYXY)) {
            return;
        }
        this.devClip = this.devClip.getIntersection(instanceXYXY);
        validateCompClip();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void copyArea(int i, int i2, int i3, int i4, int i5, int i6) {
        try {
            try {
                try {
                    doCopyArea(i, i2, i3, i4, i5, i6);
                } catch (InvalidPipeException unused) {
                }
            } finally {
                this.surfaceData.markDirty();
            }
        } catch (InvalidPipeException unused2) {
            revalidateAll();
            doCopyArea(i, i2, i3, i4, i5, i6);
        }
    }

    public boolean copyImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, Color color, ImageObserver imageObserver) {
        try {
            try {
                try {
                    return this.imagepipe.copyImage(this, image, i, i2, i3, i4, i5, i6, color, imageObserver);
                } catch (InvalidPipeException unused) {
                    this.surfaceData.markDirty();
                    return false;
                }
            } catch (InvalidPipeException unused2) {
                revalidateAll();
                return this.imagepipe.copyImage(this, image, i, i2, i3, i4, i5, i6, color, imageObserver);
            }
        } finally {
            this.surfaceData.markDirty();
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Graphics create() {
        return (Graphics) clone();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void dispose() {
        this.surfaceData = NullSurfaceData.theInstance;
        invalidatePipe();
    }

    @Override // java.awt.Graphics2D
    public void draw(Shape shape) {
        try {
            try {
                try {
                    this.shapepipe.draw(this, shape);
                } catch (InvalidPipeException unused) {
                }
            } catch (InvalidPipeException unused2) {
                revalidateAll();
                this.shapepipe.draw(this, shape);
            }
        } finally {
            this.surfaceData.markDirty();
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawArc(int i, int i2, int i3, int i4, int i5, int i6) {
        try {
            try {
                try {
                    this.drawpipe.drawArc(this, i, i2, i3, i4, i5, i6);
                } catch (InvalidPipeException unused) {
                    revalidateAll();
                    this.drawpipe.drawArc(this, i, i2, i3, i4, i5, i6);
                }
            } finally {
                this.surfaceData.markDirty();
            }
        } catch (InvalidPipeException unused2) {
        }
    }

    @Override // java.awt.Graphics
    public void drawBytes(byte[] bArr, int i, int i2, int i3, int i4) {
        if (bArr == null) {
            throw new NullPointerException("byte data is null");
        }
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new ArrayIndexOutOfBoundsException("bad offset/length");
        }
        char[] cArr = new char[i2];
        int i5 = i2;
        while (true) {
            int i6 = i5 - 1;
            if (i5 <= 0) {
                break;
            }
            cArr[i6] = (char) (bArr[i6 + i] & 255);
            i5 = i6;
        }
        try {
            if (this.font.hasLayoutAttributes()) {
                if (bArr.length == 0) {
                    return;
                }
                new TextLayout(new String(cArr), this.font, getFontRenderContext()).draw(this, i3, i4);
            } else {
                try {
                    try {
                        this.textpipe.drawChars(this, cArr, 0, i2, i3, i4);
                    } catch (InvalidPipeException unused) {
                        revalidateAll();
                        this.textpipe.drawChars(this, cArr, 0, i2, i3, i4);
                    }
                } catch (InvalidPipeException unused2) {
                }
            }
        } finally {
            this.surfaceData.markDirty();
        }
    }

    @Override // java.awt.Graphics
    public void drawChars(char[] cArr, int i, int i2, int i3, int i4) {
        if (cArr == null) {
            throw new NullPointerException("char data is null");
        }
        if (i < 0 || i2 < 0 || i + i2 > cArr.length) {
            throw new ArrayIndexOutOfBoundsException("bad offset/length");
        }
        if (this.font.hasLayoutAttributes()) {
            if (cArr.length == 0) {
                return;
            }
            new TextLayout(new String(cArr, i, i2), this.font, getFontRenderContext()).draw(this, i3, i4);
        } else {
            try {
                try {
                    try {
                        this.textpipe.drawChars(this, cArr, i, i2, i3, i4);
                    } catch (InvalidPipeException unused) {
                        revalidateAll();
                        this.textpipe.drawChars(this, cArr, i, i2, i3, i4);
                    }
                } catch (InvalidPipeException unused2) {
                }
            } finally {
                this.surfaceData.markDirty();
            }
        }
    }

    @Override // java.awt.Graphics2D
    public void drawGlyphVector(GlyphVector glyphVector, float f, float f2) {
        if (glyphVector == null) {
            throw new NullPointerException("GlyphVector is null");
        }
        try {
            try {
                try {
                    this.textpipe.drawGlyphVector(this, glyphVector, f, f2);
                } catch (InvalidPipeException unused) {
                }
            } catch (InvalidPipeException unused2) {
                revalidateAll();
                this.textpipe.drawGlyphVector(this, glyphVector, f, f2);
            }
        } finally {
            this.surfaceData.markDirty();
        }
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, ImageObserver imageObserver) {
        return drawImage(image, i, i2, i3, i4, null, imageObserver);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawLine(int i, int i2, int i3, int i4) {
        try {
            try {
                try {
                    this.drawpipe.drawLine(this, i, i2, i3, i4);
                } finally {
                    this.surfaceData.markDirty();
                }
            } catch (InvalidPipeException unused) {
                revalidateAll();
                this.drawpipe.drawLine(this, i, i2, i3, i4);
            }
        } catch (InvalidPipeException unused2) {
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawOval(int i, int i2, int i3, int i4) {
        try {
            try {
                try {
                    this.drawpipe.drawOval(this, i, i2, i3, i4);
                } finally {
                    this.surfaceData.markDirty();
                }
            } catch (InvalidPipeException unused) {
                revalidateAll();
                this.drawpipe.drawOval(this, i, i2, i3, i4);
            }
        } catch (InvalidPipeException unused2) {
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawPolygon(int[] iArr, int[] iArr2, int i) {
        try {
            try {
                try {
                    this.drawpipe.drawPolygon(this, iArr, iArr2, i);
                } catch (InvalidPipeException unused) {
                }
            } catch (InvalidPipeException unused2) {
                revalidateAll();
                this.drawpipe.drawPolygon(this, iArr, iArr2, i);
            }
        } finally {
            this.surfaceData.markDirty();
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawPolyline(int[] iArr, int[] iArr2, int i) {
        try {
            try {
                try {
                    this.drawpipe.drawPolyline(this, iArr, iArr2, i);
                } catch (InvalidPipeException unused) {
                }
            } catch (InvalidPipeException unused2) {
                revalidateAll();
                this.drawpipe.drawPolyline(this, iArr, iArr2, i);
            }
        } finally {
            this.surfaceData.markDirty();
        }
    }

    @Override // java.awt.Graphics
    public void drawRect(int i, int i2, int i3, int i4) {
        try {
            try {
                try {
                    this.drawpipe.drawRect(this, i, i2, i3, i4);
                } finally {
                    this.surfaceData.markDirty();
                }
            } catch (InvalidPipeException unused) {
                revalidateAll();
                this.drawpipe.drawRect(this, i, i2, i3, i4);
            }
        } catch (InvalidPipeException unused2) {
        }
    }

    @Override // java.awt.Graphics2D
    public void drawRenderableImage(RenderableImage renderableImage, AffineTransform affineTransform) {
        AffineTransform affineTransform2;
        if (renderableImage == null) {
            return;
        }
        AffineTransform affineTransform3 = this.transform;
        AffineTransform affineTransform4 = new AffineTransform(affineTransform);
        affineTransform4.concatenate(affineTransform3);
        RenderContext renderContext = new RenderContext(affineTransform4);
        try {
            affineTransform2 = affineTransform3.createInverse();
        } catch (NoninvertibleTransformException unused) {
            renderContext = new RenderContext(affineTransform3);
            affineTransform2 = new AffineTransform();
        }
        drawRenderedImage(renderableImage.createRendering(renderContext), affineTransform2);
    }

    @Override // java.awt.Graphics2D
    public void drawRenderedImage(RenderedImage renderedImage, AffineTransform affineTransform) {
        if (renderedImage == null) {
            return;
        }
        if (renderedImage instanceof BufferedImage) {
            drawImage((BufferedImage) renderedImage, affineTransform, null);
            return;
        }
        boolean z = this.transformState <= 1 && isIntegerTranslation(affineTransform);
        int i = z ? 0 : 3;
        try {
            Rectangle imageRegion = getImageRegion(renderedImage, getCompClip(), this.transform, affineTransform, i, i);
            if (imageRegion.width <= 0 || imageRegion.height <= 0) {
                return;
            }
            if (z) {
                drawTranslatedRenderedImage(renderedImage, imageRegion, (int) affineTransform.getTranslateX(), (int) affineTransform.getTranslateY());
                return;
            }
            Raster data = renderedImage.getData(imageRegion);
            WritableRaster createWritableRaster = Raster.createWritableRaster(data.getSampleModel(), data.getDataBuffer(), null);
            int minX = data.getMinX();
            int minY = data.getMinY();
            int width = data.getWidth();
            int height = data.getHeight();
            int sampleModelTranslateX = minX - data.getSampleModelTranslateX();
            int sampleModelTranslateY = minY - data.getSampleModelTranslateY();
            if (sampleModelTranslateX != 0 || sampleModelTranslateY != 0 || width != createWritableRaster.getWidth() || height != createWritableRaster.getHeight()) {
                createWritableRaster = createWritableRaster.createWritableChild(sampleModelTranslateX, sampleModelTranslateY, width, height, 0, 0, null);
            }
            AffineTransform affineTransform2 = (AffineTransform) affineTransform.clone();
            affineTransform2.translate(minX, minY);
            ColorModel colorModel = renderedImage.getColorModel();
            drawImage(new BufferedImage(colorModel, createWritableRaster, colorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null), affineTransform2, null);
        } catch (InvalidPipeException unused) {
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawRoundRect(int i, int i2, int i3, int i4, int i5, int i6) {
        try {
            try {
                try {
                    this.drawpipe.drawRoundRect(this, i, i2, i3, i4, i5, i6);
                } catch (InvalidPipeException unused) {
                    revalidateAll();
                    this.drawpipe.drawRoundRect(this, i, i2, i3, i4, i5, i6);
                }
            } finally {
                this.surfaceData.markDirty();
            }
        } catch (InvalidPipeException unused2) {
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawString(String str, int i, int i2) {
        if (str != null) {
            try {
                if (this.font.hasLayoutAttributes()) {
                    if (str.length() == 0) {
                        return;
                    }
                    new TextLayout(str, this.font, getFontRenderContext()).draw(this, i, i2);
                    return;
                } else {
                    try {
                        try {
                            this.textpipe.drawString(this, str, i, i2);
                        } catch (InvalidPipeException unused) {
                            revalidateAll();
                            this.textpipe.drawString(this, str, i, i2);
                        }
                    } catch (InvalidPipeException unused2) {
                    }
                    return;
                }
            } finally {
                this.surfaceData.markDirty();
            }
        }
        throw new NullPointerException("String is null");
    }

    @Override // java.awt.Graphics2D
    public void fill(Shape shape) {
        try {
            try {
                try {
                    this.shapepipe.fill(this, shape);
                } catch (InvalidPipeException unused) {
                }
            } catch (InvalidPipeException unused2) {
                revalidateAll();
                this.shapepipe.fill(this, shape);
            }
        } finally {
            this.surfaceData.markDirty();
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillArc(int i, int i2, int i3, int i4, int i5, int i6) {
        try {
            try {
                try {
                    this.fillpipe.fillArc(this, i, i2, i3, i4, i5, i6);
                } catch (InvalidPipeException unused) {
                    revalidateAll();
                    this.fillpipe.fillArc(this, i, i2, i3, i4, i5, i6);
                }
            } finally {
                this.surfaceData.markDirty();
            }
        } catch (InvalidPipeException unused2) {
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillOval(int i, int i2, int i3, int i4) {
        try {
            try {
                try {
                    this.fillpipe.fillOval(this, i, i2, i3, i4);
                } finally {
                    this.surfaceData.markDirty();
                }
            } catch (InvalidPipeException unused) {
                revalidateAll();
                this.fillpipe.fillOval(this, i, i2, i3, i4);
            }
        } catch (InvalidPipeException unused2) {
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillPolygon(int[] iArr, int[] iArr2, int i) {
        try {
            try {
                try {
                    this.fillpipe.fillPolygon(this, iArr, iArr2, i);
                } catch (InvalidPipeException unused) {
                }
            } catch (InvalidPipeException unused2) {
                revalidateAll();
                this.fillpipe.fillPolygon(this, iArr, iArr2, i);
            }
        } finally {
            this.surfaceData.markDirty();
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillRect(int i, int i2, int i3, int i4) {
        try {
            try {
                try {
                    this.fillpipe.fillRect(this, i, i2, i3, i4);
                } finally {
                    this.surfaceData.markDirty();
                }
            } catch (InvalidPipeException unused) {
                revalidateAll();
                this.fillpipe.fillRect(this, i, i2, i3, i4);
            }
        } catch (InvalidPipeException unused2) {
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillRoundRect(int i, int i2, int i3, int i4, int i5, int i6) {
        try {
            try {
                try {
                    this.fillpipe.fillRoundRect(this, i, i2, i3, i4, i5, i6);
                } catch (InvalidPipeException unused) {
                    revalidateAll();
                    this.fillpipe.fillRoundRect(this, i, i2, i3, i4, i5, i6);
                }
            } finally {
                this.surfaceData.markDirty();
            }
        } catch (InvalidPipeException unused2) {
        }
    }

    @Override // java.awt.Graphics
    public void finalize() {
    }

    @Override // java.awt.Graphics2D
    public Color getBackground() {
        return this.backgroundColor;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Shape getClip() {
        return untransformShape(this.usrClip);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Rectangle getClipBounds() {
        if (this.clipState == 0) {
            return null;
        }
        return getClipBounds(new Rectangle());
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Color getColor() {
        return this.foregroundColor;
    }

    public Region getCompClip() {
        if (!this.surfaceData.isValid()) {
            revalidateAll();
        }
        return this.clipRegion;
    }

    @Override // java.awt.Graphics2D
    public Composite getComposite() {
        return this.composite;
    }

    public Object getDestination() {
        return this.surfaceData.getDestination();
    }

    public ColorModel getDeviceColorModel() {
        return this.surfaceData.getColorModel();
    }

    @Override // java.awt.Graphics2D
    public GraphicsConfiguration getDeviceConfiguration() {
        return this.surfaceData.getDeviceConfiguration();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Font getFont() {
        if (this.font == null) {
            this.font = defaultFont;
        }
        return this.font;
    }

    public FontInfo getFontInfo() {
        if (!this.validFontInfo) {
            this.fontInfo = checkFontInfo(this.fontInfo, this.font, null);
            this.validFontInfo = true;
        }
        return this.fontInfo;
    }

    @Override // java.awt.Graphics
    public FontMetrics getFontMetrics() {
        FontMetrics fontMetrics = this.fontMetrics;
        if (fontMetrics != null) {
            return fontMetrics;
        }
        FontDesignMetrics metrics = FontDesignMetrics.getMetrics(this.font, getFontRenderContext());
        this.fontMetrics = metrics;
        return metrics;
    }

    @Override // java.awt.Graphics2D
    public FontRenderContext getFontRenderContext() {
        if (this.cachedFRC == null) {
            int i = this.textAntialiasHint;
            if (i == 0 && this.antialiasHint == 2) {
                i = 2;
            }
            this.cachedFRC = new FontRenderContext(this.transformState >= 3 ? (this.transform.getTranslateX() == 0.0d && this.transform.getTranslateY() == 0.0d) ? this.transform : new AffineTransform(this.transform.getScaleX(), this.transform.getShearY(), this.transform.getShearX(), this.transform.getScaleY(), 0.0d, 0.0d) : null, SunHints.Value.get(2, i), SunHints.Value.get(3, this.fractionalMetricsHint));
        }
        return this.cachedFRC;
    }

    public FontInfo getGVFontInfo(Font font, FontRenderContext fontRenderContext) {
        FontInfo fontInfo = this.glyphVectorFontInfo;
        if (fontInfo != null && fontInfo.font == font && this.glyphVectorFRC == fontRenderContext) {
            return fontInfo;
        }
        this.glyphVectorFRC = fontRenderContext;
        FontInfo checkFontInfo = checkFontInfo(fontInfo, font, fontRenderContext);
        this.glyphVectorFontInfo = checkFontInfo;
        return checkFontInfo;
    }

    @Override // java.awt.Graphics2D
    public Paint getPaint() {
        return this.paint;
    }

    @Override // java.awt.Graphics2D
    public Object getRenderingHint(RenderingHints.Key key) {
        RenderingHints renderingHints = this.hints;
        if (renderingHints != null) {
            return renderingHints.get(key);
        }
        if (!(key instanceof SunHints.Key)) {
            return null;
        }
        int index = ((SunHints.Key) key).getIndex();
        if (index == 0) {
            return SunHints.Value.get(0, this.renderHint);
        }
        if (index == 1) {
            return SunHints.Value.get(1, this.antialiasHint);
        }
        if (index == 2) {
            return SunHints.Value.get(2, this.textAntialiasHint);
        }
        if (index == 3) {
            return SunHints.Value.get(3, this.fractionalMetricsHint);
        }
        if (index != 5) {
            if (index == 100) {
                return new Integer(this.lcdTextContrast);
            }
            if (index == 8) {
                return SunHints.Value.get(8, this.strokeHint);
            }
            if (index != 9) {
                return null;
            }
            return SunHints.Value.get(9, this.resolutionVariantHint);
        }
        int i = this.interpolationHint;
        if (i == 0) {
            return SunHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR;
        }
        if (i == 1) {
            return SunHints.VALUE_INTERPOLATION_BILINEAR;
        }
        if (i != 2) {
            return null;
        }
        return SunHints.VALUE_INTERPOLATION_BICUBIC;
    }

    @Override // java.awt.Graphics2D
    public RenderingHints getRenderingHints() {
        RenderingHints renderingHints = this.hints;
        return renderingHints == null ? makeHints(null) : (RenderingHints) renderingHints.clone();
    }

    @Override // java.awt.Graphics2D
    public Stroke getStroke() {
        return this.stroke;
    }

    public final SurfaceData getSurfaceData() {
        return this.surfaceData;
    }

    @Override // java.awt.Graphics2D
    public AffineTransform getTransform() {
        if ((this.constrainX | this.constrainY) == 0 && this.devScale == 1) {
            return new AffineTransform(this.transform);
        }
        double d = 1.0d / this.devScale;
        AffineTransform affineTransform = new AffineTransform(d, 0.0d, 0.0d, d, (-this.constrainX) * d, (-this.constrainY) * d);
        affineTransform.concatenate(this.transform);
        return affineTransform;
    }

    @Override // java.awt.Graphics2D
    public boolean hit(Rectangle rectangle, Shape shape, boolean z) {
        if (z) {
            shape = this.stroke.createStrokedShape(shape);
        }
        Shape transformShape = transformShape(shape);
        if ((this.constrainX | this.constrainY) != 0) {
            Rectangle rectangle2 = new Rectangle(rectangle);
            rectangle2.translate(this.constrainX, this.constrainY);
            rectangle = rectangle2;
        }
        return transformShape.intersects(rectangle);
    }

    @Override // java.awt.Graphics
    public boolean hitClip(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        if (i3 > 0 && i4 > 0) {
            if (this.transformState > 1) {
                double d = i;
                double d2 = i2;
                double d3 = i + i3;
                double d4 = i2 + i4;
                double[] dArr = {d, d2, d3, d2, d, d4, d3, d4};
                this.transform.transform(dArr, 0, dArr, 0, 4);
                int floor = (int) Math.floor(Math.min(Math.min(dArr[0], dArr[2]), Math.min(dArr[4], dArr[6])));
                i6 = (int) Math.floor(Math.min(Math.min(dArr[1], dArr[3]), Math.min(dArr[5], dArr[7])));
                i7 = (int) Math.ceil(Math.max(Math.max(dArr[0], dArr[2]), Math.max(dArr[4], dArr[6])));
                i8 = (int) Math.ceil(Math.max(Math.max(dArr[1], dArr[3]), Math.max(dArr[5], dArr[7])));
                i5 = floor;
            } else {
                i5 = i + this.transX;
                i6 = i2 + this.transY;
                i7 = i3 + i5;
                i8 = i4 + i6;
            }
            try {
                return getCompClip().intersectsQuickCheckXYXY(i5, i6, i7, i8);
            } catch (InvalidPipeException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.awt.Shape intersectByArea(java.awt.Shape r1, java.awt.Shape r2, boolean r3, boolean r4) {
        /*
            r0 = this;
            if (r3 != 0) goto La
            boolean r0 = r1 instanceof java.awt.geom.Area
            if (r0 == 0) goto La
            java.awt.geom.Area r1 = (java.awt.geom.Area) r1
            r0 = r1
            goto L19
        La:
            if (r4 != 0) goto L14
            boolean r0 = r2 instanceof java.awt.geom.Area
            if (r0 == 0) goto L14
            r0 = r2
            java.awt.geom.Area r0 = (java.awt.geom.Area) r0
            goto L1a
        L14:
            java.awt.geom.Area r0 = new java.awt.geom.Area
            r0.<init>(r1)
        L19:
            r1 = r2
        L1a:
            boolean r2 = r1 instanceof java.awt.geom.Area
            if (r2 == 0) goto L21
            java.awt.geom.Area r1 = (java.awt.geom.Area) r1
            goto L27
        L21:
            java.awt.geom.Area r2 = new java.awt.geom.Area
            r2.<init>(r1)
            r1 = r2
        L27:
            r0.intersect(r1)
            boolean r1 = r0.isRectangular()
            if (r1 == 0) goto L34
            java.awt.Rectangle r0 = r0.getBounds()
        L34:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.SunGraphics2D.intersectByArea(java.awt.Shape, java.awt.Shape, boolean, boolean):java.awt.Shape");
    }

    public Shape intersectRectShape(Rectangle2D rectangle2D, Shape shape, boolean z, boolean z2) {
        if (!(shape instanceof Rectangle2D)) {
            return rectangle2D.contains(shape.getBounds2D()) ? z2 ? cloneShape(shape) : shape : intersectByArea(rectangle2D, shape, z, z2);
        }
        Rectangle2D rectangle2D2 = (Rectangle2D) shape;
        Rectangle2D rectangle2D3 = !z ? rectangle2D : !z2 ? rectangle2D2 : new Rectangle2D.Float();
        double max = Math.max(rectangle2D.getX(), rectangle2D2.getX());
        double min = Math.min(rectangle2D.getX() + rectangle2D.getWidth(), rectangle2D2.getX() + rectangle2D2.getWidth());
        double max2 = Math.max(rectangle2D.getY(), rectangle2D2.getY());
        double min2 = Math.min(rectangle2D.getY() + rectangle2D.getHeight(), rectangle2D2.getY() + rectangle2D2.getHeight());
        if (min - max < 0.0d || min2 - max2 < 0.0d) {
            rectangle2D3.setFrameFromDiagonal(0.0d, 0.0d, 0.0d, 0.0d);
        } else {
            rectangle2D3.setFrameFromDiagonal(max, max2, min, min2);
        }
        return rectangle2D3;
    }

    public Shape intersectShapes(Shape shape, Shape shape2, boolean z, boolean z2) {
        return ((shape instanceof Rectangle) && (shape2 instanceof Rectangle)) ? ((Rectangle) shape).intersection((Rectangle) shape2) : shape instanceof Rectangle2D ? intersectRectShape((Rectangle2D) shape, shape2, z, z2) : shape2 instanceof Rectangle2D ? intersectRectShape((Rectangle2D) shape2, shape, z2, z) : intersectByArea(shape, shape2, z, z2);
    }

    public void invalidatePipe() {
        ValidatePipe validatePipe = invalidpipe;
        this.drawpipe = validatePipe;
        this.fillpipe = validatePipe;
        this.shapepipe = validatePipe;
        this.textpipe = validatePipe;
        this.imagepipe = validatePipe;
        this.loops = null;
    }

    public void invalidateTransform() {
        int type = this.transform.getType();
        int i = this.transformState;
        if (type == 0) {
            this.transformState = 0;
            this.transY = 0;
            this.transX = 0;
        } else if (type == 1) {
            double translateX = this.transform.getTranslateX();
            double translateY = this.transform.getTranslateY();
            this.transX = (int) Math.floor(translateX + 0.5d);
            int floor = (int) Math.floor(0.5d + translateY);
            this.transY = floor;
            if (translateX == this.transX && translateY == floor) {
                this.transformState = 1;
            } else {
                this.transformState = 2;
            }
        } else if ((type & 120) == 0) {
            this.transformState = 3;
            this.transY = 0;
            this.transX = 0;
        } else {
            this.transformState = 4;
            this.transY = 0;
            this.transX = 0;
        }
        int i2 = this.transformState;
        if (i2 >= 3 || i >= 3) {
            this.cachedFRC = null;
            this.validFontInfo = false;
            this.fontMetrics = null;
            this.glyphVectorFontInfo = null;
            if (i2 != i) {
                invalidatePipe();
            }
        }
        if (this.strokeState != 3) {
            validateBasicStroke((BasicStroke) this.stroke);
        }
    }

    public RenderingHints makeHints(Map map) {
        RenderingHints renderingHints = new RenderingHints(map);
        renderingHints.put(SunHints.KEY_RENDERING, SunHints.Value.get(0, this.renderHint));
        renderingHints.put(SunHints.KEY_ANTIALIASING, SunHints.Value.get(1, this.antialiasHint));
        renderingHints.put(SunHints.KEY_TEXT_ANTIALIASING, SunHints.Value.get(2, this.textAntialiasHint));
        renderingHints.put(SunHints.KEY_FRACTIONALMETRICS, SunHints.Value.get(3, this.fractionalMetricsHint));
        renderingHints.put(SunHints.KEY_TEXT_ANTIALIAS_LCD_CONTRAST, Integer.valueOf(this.lcdTextContrast));
        int i = this.interpolationHint;
        Object obj = i != 0 ? i != 1 ? i != 2 ? null : SunHints.VALUE_INTERPOLATION_BICUBIC : SunHints.VALUE_INTERPOLATION_BILINEAR : SunHints.VALUE_INTERPOLATION_NEAREST_NEIGHBOR;
        if (obj != null) {
            renderingHints.put(SunHints.KEY_INTERPOLATION, obj);
        }
        renderingHints.put(SunHints.KEY_STROKE_CONTROL, SunHints.Value.get(8, this.strokeHint));
        return renderingHints;
    }

    @Override // java.awt.Graphics2D
    public void rotate(double d) {
        this.transform.rotate(d);
        invalidateTransform();
    }

    @Override // java.awt.Graphics2D
    public void scale(double d, double d2) {
        this.transform.scale(d, d2);
        invalidateTransform();
    }

    @Override // java.awt.Graphics2D
    public void setBackground(Color color) {
        this.backgroundColor = color;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setClip(int i, int i2, int i3, int i4) {
        setClip(new Rectangle(i, i2, i3, i4));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setColor(Color color) {
        if (color == null || color == this.paint) {
            return;
        }
        this.foregroundColor = color;
        this.paint = color;
        validateColor();
        if ((this.eargb >> 24) == -1) {
            if (this.paintState == 0) {
                return;
            }
            this.paintState = 0;
            if (this.imageComp == CompositeType.SrcOverNoEa) {
                this.compositeState = 0;
            }
        } else {
            if (this.paintState == 1) {
                return;
            }
            this.paintState = 1;
            if (this.imageComp == CompositeType.SrcOverNoEa) {
                this.compositeState = 1;
            }
        }
        this.validFontInfo = false;
        invalidatePipe();
    }

    @Override // java.awt.Graphics2D
    public void setComposite(Composite composite) {
        CompositeType compositeType;
        int i;
        int i2;
        if (this.composite == composite) {
            return;
        }
        if (composite instanceof AlphaComposite) {
            compositeType = CompositeType.forAlphaComposite((AlphaComposite) composite);
            i = (compositeType != CompositeType.SrcOverNoEa ? compositeType == CompositeType.SrcNoEa || compositeType == CompositeType.Src || compositeType == CompositeType.Clear || (this.surfaceData.getTransparency() == 1 && compositeType == CompositeType.SrcIn) : (i2 = this.paintState) == 0 || (i2 > 1 && this.paint.getTransparency() == 1)) ? 0 : 1;
        } else if (composite instanceof XORComposite) {
            compositeType = CompositeType.Xor;
            i = 2;
        } else {
            if (composite == null) {
                throw new IllegalArgumentException("null Composite");
            }
            this.surfaceData.checkCustomComposite();
            compositeType = CompositeType.General;
            i = 3;
        }
        if (this.compositeState != i || this.imageComp != compositeType) {
            this.compositeState = i;
            this.imageComp = compositeType;
            invalidatePipe();
            this.validFontInfo = false;
        }
        this.composite = composite;
        if (this.paintState <= 1) {
            validateColor();
        }
    }

    public void setDevClip(int i, int i2, int i3, int i4) {
        Region region = this.constrainClip;
        if (region == null) {
            this.devClip = Region.getInstanceXYWH(i, i2, i3, i4);
        } else {
            this.devClip = region.getIntersectionXYWH(i, i2, i3, i4);
        }
        validateCompClip();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        if ((r0.aaHint == 2) != sun.font.FontUtilities.getFont2D(r5).useAAForPtSize(r5.getSize())) goto L21;
     */
    @Override // java.awt.Graphics2D, java.awt.Graphics
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setFont(java.awt.Font r5) {
        /*
            r4 = this;
            if (r5 == 0) goto L41
            java.awt.Font r0 = r4.font
            if (r5 == r0) goto L41
            int r0 = r4.textAntialiasHint
            r1 = 3
            r2 = 0
            if (r0 != r1) goto L3a
            sun.java2d.pipe.TextPipe r0 = r4.textpipe
            sun.java2d.pipe.ValidatePipe r1 = sun.java2d.SunGraphics2D.invalidpipe
            if (r0 == r1) goto L3a
            int r0 = r4.transformState
            r1 = 2
            if (r0 > r1) goto L36
            boolean r0 = r5.isTransformed()
            if (r0 != 0) goto L36
            sun.java2d.loops.FontInfo r0 = r4.fontInfo
            if (r0 == 0) goto L36
            int r0 = r0.aaHint
            if (r0 != r1) goto L27
            r0 = 1
            goto L28
        L27:
            r0 = r2
        L28:
            sun.font.Font2D r1 = sun.font.FontUtilities.getFont2D(r5)
            int r3 = r5.getSize()
            boolean r1 = r1.useAAForPtSize(r3)
            if (r0 == r1) goto L3a
        L36:
            sun.java2d.pipe.ValidatePipe r0 = sun.java2d.SunGraphics2D.invalidpipe
            r4.textpipe = r0
        L3a:
            r4.font = r5
            r5 = 0
            r4.fontMetrics = r5
            r4.validFontInfo = r2
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.SunGraphics2D.setFont(java.awt.Font):void");
    }

    @Override // java.awt.Graphics2D
    public void setPaint(Paint paint) {
        if (paint instanceof Color) {
            setColor((Color) paint);
            return;
        }
        if (paint == null || this.paint == paint) {
            return;
        }
        this.paint = paint;
        if (this.imageComp == CompositeType.SrcOverNoEa) {
            if (paint.getTransparency() == 1) {
                if (this.compositeState != 0) {
                    this.compositeState = 0;
                }
            } else if (this.compositeState == 0) {
                this.compositeState = 1;
            }
        }
        this.validFontInfo = false;
        invalidatePipe();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setPaintMode() {
        setComposite(AlphaComposite.SrcOver);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00bf  */
    @Override // java.awt.Graphics2D
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setRenderingHint(java.awt.RenderingHints.Key r9, java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.java2d.SunGraphics2D.setRenderingHint(java.awt.RenderingHints$Key, java.lang.Object):void");
    }

    @Override // java.awt.Graphics2D
    public void setRenderingHints(Map<?, ?> map) {
        this.hints = null;
        boolean z = false;
        this.renderHint = 0;
        this.antialiasHint = 1;
        this.textAntialiasHint = 0;
        this.fractionalMetricsHint = 1;
        this.lcdTextContrast = lcdTextContrastDefaultValue;
        this.interpolationHint = -1;
        this.interpolationType = 1;
        for (Object obj : map.keySet()) {
            if (obj == SunHints.KEY_RENDERING || obj == SunHints.KEY_ANTIALIASING || obj == SunHints.KEY_TEXT_ANTIALIASING || obj == SunHints.KEY_FRACTIONALMETRICS || obj == SunHints.KEY_TEXT_ANTIALIAS_LCD_CONTRAST || obj == SunHints.KEY_STROKE_CONTROL || obj == SunHints.KEY_INTERPOLATION) {
                setRenderingHint((RenderingHints.Key) obj, map.get(obj));
            } else {
                z = true;
            }
        }
        if (z) {
            this.hints = makeHints(map);
        }
        invalidatePipe();
    }

    @Override // java.awt.Graphics2D
    public void setStroke(Stroke stroke) {
        if (stroke == null) {
            throw new IllegalArgumentException("null Stroke");
        }
        int i = this.strokeState;
        this.stroke = stroke;
        if (stroke instanceof BasicStroke) {
            validateBasicStroke((BasicStroke) stroke);
        } else {
            this.strokeState = 3;
        }
        if (this.strokeState != i) {
            invalidatePipe();
        }
    }

    @Override // java.awt.Graphics2D
    public void setTransform(AffineTransform affineTransform) {
        int i = this.constrainX;
        int i2 = this.constrainY;
        if ((i | i2) == 0 && this.devScale == 1) {
            this.transform.setTransform(affineTransform);
        } else {
            AffineTransform affineTransform2 = this.transform;
            int i3 = this.devScale;
            affineTransform2.setTransform(i3, 0.0d, 0.0d, i3, i, i2);
            this.transform.concatenate(affineTransform);
        }
        invalidateTransform();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setXORMode(Color color) {
        if (color == null) {
            throw new IllegalArgumentException("null XORColor");
        }
        setComposite(new XORComposite(color, this.surfaceData));
    }

    @Override // java.awt.Graphics2D
    public void shear(double d, double d2) {
        this.transform.shear(d, d2);
        invalidateTransform();
    }

    @Override // java.awt.Graphics2D
    public void transform(AffineTransform affineTransform) {
        this.transform.concatenate(affineTransform);
        invalidateTransform();
    }

    public Rectangle transformBounds(Rectangle rectangle, AffineTransform affineTransform) {
        return affineTransform.isIdentity() ? rectangle : transformShape(affineTransform, rectangle).getBounds();
    }

    public Shape transformShape(Shape shape) {
        if (shape == null) {
            return null;
        }
        if (this.transformState > 1) {
            return transformShape(this.transform, shape);
        }
        return transformShape(this.transX, this.transY, shape);
    }

    @Override // java.awt.Graphics2D
    public void translate(double d, double d2) {
        this.transform.translate(d, d2);
        invalidateTransform();
    }

    public Shape untransformShape(Shape shape) {
        if (shape == null) {
            return null;
        }
        if (this.transformState <= 1) {
            return transformShape(-this.transX, -this.transY, shape);
        }
        try {
            return transformShape(this.transform.createInverse(), shape);
        } catch (NoninvertibleTransformException unused) {
            return null;
        }
    }

    public final void validateColor() {
        int rgb;
        CompositeType compositeType;
        if (this.imageComp == CompositeType.Clear) {
            rgb = 0;
        } else {
            rgb = this.foregroundColor.getRGB();
            if (this.compositeState <= 1 && (compositeType = this.imageComp) != CompositeType.SrcNoEa && compositeType != CompositeType.SrcOverNoEa) {
                rgb = (rgb & 16777215) | (Math.round(((AlphaComposite) this.composite).getAlpha() * (rgb >>> 24)) << 24);
            }
        }
        this.eargb = rgb;
        this.pixel = this.surfaceData.pixelFor(rgb);
    }

    public void validateCompClip() {
        int i = this.clipState;
        Shape shape = this.usrClip;
        if (shape == null) {
            this.clipState = 0;
            this.clipRegion = this.devClip;
        } else {
            int i2 = 1;
            if (shape instanceof Rectangle2D) {
                this.clipState = 1;
                if (shape instanceof Rectangle) {
                    this.clipRegion = this.devClip.getIntersection((Rectangle) shape);
                } else {
                    this.clipRegion = this.devClip.getIntersection(shape.getBounds());
                }
            } else {
                PathIterator pathIterator = shape.getPathIterator(null);
                int[] iArr = new int[4];
                ShapeSpanIterator fillSSI = LoopPipe.getFillSSI(this);
                try {
                    fillSSI.setOutputArea(this.devClip);
                    fillSSI.appendPath(pathIterator);
                    fillSSI.getPathBox(iArr);
                    Region region = Region.getInstance(iArr);
                    region.appendSpans(fillSSI);
                    this.clipRegion = region;
                    if (!region.isRectangular()) {
                        i2 = 2;
                    }
                    this.clipState = i2;
                } finally {
                    fillSSI.dispose();
                }
            }
        }
        int i3 = this.clipState;
        if (i != i3) {
            if (i3 == 2 || i == 2) {
                this.validFontInfo = false;
                invalidatePipe();
            }
        }
    }

    public void validatePipe() {
        if (!this.surfaceData.isValid()) {
            throw new InvalidPipeException("attempt to validate Pipe with invalid SurfaceData");
        }
        this.surfaceData.validatePipe(this);
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, Color color, ImageObserver imageObserver) {
        if (image == null || i3 == 0 || i4 == 0) {
            return true;
        }
        int width = image.getWidth(null);
        int height = image.getHeight(null);
        if (isHiDPIImage(image)) {
            return drawHiDPIImage(image, i, i2, i + i3, i2 + i4, 0, 0, width, height, color, imageObserver);
        }
        if (i3 == width && i4 == height) {
            return copyImage(image, i, i2, 0, 0, i3, i4, color, imageObserver);
        }
        try {
            try {
                try {
                    return this.imagepipe.scaleImage(this, image, i, i2, i3, i4, color, imageObserver);
                } finally {
                    this.surfaceData.markDirty();
                }
            } catch (InvalidPipeException unused) {
                this.surfaceData.markDirty();
                return false;
            }
        } catch (InvalidPipeException unused2) {
            revalidateAll();
            return this.imagepipe.scaleImage(this, image, i, i2, i3, i4, color, imageObserver);
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setClip(Shape shape) {
        this.usrClip = transformShape(shape);
        validateCompClip();
    }

    @Override // java.awt.Graphics
    public Rectangle getClipBounds(Rectangle rectangle) {
        if (this.clipState != 0) {
            if (this.transformState <= 1) {
                Shape shape = this.usrClip;
                if (shape instanceof Rectangle) {
                    rectangle.setBounds((Rectangle) shape);
                } else {
                    rectangle.setFrame(shape.getBounds2D());
                }
                rectangle.translate(-this.transX, -this.transY);
            } else {
                rectangle.setFrame(getClip().getBounds2D());
            }
        } else if (rectangle == null) {
            throw new NullPointerException("null rectangle parameter");
        }
        return rectangle;
    }

    @Override // java.awt.Graphics2D
    public void rotate(double d, double d2, double d3) {
        this.transform.rotate(d, d2, d3);
        invalidateTransform();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void translate(int i, int i2) {
        this.transform.translate(i, i2);
        if (this.transformState <= 1) {
            int i3 = this.transX + i;
            this.transX = i3;
            int i4 = this.transY + i2;
            this.transY = i4;
            this.transformState = (i4 | i3) == 0 ? 0 : 1;
            return;
        }
        invalidateTransform();
    }

    public static Shape transformShape(int i, int i2, Shape shape) {
        if (shape == null) {
            return null;
        }
        if (shape instanceof Rectangle) {
            Rectangle bounds = shape.getBounds();
            bounds.translate(i, i2);
            return bounds;
        }
        if (shape instanceof Rectangle2D) {
            Rectangle2D rectangle2D = (Rectangle2D) shape;
            return new Rectangle2D.Double(rectangle2D.getX() + i, rectangle2D.getY() + i2, rectangle2D.getWidth(), rectangle2D.getHeight());
        }
        if (i == 0 && i2 == 0) {
            return cloneShape(shape);
        }
        return AffineTransform.getTranslateInstance(i, i2).createTransformedShape(shape);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public FontMetrics getFontMetrics(Font font) {
        FontMetrics fontMetrics = this.fontMetrics;
        if (fontMetrics != null && font == this.font) {
            return fontMetrics;
        }
        FontDesignMetrics metrics = FontDesignMetrics.getMetrics(font, getFontRenderContext());
        if (this.font == font) {
            this.fontMetrics = metrics;
        }
        return metrics;
    }

    public void setDevClip(Rectangle rectangle) {
        setDevClip(rectangle.f97732x, rectangle.f97733y, rectangle.width, rectangle.height);
    }

    @Override // java.awt.Graphics2D
    public void drawString(String str, float f, float f2) {
        if (str != null) {
            if (this.font.hasLayoutAttributes()) {
                if (str.length() == 0) {
                    return;
                }
                new TextLayout(str, this.font, getFontRenderContext()).draw(this, f, f2);
                return;
            } else {
                try {
                    try {
                        try {
                            this.textpipe.drawString(this, str, f, f2);
                        } catch (InvalidPipeException unused) {
                            revalidateAll();
                            this.textpipe.drawString(this, str, f, f2);
                        }
                    } catch (InvalidPipeException unused2) {
                    }
                    return;
                } finally {
                    this.surfaceData.markDirty();
                }
            }
        }
        throw new NullPointerException("String is null");
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, ImageObserver imageObserver) {
        return drawImage(image, i, i2, null, imageObserver);
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, Color color, ImageObserver imageObserver) {
        if (image == null) {
            return true;
        }
        if (isHiDPIImage(image)) {
            int width = image.getWidth(null);
            int height = image.getHeight(null);
            return drawHiDPIImage(image, i, i2, i + width, i2 + height, 0, 0, width, height, color, imageObserver);
        }
        try {
            try {
                try {
                    return this.imagepipe.copyImage(this, image, i, i2, color, imageObserver);
                } catch (InvalidPipeException unused) {
                    revalidateAll();
                    return this.imagepipe.copyImage(this, image, i, i2, color, imageObserver);
                }
            } catch (InvalidPipeException unused2) {
                this.surfaceData.markDirty();
                return false;
            }
        } finally {
            this.surfaceData.markDirty();
        }
    }

    public static Shape transformShape(AffineTransform affineTransform, Shape shape) {
        if (shape == null) {
            return null;
        }
        if ((shape instanceof Rectangle2D) && (affineTransform.getType() & 48) == 0) {
            Rectangle2D rectangle2D = (Rectangle2D) shape;
            double[] dArr = {rectangle2D.getX(), rectangle2D.getY(), dArr[0] + rectangle2D.getWidth(), dArr[1] + rectangle2D.getHeight()};
            affineTransform.transform(dArr, 0, dArr, 0, 2);
            fixRectangleOrientation(dArr, rectangle2D);
            double d = dArr[0];
            double d2 = dArr[1];
            return new Rectangle2D.Double(d, d2, dArr[2] - d, dArr[3] - d2);
        }
        if (affineTransform.isIdentity()) {
            return cloneShape(shape);
        }
        return affineTransform.createTransformedShape(shape);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawString(AttributedCharacterIterator attributedCharacterIterator, int i, int i2) {
        if (attributedCharacterIterator != null) {
            if (attributedCharacterIterator.getBeginIndex() == attributedCharacterIterator.getEndIndex()) {
                return;
            }
            new TextLayout(attributedCharacterIterator, getFontRenderContext()).draw(this, i, i2);
            return;
        }
        throw new NullPointerException("AttributedCharacterIterator is null");
    }

    @Override // java.awt.Graphics2D
    public void drawString(AttributedCharacterIterator attributedCharacterIterator, float f, float f2) {
        if (attributedCharacterIterator != null) {
            if (attributedCharacterIterator.getBeginIndex() == attributedCharacterIterator.getEndIndex()) {
                return;
            }
            new TextLayout(attributedCharacterIterator, getFontRenderContext()).draw(this, f, f2);
            return;
        }
        throw new NullPointerException("AttributedCharacterIterator is null");
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, ImageObserver imageObserver) {
        return drawImage(image, i, i2, i3, i4, i5, i6, i7, i8, null, imageObserver);
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Color color, ImageObserver imageObserver) {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        if (image == null || i == i3 || i2 == i4 || i5 == i7 || i6 == i8) {
            return true;
        }
        if (isHiDPIImage(image)) {
            return drawHiDPIImage(image, i, i2, i3, i4, i5, i6, i7, i8, color, imageObserver);
        }
        int i16 = i7 - i5;
        if (i16 == i3 - i && (i9 = i8 - i6) == i4 - i2) {
            if (i7 > i5) {
                i12 = i;
                i10 = i16;
                i11 = i5;
            } else {
                i10 = i5 - i7;
                i11 = i7;
                i12 = i3;
            }
            if (i8 > i6) {
                i15 = i9;
                i13 = i6;
                i14 = i2;
            } else {
                i13 = i8;
                i14 = i4;
                i15 = i6 - i8;
            }
            return copyImage(image, i12, i14, i11, i13, i10, i15, color, imageObserver);
        }
        try {
            try {
                try {
                    return this.imagepipe.scaleImage(this, image, i, i2, i3, i4, i5, i6, i7, i8, color, imageObserver);
                } catch (InvalidPipeException unused) {
                    revalidateAll();
                    return this.imagepipe.scaleImage(this, image, i, i2, i3, i4, i5, i6, i7, i8, color, imageObserver);
                }
            } catch (InvalidPipeException unused2) {
                this.surfaceData.markDirty();
                return false;
            }
        } finally {
            this.surfaceData.markDirty();
        }
    }

    @Override // java.awt.Graphics2D
    public boolean drawImage(Image image, AffineTransform affineTransform, ImageObserver imageObserver) {
        if (image == null) {
            return true;
        }
        if (affineTransform != null && !affineTransform.isIdentity()) {
            if (isHiDPIImage(image)) {
                int width = image.getWidth(null);
                int height = image.getHeight(null);
                AffineTransform affineTransform2 = new AffineTransform(this.transform);
                transform(affineTransform);
                boolean drawHiDPIImage = drawHiDPIImage(image, 0, 0, width, height, 0, 0, width, height, null, imageObserver);
                this.transform.setTransform(affineTransform2);
                invalidateTransform();
                return drawHiDPIImage;
            }
            try {
                try {
                    try {
                        return this.imagepipe.transformImage(this, image, affineTransform, imageObserver);
                    } catch (InvalidPipeException unused) {
                        revalidateAll();
                        return this.imagepipe.transformImage(this, image, affineTransform, imageObserver);
                    }
                } finally {
                    this.surfaceData.markDirty();
                }
            } catch (InvalidPipeException unused2) {
                this.surfaceData.markDirty();
                return false;
            }
        }
        return drawImage(image, 0, 0, null, imageObserver);
    }

    @Override // java.awt.Graphics2D
    public void drawImage(BufferedImage bufferedImage, BufferedImageOp bufferedImageOp, int i, int i2) {
        if (bufferedImage == null) {
            return;
        }
        try {
            try {
                try {
                    this.imagepipe.transformImage(this, bufferedImage, bufferedImageOp, i, i2);
                } catch (InvalidPipeException unused) {
                    revalidateAll();
                    this.imagepipe.transformImage(this, bufferedImage, bufferedImageOp, i, i2);
                }
            } finally {
                this.surfaceData.markDirty();
            }
        } catch (InvalidPipeException unused2) {
        }
    }
}
