package java.awt.image;

import java.awt.RenderingHints;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;

/* loaded from: classes5.dex */
public interface RasterOp {
    WritableRaster createCompatibleDestRaster(Raster raster);

    WritableRaster filter(Raster raster, WritableRaster writableRaster);

    Rectangle2D getBounds2D(Raster raster);

    Point2D getPoint2D(Point2D point2D, Point2D point2D2);

    RenderingHints getRenderingHints();
}
