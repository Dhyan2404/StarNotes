package org.apache.poi.sl.draw;

import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.geom.Dimension2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.util.Dimension2DDouble;

/* loaded from: classes12.dex */
public interface ImageRenderer {
    boolean canRender(String str);

    boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D);

    boolean drawImage(Graphics2D graphics2D, Rectangle2D rectangle2D, Insets insets);

    Rectangle2D getBounds();

    default String getCachedContentType() {
        return null;
    }

    default byte[] getCachedImage() {
        return null;
    }

    default Dimension2D getDimension() {
        Rectangle2D bounds = getBounds();
        return new Dimension2DDouble(Math.abs(bounds.getWidth()), Math.abs(bounds.getHeight()));
    }

    default GenericRecord getGenericRecord() {
        return null;
    }

    BufferedImage getImage();

    BufferedImage getImage(Dimension2D dimension2D);

    Rectangle2D getNativeBounds();

    void loadImage(InputStream inputStream, String str) throws IOException;

    void loadImage(byte[] bArr, String str) throws IOException;

    default void loadImage(byte[] bArr, String str, Rectangle2D rectangle2D) throws IOException {
        loadImage(bArr, str);
    }

    void setAlpha(double d);

    default void setCacheInput(boolean z) {
    }

    default void setDefaultCharset(Charset charset) {
    }

    default boolean useDeviceBounds() {
        return false;
    }

    default void loadImage(InputStream inputStream, String str, Rectangle2D rectangle2D) throws IOException {
        loadImage(inputStream, str);
    }
}
