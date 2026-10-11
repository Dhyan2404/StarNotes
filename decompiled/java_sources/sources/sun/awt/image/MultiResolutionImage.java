package sun.awt.image;

import java.awt.Image;
import java.util.List;

/* loaded from: classes16.dex */
public interface MultiResolutionImage {
    Image getResolutionVariant(int i, int i2);

    List<Image> getResolutionVariants();
}
