package sun.java2d.pipe;

/* loaded from: classes16.dex */
public class RegionIterator {
    int curIndex;
    int numXbands;
    Region region;

    public RegionIterator(Region region) {
        this.region = region;
    }

    public void copyStateFrom(RegionIterator regionIterator) {
        if (this.region != regionIterator.region) {
            throw new InternalError("region mismatch");
        }
        this.curIndex = regionIterator.curIndex;
        this.numXbands = regionIterator.numXbands;
    }

    public RegionIterator createCopy() {
        RegionIterator regionIterator = new RegionIterator(this.region);
        regionIterator.curIndex = this.curIndex;
        regionIterator.numXbands = this.numXbands;
        return regionIterator;
    }

    public boolean nextXBand(int[] iArr) {
        int i = this.numXbands;
        if (i <= 0) {
            return false;
        }
        this.numXbands = i - 1;
        int[] iArr2 = this.region.bands;
        int i2 = this.curIndex;
        int i3 = i2 + 1;
        iArr[0] = iArr2[i2];
        this.curIndex = i3 + 1;
        iArr[2] = iArr2[i3];
        return true;
    }

    public boolean nextYRange(int[] iArr) {
        int i = this.curIndex + (this.numXbands * 2);
        this.curIndex = i;
        this.numXbands = 0;
        Region region = this.region;
        if (i >= region.endIndex) {
            return false;
        }
        int[] iArr2 = region.bands;
        int i2 = i + 1;
        iArr[1] = iArr2[i];
        int i3 = i2 + 1;
        iArr[3] = iArr2[i2];
        this.curIndex = i3 + 1;
        this.numXbands = iArr2[i3];
        return true;
    }
}
