package java.awt;

import java.awt.image.ColorModel;
import java.awt.image.Raster;

/* loaded from: classes4.dex */
public interface PaintContext {
    void dispose();

    ColorModel getColorModel();

    Raster getRaster(int i, int i2, int i3, int i4);
}
