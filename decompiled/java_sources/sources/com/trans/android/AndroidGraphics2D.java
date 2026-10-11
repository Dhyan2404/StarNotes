package com.trans.android;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.text.Layout;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.onyx.common.util.ArrayUtils;
import com.onyx.common.util.BitmapUtils;
import com.onyx.common.util.CloseUtils;
import com.onyx.common.util.JLog;
import com.onyx.common.util.PaintFactory;
import com.trans.android.AndroidGraphics2D;
import com.trans.android.batik.BatikUtils;
import com.trans.android.common.AttributedData;
import com.trans.android.font.FontManager;
import com.trans.android.font.FontProvider;
import com.trans.android.p107hb.HBGraphics;
import com.trans.android.poi.POIUtils;
import com.trans.android.util.BridgeUtils;
import com.trans.android.util.ColorUtils;
import com.trans.android.util.MatrixUtils;
import com.trans.android.util.PathUtils;
import com.trans.android.util.XfermodeUtils;
import java.awt.AlphaComposite;
import java.awt.AndroidFontMetrics;
import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Composite;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.GraphicsConfiguration;
import java.awt.IAndroidGradient;
import java.awt.Image;
import java.awt.Paint;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.Stroke;
import java.awt.TexturePaint;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphVector;
import java.awt.font.TextAttribute;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.BufferedImageOp;
import java.awt.image.ImageObserver;
import java.awt.image.RenderedImage;
import java.awt.image.renderable.RenderableImage;
import java.backport.function.Predicate;
import java.io.Closeable;
import java.text.AttributedCharacterIterator;
import java.text.CharacterIterator;
import java.util.List;
import java.util.Map;
import sun.awt.SunHints;
import sun.font.AndroidGlyphVector;
import sun.java2d.NullSurfaceData;
import sun.java2d.SunGraphics2D;
import sun.java2d.loops.XORComposite;

/* loaded from: classes10.dex */
public class AndroidGraphics2D extends Graphics2D implements Cloneable, Closeable {
    public static final int CLIP_DEVICE = 0;
    public static final int CLIP_RECTANGULAR = 1;
    public static final int CLIP_SHAPE = 2;
    public static final int NON_RECTILINEAR_TRANSFORM_MASK = 48;
    public static final int NON_UNIFORM_SCALE_MASK = 36;
    public static final String TAG = "AndroidGraphics2D";
    public static final int TRANSFORM_ANY_TRANSLATE = 2;
    public static final int TRANSFORM_GENERIC = 4;
    public static final int TRANSFORM_INT_TRANSLATE = 1;
    public static final int TRANSFORM_ISIDENT = 0;
    public static final int TRANSFORM_TRANSLATESCALE = 3;
    private Paint awtPaint;
    private Bitmap bitmap;
    private ImageBridge bridge;
    private FontRenderContext cachedFRC;
    private Canvas canvas;
    private int canvasSaveCount;
    public int clipState;
    public int compositeState;
    private android.graphics.Paint imagePaint;
    public int interpolationHint;
    public int interpolationType;
    private boolean isTexturePaint;
    public int lcdTextContrast;
    private TextPaint paint;
    public int paintState;
    private boolean recycleBitmap;
    public int resolutionVariantHint;
    public int strokeHint;
    public int strokeState;
    public int transX;
    public int transY;
    public int transformState;
    public Shape usrClip;
    public static final Composite DEFAULT_COMPOSITE = AlphaComposite.SrcOver;
    public static final Stroke defaultStroke = new BasicStroke();
    public double scaleX = 1.0d;
    private Font font = Font.DEFAULT_FONT;
    private Color fgColor = Color.white;
    private Color bgColor = Color.BLACK;
    public int renderHint = 0;
    public int antialiasHint = 1;
    public int textAntialiasHint = 0;
    public int fractionalMetricsHint = 1;
    private int alpha = 255;
    private Stroke stroke = new BasicStroke();
    private AffineTransform transform = new AffineTransform();
    private RenderingHints hints = new RenderingHints(null);
    private Composite composite = DEFAULT_COMPOSITE;
    private HBGraphics hbGraphics = new HBGraphics();

    /* loaded from: classes10.dex */
    public interface RenderAction {
        void execute(Bitmap bitmap);
    }

    public AndroidGraphics2D(Bitmap bitmap) {
        this.bitmap = bitmap;
        this.canvas = new Canvas(bitmap);
        this.canvasSaveCount = this.canvas.save();
        initPaint();
    }

    public static Shape cloneShape(Shape shape) {
        return new GeneralPath(shape);
    }

