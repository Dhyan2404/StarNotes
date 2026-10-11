package org.apache.poi.convert.smtp;

import java.awt.Image;
import java.awt.geom.Rectangle2D;
import java.awt.image.ImageObserver;
import java.util.Objects;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.p114wp.draw.ImageCreator;
import org.apache.poi.p114wp.usermodel.IPicture;
import org.apache.poi.p114wp.usermodel.Position;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.util.RectUtils;

/* loaded from: classes12.dex */
public class SMTPPicture implements IPicture {
    private final Logger LOG = LogManager.getLogger(getClass());
    private Rectangle2D bounds;
    private byte[] content;
    private String contentType;
    private String name;

    public SMTPPicture(byte[] bArr, String str, String str2) {
        this.content = bArr;
        this.contentType = str;
        this.name = str2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public Rectangle2D getAnchor() {
        return this.bounds;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public String getContentType() {
        return this.contentType;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public <IMAGE extends Image> IMAGE getImage(ImageCreator<IMAGE> imageCreator) {
        ImageRenderer imageRenderer = imageCreator.getImageRenderer(this.contentType);
        if (!imageRenderer.canRender(this.contentType)) {
            return null;
        }
        try {
            imageRenderer.loadImage(this.content, this.contentType);
            Rectangle2D bounds = imageRenderer.getBounds();
            this.bounds = bounds;
            if (RectUtils.isEmptyImage(bounds)) {
                this.LOG.atError().log("Empty image bounds:{}", this.bounds);
                return null;
            }
            IMAGE createImage = imageCreator.createImage((int) this.bounds.getWidth(), (int) this.bounds.getHeight());
            imageCreator.getGraphics(createImage).drawImage(imageRenderer.getImage(), 0, 0, (ImageObserver) null);
            return createImage;
        } catch (Exception e) {
            this.LOG.atError().withThrowable(e).log();
            return null;
        }
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public String getName() {
        return this.name;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public Position getPosition() {
        return Position.NONE;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public int identifier() {
        long hashCode = Objects.hashCode(this.name) + (Objects.hashCode(this.contentType) * 37);
        return ((int) hashCode) ^ ((int) (hashCode >> 32));
    }
}
