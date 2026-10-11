package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.color.Int16ComponentColorModel;
import java.awt.color.ColorSpace;
import java.awt.image.PixelInterleavedSampleModel;
import javax.imageio.ImageTypeSpecifier;

/* loaded from: classes10.dex */
public final class lmi extends ImageTypeSpecifier {
    public lmi(ColorSpace colorSpace, int[] iArr, boolean z, boolean z2) {
        super(new Int16ComponentColorModel(colorSpace, z, z2), new PixelInterleavedSampleModel(2, 1, 1, colorSpace.getNumComponents() + (z ? 1 : 0), colorSpace.getNumComponents() + (z ? 1 : 0), iArr));
    }
}