    private boolean drawAndroidImage(Object obj, RenderAction renderAction) {
        Shape shape;
        AffineTransform affineTransform;
        boolean z = true;
        AndroidImage androidImage = null;
        Shape shape2 = null;
        if (obj instanceof AndroidImage) {
            affineTransform = null;
            androidImage = (AndroidImage) obj;
            shape = null;
        } else if (obj instanceof BufferedImageWrapper) {
            BufferedImageWrapper bufferedImageWrapper = (BufferedImageWrapper) obj;
            if (bufferedImageWrapper.getRenderContext() != null) {
                shape2 = getClip();
                affineTransform = getTransform();
                Shape areaOfInterest = bufferedImageWrapper.getRenderContext().getAreaOfInterest();
                setTransform(bufferedImageWrapper.getRenderContext().getTransform());
                setClip(areaOfInterest);
            } else {
                affineTransform = null;
            }
            AndroidImage androidImage2 = bufferedImageWrapper.getAndroidImage();
            bufferedImageWrapper.clearAndroidImage();
            CloseUtils.close(bufferedImageWrapper);
            shape = shape2;
            androidImage = androidImage2;
        } else {
            if (obj instanceof BufferedImage) {
                AndroidImage androidImage3 = new AndroidImage((BufferedImage) obj);
                shape = null;
                androidImage = androidImage3;
            } else {
                z = false;
                shape = null;
            }
            affineTransform = shape;
        }
        if (androidImage != null) {
            renderAction.execute(androidImage.getAndroidBitmap());
            CloseUtils.close(androidImage);
        }
        if (shape != null) {
            setClip(shape);
        }
        if (affineTransform != null) {
            setTransform(affineTransform);
        }
        return z;
    }

    private boolean drawStringWithHBGraphics(String str, List<AttributedData> list, float f, float f2) {
        return this.hbGraphics.drawString(this, list, str, f, f2);
    }

