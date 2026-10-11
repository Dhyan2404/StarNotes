package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.color.UInt32ColorModel;
import java.awt.color.ColorSpace;
import java.awt.image.PixelInterleavedSampleModel;
import javax.imageio.ImageTypeSpecifier;

/* loaded from: classes10.dex */
public final class kpn extends ImageTypeSpecifier {
    public kpn(ColorSpace colorSpace, int[] iArr, boolean z, boolean z2) {
        super(new UInt32ColorModel(colorSpace, z, z2), new PixelInterleavedSampleModel(3, 1, 1, colorSpace.getNumComponents() + (z ? 1 : 0), colorSpace.getNumComponents() + (z ? 1 : 0), iArr));
    }
}
