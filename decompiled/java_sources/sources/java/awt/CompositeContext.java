package java.awt;

import java.awt.image.Raster;
import java.awt.image.WritableRaster;

/* loaded from: classes4.dex */
public interface CompositeContext {
    void compose(Raster raster, Raster raster2, WritableRaster writableRaster);

    void dispose();
}
