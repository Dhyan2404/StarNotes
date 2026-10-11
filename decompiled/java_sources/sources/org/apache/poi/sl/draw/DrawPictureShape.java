package org.apache.poi.sl.draw;

import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.Paint;
import java.awt.Shape;
import java.awt.geom.Rectangle2D;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.usermodel.PictureType;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.sl.draw.geom.Outline;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.sl.usermodel.PictureShape;
import org.apache.poi.sl.usermodel.RectAlign;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public class DrawPictureShape extends DrawSimpleShape {
    private static final Logger LOG = LogManager.getLogger((Class<?>) DrawPictureShape.class);

    /* renamed from: org.apache.poi.sl.draw.DrawPictureShape$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196041 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$RectAlign;

        static {
            int[] iArr = new int[RectAlign.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$RectAlign = iArr;
            try {
                iArr[RectAlign.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$RectAlign[RectAlign.TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$RectAlign[RectAlign.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$RectAlign[RectAlign.BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$RectAlign[RectAlign.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$RectAlign[RectAlign.BOTTOM_LEFT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$RectAlign[RectAlign.LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$RectAlign[RectAlign.TOP_LEFT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public DrawPictureShape(PictureShape<?, ?> pictureShape) {
        super(pictureShape);
    }

    private void clipPicture(Graphics2D graphics2D) {
        Iterator<Outline> it2 = computeOutlines(graphics2D).iterator();
        while (it2.hasNext()) {
            graphics2D.clip(it2.next().getOutline());
        }
    }

    public static ImageRenderer getImageRenderer(Graphics2D graphics2D, String str) {
        ImageRenderer imageRenderer;
        ImageRenderer imageRenderer2 = graphics2D != null ? (ImageRenderer) graphics2D.getRenderingHint(Drawable.IMAGE_RENDERER) : null;
        if (imageRenderer2 != null && imageRenderer2.canRender(str)) {
            return imageRenderer2;
        }
        BitmapImageRenderer bitmapImageRenderer = new BitmapImageRenderer();
        if (bitmapImageRenderer.canRender(str)) {
            return bitmapImageRenderer;
        }
        Iterator it2 = ServiceLoader.load(ImageRenderer.class, DrawPictureShape.class.getClassLoader()).iterator();
        while (true) {
            try {
                imageRenderer = (ImageRenderer) it2.next();
            } catch (NoSuchElementException unused) {
                LOG.atWarn().log("No suitable image renderer found for content-type '{}' - include poi-scratchpad (for wmf/emf) or poi-ooxml (for svg) jars - svgs/batik doesn't work on the module-path!", str);
                return bitmapImageRenderer;
            } catch (Exception | ServiceConfigurationError unused2) {
            }
            if (imageRenderer.canRender(str)) {
                return imageRenderer;
            }
        }
    }

    private Rectangle2D getRenderAnchor(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        double scaleX = graphics2D.getTransform().getScaleX();
        return new Rectangle2D.Double(0.0d, 0.0d, rectangle2D.getWidth() * scaleX, rectangle2D.getHeight() * scaleX);
    }

    @Override // org.apache.poi.sl.draw.DrawSimpleShape, org.apache.poi.sl.draw.DrawShape, org.apache.poi.sl.draw.Drawable
    public void draw(Graphics2D graphics2D) {
        if (disableDraw(graphics2D)) {
            return;
        }
        super.draw(graphics2D);
    }

    @Override // org.apache.poi.sl.draw.DrawShape, org.apache.poi.sl.draw.Drawable
    public void drawContent(Graphics2D graphics2D) {
        PictureShape<?, ?> shape = getShape();
        Rectangle2D anchor = DrawShape.getAnchor(graphics2D, shape);
        Insets clipping = shape.getClipping();
        PictureData[] pictureDataArr = {shape.getAlternativePictureData(), shape.getPictureData()};
        for (int i = 0; i < 2; i++) {
            PictureData pictureData = pictureDataArr[i];
            if (pictureData != null) {
                Shape clip = graphics2D.getClip();
                InputStream inputStream = null;
                try {
                    try {
                        inputStream = pictureData.getInputStream();
                        PictureType valueOf = PictureType.valueOf(FileMagic.valueOf(inputStream));
                        String contentType = valueOf == PictureType.UNKNOWN ? pictureData.getContentType() : valueOf.getContentType();
                        ImageRenderer imageRenderer = getImageRenderer(graphics2D, contentType);
                        if (imageRenderer.canRender(contentType)) {
                            clipPicture(graphics2D);
                            imageRenderer.loadImage(inputStream, contentType, getRenderAnchor(graphics2D, anchor));
                            imageRenderer.drawImage(graphics2D, anchor, clipping);
                            return;
                        }
                    } catch (IOException e) {
                        LOG.atError().withThrowable(e).log("image can't be loaded/rendered.");
                    }
                } finally {
                    graphics2D.setClip(clip);
                    IOUtils.closeQuietly(inputStream);
                }
            }
        }
    }

    @Override // org.apache.poi.sl.draw.DrawSimpleShape
    public Paint getFillPaint(Graphics2D graphics2D) {
        PaintStyle paint = getShape().getFillStyle().getPaint();
        if (paint == null || (paint instanceof PaintStyle.TexturePaint)) {
            return null;
        }
        return DrawFactory.getInstance(graphics2D).getPaint(getShape()).getPaint(graphics2D, paint);
    }

    public void resize() {
        PictureShape<?, ?> shape = getShape();
        Dimension imageDimension = shape.getPictureData().getImageDimension();
        Rectangle2D anchor = shape.getAnchor();
        shape.setAnchor(new Rectangle2D.Double(anchor.getX(), anchor.getY(), imageDimension.getWidth(), imageDimension.getHeight()));
    }

    @Override // org.apache.poi.sl.draw.DrawSimpleShape, org.apache.poi.sl.draw.DrawShape
    public PictureShape<?, ?> getShape() {
        return (PictureShape) this.shape;
    }

    public void resize(Rectangle2D rectangle2D) {
        resize(rectangle2D, RectAlign.CENTER);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void resize(Rectangle2D rectangle2D, RectAlign rectAlign) {
        double height;
        double d;
        double d2;
        PictureShape<?, ?> shape = getShape();
        Dimension imageDimension = shape.getPictureData().getImageDimension();
        if (imageDimension.width > 0 && imageDimension.height > 0) {
            double width = rectangle2D.getWidth();
            double height2 = rectangle2D.getHeight();
            int i = imageDimension.width;
            double d3 = width / i;
            int i2 = imageDimension.height;
            double d4 = height2 / i2;
            double d5 = 0.0d;
            if (d3 > d4) {
                double d6 = d4 * i;
                d = d6;
                d2 = height2;
                height = 0.0d;
                d5 = rectangle2D.getWidth() - d6;
            } else if (d4 > d3) {
                double d7 = i2 * d3;
                height = rectangle2D.getHeight() - d7;
                d = width;
                d2 = d7;
            } else {
                shape.setAnchor(rectangle2D);
                return;
            }
            double x = rectangle2D.getX();
            double y = rectangle2D.getY();
            switch (C196041.$SwitchMap$org$apache$poi$sl$usermodel$RectAlign[rectAlign.ordinal()]) {
                case 1:
                    d5 /= 2.0d;
                    x += d5;
                    break;
                case 2:
                    x += d5;
                    break;
                case 3:
                    x += d5;
                    height /= 2.0d;
                    y += height;
                    break;
                case 4:
                    x += d5;
                    y += height;
                    break;
                case 5:
                    d5 /= 2.0d;
                    x += d5;
                    y += height;
                    break;
                case 6:
                    y += height;
                    break;
                case 7:
                    height /= 2.0d;
                    y += height;
                    break;
                case 8:
                    break;
                default:
                    d5 /= 2.0d;
                    x += d5;
                    height /= 2.0d;
                    y += height;
                    break;
            }
            shape.setAnchor(new Rectangle2D.Double(x, y, d, d2));
            return;
        }
        shape.setAnchor(rectangle2D);
    }
}
