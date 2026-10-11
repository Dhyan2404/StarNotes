package sun.java2d.loops;

import java.awt.Rectangle;
import sun.java2d.SurfaceData;
import sun.java2d.pipe.Region;

/* loaded from: classes16.dex */
public final class CustomComponent {
    public static Region getRegionOfInterest(SurfaceData surfaceData, SurfaceData surfaceData2, Region region, int i, int i2, int i3, int i4, int i5, int i6) {
        Region intersection = Region.getInstanceXYWH(i3, i4, i5, i6).getIntersection(surfaceData2.getBounds());
        Rectangle bounds = surfaceData.getBounds();
        bounds.translate(i3 - i, i4 - i2);
        Region intersection2 = intersection.getIntersection(bounds);
        return region != null ? intersection2.getIntersection(region) : intersection2;
    }

    public static void register() {
        String str = Blit.methodSignature;
        int i = Blit.primTypeID;
        SurfaceType surfaceType = SurfaceType.Any;
        CompositeType compositeType = CompositeType.SrcNoEa;
        SurfaceType surfaceType2 = SurfaceType.IntArgb;
        GraphicsPrimitiveMgr.register(new GraphicsPrimitive[]{new GraphicsPrimitiveProxy(CustomComponent.class, "OpaqueCopyAnyToArgb", str, i, surfaceType, compositeType, surfaceType2), new GraphicsPrimitiveProxy(CustomComponent.class, "OpaqueCopyArgbToAny", str, i, surfaceType2, compositeType, surfaceType), new GraphicsPrimitiveProxy(CustomComponent.class, "XorCopyArgbToAny", str, i, surfaceType2, CompositeType.Xor, surfaceType)});
    }
}
