package com.sun.imageio.plugins.bmp;

import androidx.palette.graphics.Palette;
import com.google.common.net.HttpHeaders;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ListResourceBundle;

/* loaded from: classes9.dex */
public class BMPMetadataFormatResources extends ListResourceBundle {
    @Override // java.util.ListResourceBundle
    public Object[][] getContents() {
        return new Object[][]{new Object[]{"BMPVersion", "BMP version string"}, new Object[]{HttpHeaders.WIDTH, "The width of the image"}, new Object[]{"Height", "The height of the image"}, new Object[]{"BitsPerPixel", ""}, new Object[]{"PixelsPerMeter", "Resolution in pixels per unit distance"}, new Object[]{"X", "Pixels Per Meter along X"}, new Object[]{"Y", "Pixels Per Meter along Y"}, new Object[]{"ColorsUsed", "Number of color indexes in the color table actually used"}, new Object[]{"ColorsImportant", "Number of color indexes considered important for display"}, new Object[]{"Mask", "Color masks; present for BI_BITFIELDS compression only"}, new Object[]{"Intent", "Rendering intent"}, new Object[]{Palette.f8616j, "The color palette"}, new Object[]{"Red", "Red Mask/Color Palette"}, new Object[]{"Green", "Green Mask/Color Palette/Gamma"}, new Object[]{"Blue", "Blue Mask/Color Palette/Gamma"}, new Object[]{"Alpha", "Alpha Mask/Color Palette/Gamma"}, new Object[]{"ColorSpaceType", "Color Space Type"}, new Object[]{"X", "The X coordinate of a point in XYZ color space"}, new Object[]{"Y", "The Y coordinate of a point in XYZ color space"}, new Object[]{Constants.HASIDCALL_INDEX_SIG, "The Z coordinate of a point in XYZ color space"}};
    }
}