    private boolean drawTexturePaint(Shape shape) {
        if (this.isTexturePaint) {
            Paint paint = this.awtPaint;
            if (paint instanceof TexturePaint) {
                Rectangle2D bounds2D = shape.getBounds2D();
                AffineTransform transform = getTransform();
                Shape clip = getClip();
                setClip(shape);
                AffineTransform affineTransform = new AffineTransform(transform);
                AndroidImage androidImage = ((TexturePaint) paint).getAndroidImage(affineTransform, bounds2D);
                setTransform(affineTransform);
                drawImage(androidImage, 0, 0, (ImageObserver) null);
                CloseUtils.close(androidImage);
                setTransform(transform);
                setClip(clip);
                this.isTexturePaint = false;
                this.awtPaint = null;
                return true;
            }
        }
        return false;
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawImage$1(int i, int i2, Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.postTranslate(i, i2);
        this.canvas.drawBitmap(bitmap, matrix, this.imagePaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawImage$2(int i, int i2, int i3, int i4, Bitmap bitmap) {
        this.canvas.drawBitmap(bitmap, new Rect(i, i2, i + i3, i2 + i4), new Rect(0, 0, i3, i4), this.imagePaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawImage$3(Color color, int i, int i2, Bitmap bitmap) {
        int color2 = this.imagePaint.getColor();
        this.imagePaint.setColor(color.getRGB());
        Matrix matrix = new Matrix();
        matrix.postTranslate(i, i2);
        this.canvas.drawBitmap(bitmap, matrix, this.imagePaint);
        this.imagePaint.setColor(color2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawImage$4(Color color, int i, int i2, int i3, int i4, Bitmap bitmap) {
        int color2 = this.imagePaint.getColor();
        this.imagePaint.setColor(color.getRGB());
        this.canvas.drawBitmap(bitmap, new Rect(i, i2, i + i3, i2 + i4), new Rect(0, 0, i3, i4), this.imagePaint);
        this.imagePaint.setColor(color2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawImage$6(int i, int i2, Bitmap bitmap) {
        this.canvas.drawBitmap(bitmap, i, i2, this.imagePaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawImage$7(AffineTransform affineTransform, Bitmap bitmap) {
        this.canvas.drawBitmap(bitmap, MatrixUtils.convertTransformToMatrix(affineTransform), this.imagePaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$drawRenderedImage$5(AffineTransform affineTransform, Bitmap bitmap) {
        this.canvas.drawBitmap(bitmap, MatrixUtils.convertTransformToMatrix(affineTransform), this.imagePaint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$drawString$0(AttributedCharacterIterator.Attribute attribute) {
        return !(attribute instanceof TextAttribute) || attribute == TextAttribute.FAMILY || attribute == TextAttribute.FONT || attribute == TextAttribute.SIZE;
    }

    private void restoreCanvas() {
        int i = this.canvasSaveCount;
        if (i > 0) {
            this.canvas.restoreToCount(i);
            this.canvasSaveCount = this.canvas.save();
            updateCanvas();
        }
    }

    private void setCanvasClip(Shape shape) {
        if (shape != null) {
            this.canvas.clipPath(PathUtils.toAndroidPath(shape), Region.Op.INTERSECT);
        }
    }

    private void setPaintShader(Shader shader) {
        if (shader != null) {
            this.paint.setAlpha(255);
            this.paint.setShader(shader);
        }
    }

    private void updateCanvas() {
        this.canvas.setMatrix(MatrixUtils.convertTransformToMatrix(getTransform()));
    }

    private void validateBasicStroke(BasicStroke basicStroke) {
        double sqrt;
        boolean z = this.antialiasHint == 2;
        if (this.transformState < 3) {
            if (z) {
                if (basicStroke.getLineWidth() > SunGraphics2D.MinPenSizeAA) {
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
        if (sqrt > (z ? SunGraphics2D.MinPenSizeAASquared : 1.000000001d)) {
            this.strokeState = 2;
        } else if (basicStroke.getDashArray() == null) {
            this.strokeState = 0;
        } else {
            this.strokeState = 1;
        }
    }

    @Override // java.awt.Graphics2D
    public void addRenderingHints(Map<?, ?> map) {
        this.hints.putAll(map);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void clearRect(int i, int i2, int i3, int i4) {
        RectF rectF = new RectF(i, i2, i + i3, i2 + i4);
        android.graphics.Paint paint = new android.graphics.Paint();
        paint.setColor(this.bgColor.getRGB());
        this.canvas.drawRect(rectF, paint);
    }

    @Override // java.awt.Graphics2D
    public void clip(Shape shape) {
        setCanvasClip(shape);
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
        clip(new Rectangle(0, 0, i3, i4));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.recycleBitmap) {
            BitmapUtils.recycle(this.bitmap);
            this.bitmap = null;
        }
        RenderingHints renderingHints = this.hints;
        if (renderingHints != null) {
            renderingHints.clear();
        }
        HBGraphics hBGraphics = this.hbGraphics;
        if (hBGraphics != null) {
            hBGraphics.close();
            this.hbGraphics = null;
        }
        this.isTexturePaint = false;
        this.transform = null;
        this.usrClip = null;
        this.paint = null;
        this.imagePaint = null;
        this.stroke = null;
        this.fgColor = null;
        this.bgColor = null;
        this.canvas = null;
        this.font = null;
        this.hints = null;
        this.bridge = null;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void copyArea(int i, int i2, int i3, int i4, int i5, int i6) {
        JLog.m41642e(TAG, "copyArea empty", new Object[0]);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Graphics create() {
        AndroidGraphics2D androidGraphics2D = new AndroidGraphics2D(this.bitmap);
        androidGraphics2D.setTransform(getTransform());
        androidGraphics2D.setClip(getClip());
        androidGraphics2D.hbGraphics.copy(this.hbGraphics);
        androidGraphics2D.paint = new TextPaint(this.paint);
        androidGraphics2D.imagePaint = new android.graphics.Paint(this.imagePaint);
        androidGraphics2D.isTexturePaint = this.isTexturePaint;
        androidGraphics2D.composite = this.composite;
        androidGraphics2D.awtPaint = this.awtPaint;
        androidGraphics2D.bgColor = this.bgColor;
        androidGraphics2D.hints.add(this.hints);
        androidGraphics2D.stroke = this.stroke;
        androidGraphics2D.bridge = this.bridge;
        androidGraphics2D.fgColor = this.fgColor;
        androidGraphics2D.font = this.font;
        androidGraphics2D.alpha = this.alpha;
        androidGraphics2D.scaleX = this.scaleX;
        return androidGraphics2D;
    }

    public StaticLayout createStaticLayout(CharSequence charSequence, float f, float f2) {
        this.paint.setStyle(Paint.Style.FILL);
        return new StaticLayout(charSequence, this.paint, (int) Math.ceil(Layout.getDesiredWidth(charSequence, this.paint)), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void dispose() {
        if (this.bridge != null && BitmapUtils.isValid(this.bitmap)) {
            this.bridge.setData(this.bitmap);
        }
        close();
    }

    @Override // java.awt.Graphics2D
    public void draw(Shape shape) {
        if (drawTexturePaint(shape)) {
            return;
        }
        Path androidPath = PathUtils.toAndroidPath(shape);
        this.paint.setStyle(Paint.Style.STROKE);
        this.canvas.drawPath(androidPath, this.paint);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawArc(int i, int i2, int i3, int i4, int i5, int i6) {
        this.paint.setStyle(Paint.Style.STROKE);
        this.canvas.drawArc(new RectF(i, i2, i + i3, i2 + i4), i5, i6, true, this.paint);
    }

    @Override // java.awt.Graphics2D
    public void drawGlyphVector(GlyphVector glyphVector, float f, float f2) {
        if (!(glyphVector instanceof AndroidGlyphVector)) {
            JLog.m41642e(TAG, "Can't draw GlyphVector:%s", glyphVector.toString());
            return;
        }
        if (glyphVector.getNumGlyphs() <= 0) {
            return;
        }
        AndroidGlyphVector androidGlyphVector = (AndroidGlyphVector) glyphVector;
        float[] glyphPositions = androidGlyphVector.getGlyphPositions(0, 1, null);
        CharacterIterator ci = androidGlyphVector.getCi();
        if (ci != null) {
            if (ci instanceof AttributedCharacterIterator) {
                drawString(androidGlyphVector, (AttributedCharacterIterator) ci, f + glyphPositions[0], f2 + glyphPositions[1]);
                return;
            } else {
                drawString(BridgeUtils.convertCharacterIterator(ci), f + glyphPositions[0], f2 + glyphPositions[1]);
                return;
            }
        }
        if (androidGlyphVector.getText() != null) {
            drawString(androidGlyphVector.getText(), f + glyphPositions[0], f2 + glyphPositions[1]);
        } else {
            this.hbGraphics.drawGlyphVector(this, androidGlyphVector, f, f2);
        }
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Color color, ImageObserver imageObserver) {
        return false;
    }

    public void drawLayout(StaticLayout staticLayout, float f, float f2) {
        this.canvas.save();
        this.canvas.translate(f, f2);
        this.canvas.translate(0.0f, staticLayout.getLineAscent(0));
        staticLayout.draw(this.canvas);
        this.canvas.restore();
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawLine(int i, int i2, int i3, int i4) {
        this.paint.setStyle(Paint.Style.STROKE);
        this.canvas.drawLine(i, i2, i3, i4, this.paint);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawOval(int i, int i2, int i3, int i4) {
        this.paint.setStyle(Paint.Style.STROKE);
        this.canvas.drawOval(new RectF(i, i2, i + i3, i2 + i4), this.paint);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawPolygon(int[] iArr, int[] iArr2, int i) {
        this.paint.setStyle(Paint.Style.STROKE);
        int i2 = 0;
        while (true) {
            int i3 = i - 1;
            if (i2 >= i3) {
                drawLine(iArr[0], iArr2[0], iArr[i3], iArr2[i3]);
                return;
            }
            int i4 = iArr[i2];
            int i5 = iArr2[i2];
            i2++;
            drawLine(i4, i5, iArr[i2], iArr2[i2]);
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawPolyline(int[] iArr, int[] iArr2, int i) {
        this.paint.setStyle(Paint.Style.STROKE);
        int i2 = 0;
        while (i2 < i - 1) {
            int i3 = iArr[i2];
            int i4 = iArr2[i2];
            i2++;
            drawLine(i3, i4, iArr[i2], iArr2[i2]);
        }
    }

    @Override // java.awt.Graphics2D
    public void drawRenderableImage(RenderableImage renderableImage, AffineTransform affineTransform) {
    }

    @Override // java.awt.Graphics2D
    public void drawRenderedImage(RenderedImage renderedImage, final AffineTransform affineTransform) {
        drawAndroidImage(renderedImage, new RenderAction() { // from class: com.trans.android.d
            @Override // com.trans.android.AndroidGraphics2D.RenderAction
            public final void execute(Bitmap bitmap) {
                AndroidGraphics2D.this.lambda$drawRenderedImage$5(affineTransform, bitmap);
            }
        });
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawRoundRect(int i, int i2, int i3, int i4, int i5, int i6) {
        this.paint.setStyle(Paint.Style.STROKE);
        this.canvas.drawRoundRect(new RectF(i, i2, i + i3, i2 + i4), i5, i6, this.paint);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void drawString(AttributedCharacterIterator attributedCharacterIterator, int i, int i2) {
        drawString(attributedCharacterIterator, i, i2);
    }

    public int drawStringWithoutHBGraphics(AttributedCharacterIterator attributedCharacterIterator, float f, float f2) {
        String convertCharacterIterator = BridgeUtils.convertCharacterIterator(attributedCharacterIterator);
        List<AttributedData> collectAttributeData = BridgeUtils.collectAttributeData(attributedCharacterIterator, convertCharacterIterator);
        SpannableString spannableString = new SpannableString(convertCharacterIterator);
        BridgeUtils.setSpannableWithAttributeData(spannableString, collectAttributeData);
        setFont(BridgeUtils.getFontFromAttributedData(collectAttributeData, this.font));
        StaticLayout createStaticLayout = createStaticLayout(spannableString, f, f2);
        drawLayout(createStaticLayout, f, f2);
        return createStaticLayout.getWidth();
    }

    @Override // java.awt.Graphics2D
    public void fill(Shape shape) {
        if (drawTexturePaint(shape)) {
            return;
        }
        Path androidPath = PathUtils.toAndroidPath(shape);
        this.paint.setStyle(Paint.Style.FILL);
        this.canvas.drawPath(androidPath, this.paint);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillArc(int i, int i2, int i3, int i4, int i5, int i6) {
        this.paint.setStyle(Paint.Style.FILL);
        this.canvas.drawArc(new RectF(i, i2, i + i3, i2 + i4), i5, i6, true, this.paint);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillOval(int i, int i2, int i3, int i4) {
        this.paint.setStyle(Paint.Style.FILL);
        this.canvas.drawOval(new RectF(i, i2, i + i3, i2 + i4), this.paint);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillPolygon(int[] iArr, int[] iArr2, int i) {
        this.paint.setStyle(Paint.Style.FILL);
        Path path = new Path();
        path.reset();
        path.moveTo(iArr[0], iArr2[0]);
        for (int i2 = 0; i2 < i; i2++) {
            path.lineTo(iArr[i2], iArr2[i2]);
        }
        path.moveTo(iArr[0], iArr2[0]);
        this.canvas.drawPath(path, this.paint);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillRect(int i, int i2, int i3, int i4) {
        this.paint.setStyle(Paint.Style.FILL);
        this.canvas.drawRect(new RectF(i, i2, i + i3, i2 + i4), this.paint);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void fillRoundRect(int i, int i2, int i3, int i4, int i5, int i6) {
        this.paint.setStyle(Paint.Style.FILL);
        this.canvas.drawRoundRect(new RectF(i, i2, i + i3, i2 + i4), i5, i6, this.paint);
    }

    @Override // java.awt.Graphics
    public void finalize() {
        super.finalize();
    }

    public android.graphics.Paint getAndroidTextPaint() {
        return this.paint;
    }

    @Override // java.awt.Graphics2D
    public Color getBackground() {
        return this.bgColor;
    }

    public Canvas getCanvas() {
        return this.canvas;
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
        return this.fgColor;
    }

    @Override // java.awt.Graphics2D
    public Composite getComposite() {
        return this.composite;
    }

    @Override // java.awt.Graphics2D
    public GraphicsConfiguration getDeviceConfiguration() {
        return null;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public Font getFont() {
        return this.font;
    }

    @Override // java.awt.Graphics
    public FontMetrics getFontMetrics() {
        return super.getFontMetrics();
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

    public Matrix getMatrix() {
        return new Matrix(this.canvas.getMatrix());
    }

    @Override // java.awt.Graphics2D
    public java.awt.Paint getPaint() {
        return this.awtPaint;
    }

    @Override // java.awt.Graphics2D
    public Object getRenderingHint(RenderingHints.Key key) {
        return this.hints.get(key);
    }

    @Override // java.awt.Graphics2D
    public RenderingHints getRenderingHints() {
        return this.hints;
    }

    public double getScaleX() {
        if (this.scaleX == 0.0d) {
            double scaleX = MatrixUtils.getScaleX(this.transform);
            this.scaleX = scaleX;
            if (scaleX == 0.0d) {
                JLog.m41642e(TAG, "Graphics scale is zero", new Object[0]);
                this.scaleX = 1.0d;
            }
        }
        return this.scaleX;
    }

    public RectF getSize() {
        return new RectF(0.0f, 0.0f, this.canvas.getWidth(), this.canvas.getHeight());
    }

    @Override // java.awt.Graphics2D
    public Stroke getStroke() {
        return this.stroke;
    }

    @Override // java.awt.Graphics2D
    public AffineTransform getTransform() {
        return new AffineTransform(this.transform);
    }

    @Override // java.awt.Graphics2D
    public boolean hit(Rectangle rectangle, Shape shape, boolean z) {
        return true;
    }

    public void initPaint() {
        TextPaint create = PaintFactory.create(this.font);
        this.paint = create;
        create.setColor(this.fgColor.getRGB());
        this.imagePaint = PaintFactory.createImagePaint();
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
        throw new UnsupportedOperationException("Method not decompiled: com.trans.android.AndroidGraphics2D.intersectByArea(java.awt.Shape, java.awt.Shape, boolean, boolean):java.awt.Shape");
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

    public void invalidateTransform() {
        int type = this.transform.getType();
        if (type == 0) {
            this.transformState = 0;
            this.transY = 0;
            this.transX = 0;
            return;
        }
        if (type != 1) {
            if ((type & 120) == 0) {
                this.transformState = 3;
                this.transY = 0;
                this.transX = 0;
                return;
            } else {
                this.transformState = 4;
                this.transY = 0;
                this.transX = 0;
                return;
            }
        }
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
        updateCanvas();
    }

    @Override // java.awt.Graphics2D
    public void scale(double d, double d2) {
        this.transform.scale(d, d2);
        invalidateTransform();
        updateCanvas();
        this.scaleX *= d;
    }

    public void setAntiAlias(boolean z) {
        this.paint.setAntiAlias(z);
        this.imagePaint.setAntiAlias(z);
        this.hbGraphics.setAntiAlias(z);
    }

    @Override // java.awt.Graphics2D
    public void setBackground(Color color) {
        this.bgColor = color;
    }

    public void setBridge(ImageBridge imageBridge) {
        this.bridge = imageBridge;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setClip(int i, int i2, int i3, int i4) {
        setClip(new Rectangle(i, i2, i3, i4));
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setColor(Color color) {
        int alphaFromComposite;
        if (color == null || color == this.awtPaint) {
            return;
        }
        this.paint.setShader(null);
        this.isTexturePaint = false;
        this.fgColor = color;
        this.awtPaint = color;
        this.paint.setColor(color.getRGB());
        this.alpha = color.getAlpha();
        Composite composite = this.composite;
        if (!(composite instanceof AlphaComposite) || this.alpha <= (alphaFromComposite = ColorUtils.getAlphaFromComposite(composite))) {
            return;
        }
        this.alpha = alphaFromComposite;
        this.paint.setAlpha(alphaFromComposite);
    }

    public void setColorTable(int[] iArr, int i) {
        this.hbGraphics.setColorTable(iArr, i);
    }

    @Override // java.awt.Graphics2D
    public void setComposite(Composite composite) {
        if (this.composite != composite) {
            this.composite = composite;
            Xfermode convertCompositeToXfermode = XfermodeUtils.convertCompositeToXfermode(composite);
            this.imagePaint.setXfermode(convertCompositeToXfermode);
            this.paint.setXfermode(convertCompositeToXfermode);
            int alphaFromComposite = ColorUtils.getAlphaFromComposite(composite);
            this.alpha = alphaFromComposite;
            if (composite instanceof XORComposite) {
                Color xorColor = ((XORComposite) composite).getXorColor();
                this.imagePaint.setColor(xorColor.getRGB());
                setColor(xorColor);
            } else {
                this.paint.setAlpha(alphaFromComposite);
                this.imagePaint.setColor(Color.BLACK.getRGB());
                this.imagePaint.setAlpha(this.alpha);
            }
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setFont(Font font) {
        if (font == null || font == this.font) {
            return;
        }
        this.font = font;
        this.paint.setTextSize(font.getSize2D());
        this.paint.setTypeface(FontManager.getTypeface(font));
    }

    public void setFontProvider(FontProvider fontProvider) {
        FontManager.setFontProvider(fontProvider, false);
    }

    public void setImageColorFilter(ColorMatrix colorMatrix) {
        if (colorMatrix == null) {
            this.imagePaint.setColorFilter(null);
        } else {
            this.imagePaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        }
    }

    @Override // java.awt.Graphics2D
    public void setPaint(java.awt.Paint paint) {
        if (paint instanceof Color) {
            setColor((Color) paint);
            return;
        }
        if (paint == null || paint == this.awtPaint) {
            return;
        }
        this.awtPaint = paint;
        this.paint.setShader(null);
        this.paint.setAlpha(this.alpha);
        this.isTexturePaint = false;
        if (paint instanceof IAndroidGradient) {
            setPaintShader(((IAndroidGradient) this.awtPaint).getShader());
            return;
        }
        if (POIUtils.isPOIPaint(paint)) {
            setPaintShader(POIUtils.getShader(this.awtPaint));
            return;
        }
        if (BatikUtils.isBatikPaint(paint)) {
            setPaintShader(BatikUtils.getShader(this.awtPaint));
        } else if (paint instanceof TexturePaint) {
            this.isTexturePaint = true;
        } else {
            JLog.m41642e(TAG, "Error param : %s", paint);
        }
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setPaintMode() {
        setComposite(AlphaComposite.SrcOver);
    }

    public void setRecycleBitmap(boolean z) {
        this.recycleBitmap = z;
    }

    @Override // java.awt.Graphics2D
    public void setRenderingHint(RenderingHints.Key key, Object obj) {
        if (!key.isCompatibleValue(obj)) {
            throw new IllegalArgumentException(obj + " is not compatible with " + key);
        }
        if (key instanceof SunHints.Key) {
            SunHints.Key key2 = (SunHints.Key) key;
            int intValue = key2 == SunHints.KEY_TEXT_ANTIALIAS_LCD_CONTRAST ? ((Integer) obj).intValue() : ((SunHints.Value) obj).getIndex();
            int index = key2.getIndex();
            if (index == 0) {
                if (this.renderHint != intValue) {
                    this.renderHint = intValue;
                    if (this.interpolationHint == -1) {
                        this.interpolationType = intValue != 2 ? 1 : 2;
                    }
                }
            } else if (index == 1) {
                boolean z = this.antialiasHint != intValue;
                this.antialiasHint = intValue;
                if (z && this.strokeState != 3) {
                    validateBasicStroke((BasicStroke) this.stroke);
                }
            } else if (index == 2) {
                this.textAntialiasHint = intValue;
            } else if (index == 3) {
                this.fractionalMetricsHint = intValue;
            } else if (index == 5) {
                this.interpolationHint = intValue;
                this.interpolationType = intValue != 1 ? intValue != 2 ? 1 : 3 : 2;
            } else if (index == 100) {
                this.lcdTextContrast = intValue;
            } else if (index == 8) {
                this.strokeHint = intValue;
            } else if (index == 9) {
                this.resolutionVariantHint = intValue;
            }
        }
        if (this.hints == null) {
            this.hints = makeHints(null);
        }
        this.hints.put(key, obj);
    }

    @Override // java.awt.Graphics2D
    public void setRenderingHints(Map<?, ?> map) {
        RenderingHints renderingHints = new RenderingHints(null);
        this.hints = renderingHints;
        renderingHints.putAll(map);
    }

    @Override // java.awt.Graphics2D
    public void setStroke(Stroke stroke) {
        this.stroke = stroke;
        BasicStroke basicStroke = (BasicStroke) stroke;
        Paint.Cap cap = Paint.Cap.BUTT;
        int endCap = basicStroke.getEndCap();
        if (endCap == 0) {
            cap = Paint.Cap.BUTT;
        } else if (endCap == 1) {
            cap = Paint.Cap.ROUND;
        } else if (endCap == 2) {
            cap = Paint.Cap.SQUARE;
        }
        this.paint.setStrokeCap(cap);
        Paint.Join join = Paint.Join.MITER;
        int lineJoin = basicStroke.getLineJoin();
        if (lineJoin == 0) {
            join = Paint.Join.MITER;
        } else if (lineJoin == 1) {
            join = Paint.Join.ROUND;
        } else if (lineJoin == 2) {
            join = Paint.Join.BEVEL;
        }
        float[] dashArray = basicStroke.getDashArray();
        if (!ArrayUtils.isNullOrEmpty(dashArray)) {
            this.paint.setPathEffect(new DashPathEffect(dashArray, basicStroke.getDashPhase()));
        } else if (this.paint.getPathEffect() != null) {
            this.paint.setPathEffect(null);
        }
        this.paint.setStrokeJoin(join);
        this.paint.setStrokeMiter(basicStroke.getMiterLimit());
        this.paint.setStrokeWidth(basicStroke.getLineWidth());
    }

    @Override // java.awt.Graphics2D
    public void setTransform(AffineTransform affineTransform) {
        this.transform.setTransform(affineTransform);
        invalidateTransform();
        updateCanvas();
        this.scaleX = 0.0d;
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setXORMode(Color color) {
        if (color == null) {
            throw new IllegalArgumentException("null XORColor");
        }
        setComposite(new XORComposite(color, new NullSurfaceData()));
    }

    @Override // java.awt.Graphics2D
    public void shear(double d, double d2) {
        this.transform.shear(d, d2);
        invalidateTransform();
        updateCanvas();
    }

    @Override // java.awt.Graphics
    public String toString() {
        return getClass().getName() + "@" + Integer.toHexString(hashCode());
    }

    @Override // java.awt.Graphics2D
    public void transform(AffineTransform affineTransform) {
        this.transform.concatenate(affineTransform);
        invalidateTransform();
        updateCanvas();
        this.scaleX = 0.0d;
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

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void translate(int i, int i2) {
        this.transform.translate(i, i2);
        if (this.transformState <= 1) {
            int i3 = this.transX + i;
            this.transX = i3;
            int i4 = this.transY + i2;
            this.transY = i4;
            this.transformState = (i4 | i3) == 0 ? 0 : 1;
        } else {
            invalidateTransform();
        }
        updateCanvas();
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

    public void validateCompClip() {
        if (this.usrClip == null) {
            this.clipState = 0;
        } else {
            this.clipState = 1;
        }
    }

    private boolean drawStringWithHBGraphics(String str, float f, float f2) {
        return this.hbGraphics.drawString(this, str, f, f2);
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, ImageObserver imageObserver) {
        return false;
    }

    @Override // java.awt.Graphics2D
    public void drawString(AttributedCharacterIterator attributedCharacterIterator, float f, float f2) {
        String convertCharacterIterator = BridgeUtils.convertCharacterIterator(attributedCharacterIterator);
        List<AttributedData> collectAttributeData = BridgeUtils.collectAttributeData(attributedCharacterIterator, convertCharacterIterator);
        if (drawStringWithHBGraphics(convertCharacterIterator, collectAttributeData, f, f2)) {
            return;
        }
        SpannableString spannableString = new SpannableString(convertCharacterIterator);
        BridgeUtils.setSpannableWithAttributeData(spannableString, collectAttributeData);
        setFont(BridgeUtils.getFontFromAttributedData(collectAttributeData, this.font));
        StaticLayout createStaticLayout = createStaticLayout(spannableString, f, f2);
        JLog.m41639d(TAG, "text: %s, font: %s(%.2f), x: %.2f, y: %.2f", convertCharacterIterator, this.font.getName(), Float.valueOf(this.font.getSize2D()), Float.valueOf(f), Float.valueOf(f2));
        drawLayout(createStaticLayout, f, f2);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public FontMetrics getFontMetrics(Font font) {
        return new AndroidFontMetrics(font);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public void setClip(Shape shape) {
        this.usrClip = transformShape(shape);
        validateCompClip();
        restoreCanvas();
        setCanvasClip(shape);
    }

    @Override // java.awt.Graphics2D, java.awt.Graphics
    public boolean drawImage(Image image, final int i, final int i2, ImageObserver imageObserver) {
        return drawAndroidImage(image, new RenderAction() { // from class: com.trans.android.c
            @Override // com.trans.android.AndroidGraphics2D.RenderAction
            public final void execute(Bitmap bitmap) {
                AndroidGraphics2D.this.lambda$drawImage$1(i, i2, bitmap);
            }
        });
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

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, final int i, final int i2, final int i3, final int i4, ImageObserver imageObserver) {
        return drawAndroidImage(image, new RenderAction() { // from class: com.trans.android.g
            @Override // com.trans.android.AndroidGraphics2D.RenderAction
            public final void execute(Bitmap bitmap) {
                AndroidGraphics2D.this.lambda$drawImage$2(i, i2, i3, i4, bitmap);
            }
        });
    }

    @Override // java.awt.Graphics2D
    public void rotate(double d, double d2, double d3) {
        this.transform.rotate(d, d2, d3);
        invalidateTransform();
        updateCanvas();
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, final int i, final int i2, final Color color, ImageObserver imageObserver) {
        return drawAndroidImage(image, new RenderAction() { // from class: com.trans.android.a
            @Override // com.trans.android.AndroidGraphics2D.RenderAction
            public final void execute(Bitmap bitmap) {
                AndroidGraphics2D.this.lambda$drawImage$3(color, i, i2, bitmap);
            }
        });
    }

    @Override // java.awt.Graphics
    public boolean drawImage(Image image, final int i, final int i2, final int i3, final int i4, final Color color, ImageObserver imageObserver) {
        return drawAndroidImage(image, new RenderAction() { // from class: com.trans.android.b
            @Override // com.trans.android.AndroidGraphics2D.RenderAction
            public final void execute(Bitmap bitmap) {
                AndroidGraphics2D.this.lambda$drawImage$4(color, i, i2, i3, i4, bitmap);
            }
        });
    }

    @Override // java.awt.Graphics2D
    public void drawImage(BufferedImage bufferedImage, BufferedImageOp bufferedImageOp, final int i, final int i2) {
        drawAndroidImage(bufferedImage, new RenderAction() { // from class: com.trans.android.e
            @Override // com.trans.android.AndroidGraphics2D.RenderAction
            public final void execute(Bitmap bitmap) {
                AndroidGraphics2D.this.lambda$drawImage$6(i, i2, bitmap);
            }
        });
    }

    @Override // java.awt.Graphics2D
    public boolean drawImage(Image image, final AffineTransform affineTransform, ImageObserver imageObserver) {
        return drawAndroidImage(image, new RenderAction() { // from class: com.trans.android.f
            @Override // com.trans.android.AndroidGraphics2D.RenderAction
            public final void execute(Bitmap bitmap) {
                AndroidGraphics2D.this.lambda$drawImage$7(affineTransform, bitmap);
            }
        });
    }

    @Override // java.awt.Graphics2D
    public void translate(double d, double d2) {
        this.transform.translate(d, d2);
        invalidateTransform();
        updateCanvas();
    }

    public void drawString(AndroidGlyphVector androidGlyphVector, AttributedCharacterIterator attributedCharacterIterator, float f, float f2) {
        String convertCharacterIterator = BridgeUtils.convertCharacterIterator(attributedCharacterIterator);
        List<AttributedData> collectAttributeData = BridgeUtils.collectAttributeData(attributedCharacterIterator, convertCharacterIterator, new Predicate() { // from class: com.sunia.HTREnginev2.pa
            @Override // java.backport.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$drawString$0;
                lambda$drawString$0 = AndroidGraphics2D.lambda$drawString$0((AttributedCharacterIterator.Attribute) obj);
                return lambda$drawString$0;
            }
        });
        Font fontFromAttributedData = BridgeUtils.getFontFromAttributedData(collectAttributeData, androidGlyphVector.getFont());
        for (AttributedData attributedData : collectAttributeData) {
            attributedData.addAttribute(TextAttribute.FAMILY, fontFromAttributedData.getFamily());
            attributedData.addAttribute(TextAttribute.SIZE, Float.valueOf(fontFromAttributedData.getSize2D()));
        }
        setFont(fontFromAttributedData);
        if (drawStringWithHBGraphics(convertCharacterIterator, collectAttributeData, f, f2)) {
            return;
        }
        SpannableString spannableString = new SpannableString(convertCharacterIterator);
        BridgeUtils.setSpannableWithAttributeData(spannableString, collectAttributeData);
        StaticLayout createStaticLayout = createStaticLayout(spannableString, f, f2);
        JLog.m41639d(TAG, "text: %s, font: %s(%.2f), x: %.2f, y: %.2f", convertCharacterIterator, fontFromAttributedData.getName(), Float.valueOf(fontFromAttributedData.getSize2D()), Float.valueOf(f), Float.valueOf(f2));
        drawLayout(createStaticLayout, f, f2);
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
    public void drawString(String str, int i, int i2) {
        drawString(str, i, i2);
    }

    @Override // java.awt.Graphics2D
    public void drawString(String str, float f, float f2) {
        if (drawStringWithHBGraphics(str, f, f2)) {
            return;
        }
        this.paint.setStyle(Paint.Style.FILL);
        this.canvas.drawText(str, f, f2, this.paint);
    }
}
