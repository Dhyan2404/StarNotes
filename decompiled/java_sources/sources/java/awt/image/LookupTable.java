package java.awt.image;

/* loaded from: classes5.dex */
public abstract class LookupTable {
    int numComponents;
    int numEntries;
    int offset;

    public LookupTable(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Offset must be greater than 0");
        }
        if (i2 < 1) {
            throw new IllegalArgumentException("Number of components must  be at least 1");
        }
        this.numComponents = i2;
        this.offset = i;
    }

    public int getNumComponents() {
        return this.numComponents;
    }

    public int getOffset() {
        return this.offset;
    }

    public abstract int[] lookupPixel(int[] iArr, int[] iArr2);
}
