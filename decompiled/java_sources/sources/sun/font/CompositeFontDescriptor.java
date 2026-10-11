package sun.font;

/* loaded from: classes16.dex */
public class CompositeFontDescriptor {
    private String[] componentFaceNames;
    private String[] componentFileNames;
    private int coreComponentCount;
    private int[] exclusionRangeLimits;
    private int[] exclusionRanges;
    private String faceName;

    public CompositeFontDescriptor(String str, int i, String[] strArr, String[] strArr2, int[] iArr, int[] iArr2) {
        this.faceName = str;
        this.coreComponentCount = i;
        this.componentFaceNames = strArr;
        this.componentFileNames = strArr2;
        this.exclusionRanges = iArr;
        this.exclusionRangeLimits = iArr2;
    }

    public String[] getComponentFaceNames() {
        return this.componentFaceNames;
    }

    public String[] getComponentFileNames() {
        return this.componentFileNames;
    }

    public int getCoreComponentCount() {
        return this.coreComponentCount;
    }

    public int[] getExclusionRangeLimits() {
        return this.exclusionRangeLimits;
    }

    public int[] getExclusionRanges() {
        return this.exclusionRanges;
    }

    public String getFaceName() {
        return this.faceName;
    }
}
