package org.apache.poi.sl.draw;

import java.awt.AlphaComposite;
import java.awt.Graphics2D;
import java.awt.PaintContext;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.TexturePaint;
import java.awt.geom.AffineTransform;
import java.awt.geom.Dimension2D;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import org.apache.poi.sl.usermodel.Insets2D;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.util.Dimension2DDouble;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class DrawTexturePaint extends TexturePaint {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Insets2D INSETS_EMPTY = new Insets2D(0.0d, 0.0d, 0.0d, 0.0d);
    private final PaintStyle.TexturePaint fill;
    private final double flipX;
    private final double flipY;
    private final ImageRenderer imgRdr;
    private final boolean isBitmapSrc;
    private final Shape shape;

    /* renamed from: org.apache.poi.sl.draw.DrawTexturePaint$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196121 {

        /* renamed from: $SwitchMap$org$apache$poi$sl$usermodel$PaintStyle$TextureAlignment */
        static final /* synthetic */ int[] f111475xa863ac38;

        static {
            int[] iArr = new int[PaintStyle.TextureAlignment.values().length];
            f111475xa863ac38 = iArr;
            try {
                iArr[PaintStyle.TextureAlignment.BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111475xa863ac38[PaintStyle.TextureAlignment.BOTTOM_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f111475xa863ac38[PaintStyle.TextureAlignment.BOTTOM_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f111475xa863ac38[PaintStyle.TextureAlignment.CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f111475xa863ac38[PaintStyle.TextureAlignment.LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f111475xa863ac38[PaintStyle.TextureAlignment.RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f111475xa863ac38[PaintStyle.TextureAlignment.TOP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f111475xa863ac38[PaintStyle.TextureAlignment.TOP_LEFT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f111475xa863ac38[PaintStyle.TextureAlignment.TOP_RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public DrawTexturePaint(ImageRenderer imageRenderer, BufferedImage bufferedImage, Shape shape, PaintStyle.TexturePaint texturePaint, double d, double d2, boolean z) {
        super(bufferedImage, new Rectangle2D.Double(0.0d, 0.0d, bufferedImage.getWidth(), bufferedImage.getHeight()));
        this.imgRdr = imageRenderer;
        this.fill = texturePaint;
        this.shape = shape;
        this.flipX = d;
        this.flipY = d2;
        this.isBitmapSrc = z;
    }

    @Override // java.awt.TexturePaint, java.awt.Paint
    public PaintContext createContext(ColorModel colorModel, Rectangle rectangle, Rectangle2D rectangle2D, AffineTransform affineTransform, RenderingHints renderingHints) {
        Rectangle2D rectangle2D2;
        Dimension2DDouble dimension2DDouble = new Dimension2DDouble();
        if (this.fill.isRotatedWithShape() || this.shape == null) {
            rectangle2D2 = rectangle2D;
        } else {
            AffineTransform affineTransform2 = new AffineTransform(affineTransform);
            affineTransform2.preConcatenate(AffineTransform.getTranslateInstance(-affineTransform2.getTranslateX(), -affineTransform2.getTranslateY()));
            Point2D.Double r2 = new Point2D.Double(1.0d, 0.0d);
            Point2D transform = affineTransform2.transform(r2, r2);
            double atan2 = Math.atan2(transform.getY(), transform.getX());
            if (atan2 != 0.0d) {
                affineTransform.rotate(-atan2, rectangle2D.getCenterX(), rectangle2D.getCenterY());
            }
            rectangle2D2 = AffineTransform.getRotateInstance(atan2, rectangle2D.getCenterX(), rectangle2D.getCenterY()).createTransformedShape(this.shape).getBounds2D();
        }
        dimension2DDouble.setSize(rectangle2D2.getWidth(), rectangle2D2.getHeight());
        affineTransform.translate(rectangle2D2.getX(), rectangle2D2.getY());
        BufferedImage image = getImage(rectangle2D2);
        if (this.fill.getStretch() != null) {
            return new TexturePaint(image, new Rectangle2D.Double(0.0d, 0.0d, image.getWidth(), image.getHeight())).createContext(colorModel, rectangle, rectangle2D2, affineTransform, renderingHints);
        }
        if (this.fill.getScale() == null) {
            return super.createContext(colorModel, rectangle, rectangle2D, affineTransform, renderingHints);
        }
        return new TexturePaint(image, new Rectangle2D.Double(0.0d, 0.0d, image.getWidth(), image.getHeight())).createContext(colorModel, rectangle, rectangle2D, getTiledInstance(rectangle2D2, (AffineTransform) affineTransform.clone()), renderingHints);
    }

    public Shape getAwtShape() {
        return this.shape;
    }

    public PaintStyle.TexturePaint getFill() {
        return this.fill;
    }

    public BufferedImage getImage(Rectangle2D rectangle2D) {
        BufferedImage image = super.getImage();
        Insets2D insets = this.fill.getInsets();
        Insets2D stretch = this.fill.getStretch();
        if (((insets == null || INSETS_EMPTY.equals(insets)) && stretch == null) || rectangle2D == null || rectangle2D.isEmpty()) {
            return image;
        }
        if (insets != null && !INSETS_EMPTY.equals(insets)) {
            double width = image.getWidth();
            double height = image.getHeight();
            image = image.getSubimage((int) ((Math.max(insets.left, 0.0d) / 100000.0d) * width), (int) ((Math.max(insets.top, 0.0d) / 100000.0d) * height), (int) ((((100000.0d - Math.max(insets.left, 0.0d)) - Math.max(insets.right, 0.0d)) / 100000.0d) * width), (int) ((((100000.0d - Math.max(insets.top, 0.0d)) - Math.max(insets.bottom, 0.0d)) / 100000.0d) * height));
            int max = (int) ((Math.max(-insets.top, 0.0d) / 100000.0d) * height);
            int max2 = (int) ((Math.max(-insets.left, 0.0d) / 100000.0d) * width);
            int max3 = (int) ((Math.max(-insets.bottom, 0.0d) / 100000.0d) * height);
            int max4 = (int) ((Math.max(-insets.right, 0.0d) / 100000.0d) * width);
            if (max > 0 || max2 > 0 || max3 > 0 || max4 > 0) {
                int[] iArr = new int[image.getWidth() * image.getHeight()];
                image.getRGB(0, 0, image.getWidth(), image.getHeight(), iArr, 0, image.getWidth());
                BufferedImage bufferedImage = new BufferedImage(image.getWidth() + max2 + max4, image.getHeight() + max + max3, image.getType());
                bufferedImage.setRGB(max2, max, image.getWidth(), image.getHeight(), iArr, 0, image.getWidth());
                image = bufferedImage;
            }
        }
        if (stretch == null) {
            return image;
        }
        Rectangle2D.Double r11 = new Rectangle2D.Double(0.0d, 0.0d, image.getWidth(), image.getHeight());
        Rectangle2D.Double r2 = new Rectangle2D.Double((stretch.left / 100000.0d) * rectangle2D.getWidth(), (stretch.top / 100000.0d) * rectangle2D.getHeight(), (((100000.0d - stretch.left) - stretch.right) / 100000.0d) * rectangle2D.getWidth(), (((100000.0d - stretch.top) - stretch.bottom) / 100000.0d) * rectangle2D.getHeight());
        BufferedImage bufferedImage2 = new BufferedImage((int) rectangle2D.getWidth(), (int) rectangle2D.getHeight(), 2);
        Graphics2D createGraphics = bufferedImage2.createGraphics();
        createGraphics.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        createGraphics.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
        createGraphics.setRenderingHint(RenderingHints.KEY_COLOR_RENDERING, RenderingHints.VALUE_COLOR_RENDER_SPEED);
        createGraphics.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BICUBIC);
        createGraphics.setRenderingHint(RenderingHints.KEY_FRACTIONALMETRICS, RenderingHints.VALUE_FRACTIONALMETRICS_ON);
        createGraphics.setComposite(AlphaComposite.Clear);
        createGraphics.fillRect(0, 0, bufferedImage2.getWidth(), bufferedImage2.getHeight());
        createGraphics.setComposite(AlphaComposite.SrcOver);
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.translate(r2.getCenterX(), r2.getCenterY());
        affineTransform.scale(r2.getWidth() / r11.getWidth(), r2.getHeight() / r11.getHeight());
        affineTransform.translate(-r11.getCenterX(), -r11.getCenterY());
        createGraphics.drawRenderedImage(image, affineTransform);
        createGraphics.dispose();
        return bufferedImage2;
    }

    public ImageRenderer getImageRenderer() {
        return this.imgRdr;
    }

    public AffineTransform getTiledInstance(Rectangle2D rectangle2D, AffineTransform affineTransform) {
        double d;
        double d2;
        double d3;
        BufferedImage image = getImage();
        Dimension2D scale = this.fill.getScale();
        double d4 = 0.0d;
        double width = (image.getWidth() * (scale.getWidth() == 0.0d ? 1.0d : scale.getWidth())) / this.flipX;
        double height = (image.getHeight() * (scale.getHeight() == 0.0d ? 1.0d : scale.getHeight())) / this.flipY;
        PaintStyle.TextureAlignment alignment = this.fill.getAlignment();
        double width2 = rectangle2D.getWidth();
        double height2 = rectangle2D.getHeight();
        int[] iArr = C196121.f111475xa863ac38;
        if (alignment == null) {
            alignment = PaintStyle.TextureAlignment.TOP_LEFT;
        }
        switch (iArr[alignment.ordinal()]) {
            case 1:
                d4 = (width2 - width) / 2.0d;
                d2 = height2 - height;
                break;
            case 2:
                d = height2 - height;
                d2 = d;
                break;
            case 3:
                d4 = width2 - width;
                d2 = height2 - height;
                break;
            case 4:
                d4 = (width2 - width) / 2.0d;
                d2 = (height2 - height) / 2.0d;
                break;
            case 5:
                d = (height2 - height) / 2.0d;
                d2 = d;
                break;
            case 6:
                d4 = width2 - width;
                d2 = (height2 - height) / 2.0d;
                break;
            case 7:
                d3 = (width2 - width) / 2.0d;
                d2 = 0.0d;
                d4 = d3;
                break;
            case 8:
            default:
                d2 = 0.0d;
                break;
            case 9:
                d3 = width2 - width;
                d2 = 0.0d;
                d4 = d3;
                break;
        }
        affineTransform.translate(d4, d2);
        Point2D offset = this.fill.getOffset();
        if (offset != null) {
            double max = Math.max((rectangle2D.getWidth() - offset.getX()) / image.getWidth(), (rectangle2D.getHeight() - offset.getY()) / image.getHeight());
            affineTransform.translate(offset.getX(), offset.getY());
            affineTransform.scale(max, max);
        } else {
            affineTransform.scale(scale.getWidth() / (this.isBitmapSrc ? this.flipX : 1.0d), scale.getHeight() / (this.isBitmapSrc ? this.flipY : 1.0d));
        }
        return affineTransform;
    }
}
