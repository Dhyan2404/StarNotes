package sun.java2d.pipe;

import java.awt.AlphaComposite;
import java.awt.CompositeContext;
import java.awt.PaintContext;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.util.Hashtable;
import sun.awt.image.BufImgSurfaceData;
import sun.java2d.SunGraphics2D;
import sun.java2d.SurfaceData;
import sun.java2d.loops.Blit;
import sun.java2d.loops.CompositeType;
import sun.java2d.loops.MaskBlit;

/* loaded from: classes16.dex */
public class GeneralCompositePipe implements CompositePipe {

    /* loaded from: classes16.dex */
    public class TileContext {
        CompositeContext compCtxt;
        ColorModel compModel;
        PaintContext paintCtxt;
        Object pipeState;
        SunGraphics2D sunG2D;

        public TileContext(SunGraphics2D sunGraphics2D, PaintContext paintContext, CompositeContext compositeContext, ColorModel colorModel) {
            this.sunG2D = sunGraphics2D;
            this.paintCtxt = paintContext;
            this.compCtxt = compositeContext;
            this.compModel = colorModel;
        }
    }

    @Override // sun.java2d.pipe.CompositePipe
    public void endSequence(Object obj) {
        TileContext tileContext = (TileContext) obj;
        PaintContext paintContext = tileContext.paintCtxt;
        if (paintContext != null) {
            paintContext.dispose();
        }
        CompositeContext compositeContext = tileContext.compCtxt;
        if (compositeContext != null) {
            compositeContext.dispose();
        }
    }

    @Override // sun.java2d.pipe.CompositePipe
    public boolean needTile(Object obj, int i, int i2, int i3, int i4) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.awt.image.Raster] */
    @Override // sun.java2d.pipe.CompositePipe
    public void renderPathTile(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6) {
        boolean z;
        WritableRaster writableRaster;
        Raster createChild;
        WritableRaster createCompatibleWritableRaster;
        TileContext tileContext = (TileContext) obj;
        PaintContext paintContext = tileContext.paintCtxt;
        CompositeContext compositeContext = tileContext.compCtxt;
        SunGraphics2D sunGraphics2D = tileContext.sunG2D;
        Raster raster = paintContext.getRaster(i3, i4, i5, i6);
        paintContext.getColorModel();
        SurfaceData surfaceData = sunGraphics2D.getSurfaceData();
        ?? raster2 = surfaceData.getRaster(i3, i4, i5, i6);
        boolean z2 = raster2 instanceof WritableRaster;
        if (z2 && bArr == null) {
            z = z2;
            writableRaster = raster2;
            createChild = ((WritableRaster) raster2).createWritableChild(i3, i4, i5, i6, 0, 0, null);
            createCompatibleWritableRaster = createChild;
        } else {
            z = z2;
            writableRaster = raster2;
            createChild = writableRaster.createChild(i3, i4, i5, i6, 0, 0, null);
            createCompatibleWritableRaster = createChild.createCompatibleWritableRaster();
        }
        compositeContext.compose(raster, createChild, createCompatibleWritableRaster);
        WritableRaster writableRaster2 = writableRaster;
        if (writableRaster2 == createCompatibleWritableRaster || createCompatibleWritableRaster.getParent() == writableRaster2) {
            return;
        }
        if (z && bArr == null) {
            writableRaster2.setDataElements(i3, i4, (Raster) createCompatibleWritableRaster);
            return;
        }
        ColorModel deviceColorModel = sunGraphics2D.getDeviceColorModel();
        SurfaceData createData = BufImgSurfaceData.createData(new BufferedImage(deviceColorModel, createCompatibleWritableRaster, deviceColorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null));
        if (bArr == null) {
            Blit.getFromCache(createData.getSurfaceType(), CompositeType.SrcNoEa, surfaceData.getSurfaceType()).Blit(createData, surfaceData, AlphaComposite.Src, null, 0, 0, i3, i4, i5, i6);
        } else {
            MaskBlit.getFromCache(createData.getSurfaceType(), CompositeType.SrcNoEa, surfaceData.getSurfaceType()).MaskBlit(createData, surfaceData, AlphaComposite.Src, null, 0, 0, i3, i4, i5, i6, bArr, i, i2);
        }
    }

    @Override // sun.java2d.pipe.CompositePipe
    public void skipTile(Object obj, int i, int i2) {
    }

    @Override // sun.java2d.pipe.CompositePipe
    public Object startSequence(SunGraphics2D sunGraphics2D, Shape shape, Rectangle rectangle, int[] iArr) {
        RenderingHints renderingHints = sunGraphics2D.getRenderingHints();
        ColorModel deviceColorModel = sunGraphics2D.getDeviceColorModel();
        PaintContext createContext = sunGraphics2D.paint.createContext(deviceColorModel, rectangle, shape.getBounds2D(), sunGraphics2D.cloneTransform(), renderingHints);
        return new TileContext(sunGraphics2D, createContext, sunGraphics2D.composite.createContext(createContext.getColorModel(), deviceColorModel, renderingHints), deviceColorModel);
    }
}
