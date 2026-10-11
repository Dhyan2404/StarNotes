package java.awt.font;

/* loaded from: classes5.dex */
public final class GlyphJustificationInfo {
    public static final int PRIORITY_INTERCHAR = 2;
    public static final int PRIORITY_KASHIDA = 0;
    public static final int PRIORITY_NONE = 3;
    public static final int PRIORITY_WHITESPACE = 1;
    public final boolean growAbsorb;
    public final float growLeftLimit;
    public final int growPriority;
    public final float growRightLimit;
    public final boolean shrinkAbsorb;
    public final float shrinkLeftLimit;
    public final int shrinkPriority;
    public final float shrinkRightLimit;
    public final float weight;

    public GlyphJustificationInfo(float f, boolean z, int i, float f2, float f3, boolean z2, int i2, float f4, float f5) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("weight is negative");
        }
        if (!priorityIsValid(i)) {
            throw new IllegalArgumentException("Invalid grow priority");
        }
        if (f2 < 0.0f) {
            throw new IllegalArgumentException("growLeftLimit is negative");
        }
        if (f3 < 0.0f) {
            throw new IllegalArgumentException("growRightLimit is negative");
        }
        if (!priorityIsValid(i2)) {
            throw new IllegalArgumentException("Invalid shrink priority");
        }
        if (f4 < 0.0f) {
            throw new IllegalArgumentException("shrinkLeftLimit is negative");
        }
        if (f5 < 0.0f) {
            throw new IllegalArgumentException("shrinkRightLimit is negative");
        }
        this.weight = f;
        this.growAbsorb = z;
        this.growPriority = i;
        this.growLeftLimit = f2;
        this.growRightLimit = f3;
        this.shrinkAbsorb = z2;
        this.shrinkPriority = i2;
        this.shrinkLeftLimit = f4;
        this.shrinkRightLimit = f5;
    }

    private static boolean priorityIsValid(int i) {
        return i >= 0 && i <= 3;
    }
}
