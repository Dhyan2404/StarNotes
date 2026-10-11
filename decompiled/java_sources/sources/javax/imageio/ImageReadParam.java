package javax.imageio;

import java.awt.Dimension;
import java.awt.image.BufferedImage;

/* loaded from: classes5.dex */
public class ImageReadParam extends IIOParam {
    protected boolean canSetSourceRenderSize = false;
    protected Dimension sourceRenderSize = null;
    protected BufferedImage destination = null;
    protected int[] destinationBands = null;
    protected int minProgressivePass = 0;
    protected int numProgressivePasses = Integer.MAX_VALUE;

    public boolean canSetSourceRenderSize() {
        return this.canSetSourceRenderSize;
    }

    public BufferedImage getDestination() {
        return this.destination;
    }

    public int[] getDestinationBands() {
        int[] iArr = this.destinationBands;
        if (iArr == null) {
            return null;
        }
        return (int[]) iArr.clone();
    }

    public int getSourceMaxProgressivePass() {
        if (this.numProgressivePasses == Integer.MAX_VALUE) {
            return Integer.MAX_VALUE;
        }
        return (this.minProgressivePass + r0) - 1;
    }

    public int getSourceMinProgressivePass() {
        return this.minProgressivePass;
    }

    public int getSourceNumProgressivePasses() {
        return this.numProgressivePasses;
    }

    public Dimension getSourceRenderSize() {
        Dimension dimension = this.sourceRenderSize;
        if (dimension == null) {
            return null;
        }
        return (Dimension) dimension.clone();
    }

    public void setDestination(BufferedImage bufferedImage) {
        this.destination = bufferedImage;
    }

    public void setDestinationBands(int[] iArr) {
        if (iArr == null) {
            this.destinationBands = null;
            return;
        }
        int length = iArr.length;
        int i = 0;
        while (i < length) {
            int i2 = iArr[i];
            if (i2 < 0) {
                throw new IllegalArgumentException("Band value < 0!");
            }
            i++;
            for (int i3 = i; i3 < length; i3++) {
                if (i2 == iArr[i3]) {
                    throw new IllegalArgumentException("Duplicate band value!");
                }
            }
        }
        this.destinationBands = (int[]) iArr.clone();
    }

    @Override // javax.imageio.IIOParam
    public void setDestinationType(ImageTypeSpecifier imageTypeSpecifier) {
        super.setDestinationType(imageTypeSpecifier);
        setDestination(null);
    }

    public void setSourceProgressivePasses(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("minPass < 0!");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("numPasses <= 0!");
        }
        if (i2 != Integer.MAX_VALUE && (((i + i2) - 1) & Integer.MIN_VALUE) != 0) {
            throw new IllegalArgumentException("minPass + numPasses - 1 > INTEGER.MAX_VALUE!");
        }
        this.minProgressivePass = i;
        this.numProgressivePasses = i2;
    }

    public void setSourceRenderSize(Dimension dimension) throws UnsupportedOperationException {
        if (!canSetSourceRenderSize()) {
            throw new UnsupportedOperationException("Can't set source render size!");
        }
        if (dimension == null) {
            this.sourceRenderSize = null;
        } else {
            if (dimension.width <= 0 || dimension.height <= 0) {
                throw new IllegalArgumentException("width or height <= 0!");
            }
            this.sourceRenderSize = (Dimension) dimension.clone();
        }
    }
}
