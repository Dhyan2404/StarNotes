package org.apache.poi.p114wp.draw;

import java.awt.Graphics2D;
import java.awt.Image;
import org.apache.poi.sl.draw.ImageRenderer;

/* loaded from: classes13.dex */
public interface ImageCreator<IMAGE extends Image> {
    IMAGE createImage(int i, int i2);

    Graphics2D getGraphics(IMAGE image);

    ImageRenderer getImageRenderer(String str);

    float getScale();
}
