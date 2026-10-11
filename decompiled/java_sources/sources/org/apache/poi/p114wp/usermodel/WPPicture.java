package org.apache.poi.p114wp.usermodel;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.Insets;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.common.usermodel.PictureType;
import org.apache.poi.p114wp.draw.ImageCreator;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.sl.draw.geom.Outline;
import org.apache.poi.util.RecordFormatException;
import org.apache.poi.util.RectUtils;

/* loaded from: classes13.dex */
public abstract class WPPicture implements IPicture {
    protected final Logger LOG = LogManager.getLogger(getClass());

    private void applyOutLine(Graphics2D graphics2D, double d) {
        List<Outline> outlines = getOutlines();
        if (outlines == null) {
            return;
        }
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.scale(d, d);
        if (affineTransform.isIdentity()) {
            Iterator<Outline> it2 = outlines.iterator();
            while (it2.hasNext()) {
                graphics2D.clip(it2.next().getOutline());
            }
        } else {
            Iterator<Outline> it3 = outlines.iterator();
            while (it3.hasNext()) {
                graphics2D.clip(affineTransform.createTransformedShape(it3.next().getOutline()));
            }
        }
    }

    private void applyTransform(Graphics2D graphics2D, Rectangle2D rectangle2D, Rectangle2D rectangle2D2, double d) {
        if (RectUtils.isNullOrEmpty(rectangle2D)) {
            return;
        }
        applyOutLine(graphics2D, d);
        rotate(graphics2D, rectangle2D, rectangle2D2);
        flipHorizontal(graphics2D, rectangle2D);
        flipVertical(graphics2D, rectangle2D);
    }

    private void drawBackground(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        Color background = getBackground();
        if (background != null) {
            Color color = graphics2D.getColor();
            graphics2D.setColor(background);
            graphics2D.fill(rectangle2D);
            graphics2D.setColor(color);
        }
    }

    private void flipHorizontal(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        if (flipH()) {
            graphics2D.translate(rectangle2D.getX() + rectangle2D.getWidth(), rectangle2D.getY());
            graphics2D.scale(-1.0d, 1.0d);
            graphics2D.translate(-rectangle2D.getX(), -rectangle2D.getY());
        }
    }

    private void flipVertical(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        if (flipV()) {
            graphics2D.translate(rectangle2D.getX(), rectangle2D.getY() + rectangle2D.getHeight());
            graphics2D.scale(1.0d, -1.0d);
            graphics2D.translate(-rectangle2D.getX(), -rectangle2D.getY());
        }
    }

    private int getRecordId(String str) {
        if (str == null) {
            return -1;
        }
        Matcher matcher = Pattern.compile("^Undefined record of type: ([\\d]+) at").matcher(str);
        if (matcher.find()) {
            try {
                return (int) Long.parseLong(matcher.group(1));
            } catch (Exception e) {
                this.LOG.atError().withThrowable(e).log();
            }
        }
        return -1;
    }

    private void rotate(Graphics2D graphics2D, Rectangle2D rectangle2D, Rectangle2D rectangle2D2) {
        double rotation = getRotation();
        if (rotation != 0.0d) {
            graphics2D.rotate(Math.toRadians(rotation), rectangle2D.getCenterX(), rectangle2D.getCenterY());
            graphics2D.translate((rectangle2D.getWidth() - rectangle2D2.getWidth()) / 2.0d, (rectangle2D.getHeight() - rectangle2D2.getHeight()) / 2.0d);
        }
    }

    public abstract boolean flipH();

    public abstract boolean flipV();

    public Color getBackground() {
        return null;
    }

    public abstract Insets getClip();

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public <IMAGE extends Image> IMAGE getImage(ImageCreator<IMAGE> imageCreator) {
        return (IMAGE) getImage(imageCreator, getContentType());
    }

    public abstract InputStream getInputStream();

    public abstract Rectangle2D getOriginAnchor();

    public abstract List<Outline> getOutlines();

    public abstract double getRotation();

    public <IMAGE extends Image> IMAGE getImage(ImageCreator<IMAGE> imageCreator, String str) {
        Rectangle2D anchor = getAnchor();
        if (RectUtils.isEmptyImage(anchor)) {
            this.LOG.atError().log("Empty image[{}] anchor:{}", getName(), anchor);
            return null;
        }
        ImageRenderer imageRenderer = imageCreator.getImageRenderer(str);
        if (!imageRenderer.canRender(str)) {
            this.LOG.atError().log("{} can't render image[{}]: {}", imageRenderer.getClass().getName(), getName(), str);
            return null;
        }
        try {
            Rectangle2D originAnchor = getOriginAnchor();
            imageRenderer.loadImage(getInputStream(), str, new Rectangle2D.Double(0.0d, 0.0d, originAnchor.getWidth() * imageCreator.getScale(), originAnchor.getHeight() * imageCreator.getScale()));
            Rectangle2D bounds = imageRenderer.getBounds();
            double min = Math.min(Math.min(bounds.getWidth() / originAnchor.getWidth(), bounds.getHeight() / originAnchor.getHeight()), imageCreator.getScale());
            Rectangle2D.Double r3 = new Rectangle2D.Double(0.0d, 0.0d, anchor.getWidth() * min, anchor.getHeight() * min);
            Rectangle2D.Double r0 = new Rectangle2D.Double(0.0d, 0.0d, originAnchor.getWidth() * min, originAnchor.getHeight() * min);
            IMAGE createImage = imageCreator.createImage((int) r3.getWidth(), (int) r3.getHeight());
            Graphics2D graphics = imageCreator.getGraphics(createImage);
            drawBackground(graphics, r3);
            applyTransform(graphics, r3, r0, min);
            imageRenderer.drawImage(graphics, r0, getClip());
            return createImage;
        } catch (RecordFormatException e) {
            if (-1698247209 == getRecordId(e.getMessage())) {
                return (IMAGE) getImage(imageCreator, PictureType.WMF.contentType);
            }
            return null;
        } catch (Exception e2) {
            this.LOG.atError().withThrowable(e2).log();
            return null;
        }
    }
}
