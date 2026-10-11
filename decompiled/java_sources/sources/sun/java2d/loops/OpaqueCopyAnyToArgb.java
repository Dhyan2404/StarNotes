package sun.java2d.loops;

import java.awt.Composite;
import java.awt.image.ColorModel;
import java.awt.image.Raster;
import sun.awt.image.IntegerComponentRaster;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.Region;
import sun.java2d.pipe.SpanIterator;

/* loaded from: classes16.dex */
class OpaqueCopyAnyToArgb extends Blit {
    public OpaqueCopyAnyToArgb() {
        super(SurfaceType.Any, CompositeType.SrcNoEa, SurfaceType.IntArgb);
    }

    @Override // sun.java2d.loops.Blit
    public void Blit(SurfaceData surfaceData, SurfaceData surfaceData2, Composite composite, Region region, int i, int i2, int i3, int i4, int i5, int i6) {
        Raster raster = surfaceData.getRaster(i, i2, i5, i6);
        ColorModel colorModel = surfaceData.getColorModel();
        IntegerComponentRaster integerComponentRaster = (IntegerComponentRaster) surfaceData2.getRaster(i3, i4, i5, i6);
        int[] dataStorage = integerComponentRaster.getDataStorage();
        SpanIterator spanIterator = CustomComponent.getRegionOfInterest(surfaceData, surfaceData2, region, i, i2, i3, i4, i5, i6).getSpanIterator();
        int scanlineStride = integerComponentRaster.getScanlineStride();
        int i7 = i - i3;
        int i8 = i2 - i4;
        int[] iArr = new int[4];
        Object obj = null;
        while (spanIterator.nextSpan(iArr)) {
            int dataOffset = integerComponentRaster.getDataOffset(0);
            int i9 = iArr[1];
            int i10 = dataOffset + (i9 * scanlineStride) + iArr[0];
            while (i9 < iArr[3]) {
                int i11 = iArr[0];
                int i12 = i10;
                while (i11 < iArr[2]) {
                    obj = raster.getDataElements(i11 + i7, i9 + i8, obj);
                    dataStorage[i12] = colorModel.getRGB(obj);
                    i11++;
                    i12++;
                }
                i10 += scanlineStride;
                i9++;
            }
        }
        integerComponentRaster.markDirty();
    }
}
