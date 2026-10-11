package sun.font;

import java.awt.font.LineMetrics;

/* loaded from: classes16.dex */
public final class CoreMetrics {
    public final float ascent;
    public final int baselineIndex;
    public final float[] baselineOffsets;
    public final float descent;
    public final float height;
    public final float italicAngle;
    public final float leading;
    public final float ssOffset;
    public final float strikethroughOffset;
    public final float strikethroughThickness;
    public final float underlineOffset;
    public final float underlineThickness;

    public CoreMetrics(float f, float f2, float f3, float f4, int i, float[] fArr, float f5, float f6, float f7, float f8, float f9, float f10) {
        this.ascent = f;
        this.descent = f2;
        this.leading = f3;
        this.height = f4;
        this.baselineIndex = i;
        this.baselineOffsets = fArr;
        this.strikethroughOffset = f5;
        this.strikethroughThickness = f6;
        this.underlineOffset = f7;
        this.underlineThickness = f8;
        this.ssOffset = f9;
        this.italicAngle = f10;
    }

    public static CoreMetrics get(LineMetrics lineMetrics) {
        return ((FontLineMetrics) lineMetrics).f116344cm;
    }

    public final float effectiveBaselineOffset(float[] fArr) {
        int i = this.baselineIndex;
        return i != -2 ? i != -1 ? fArr[i] : fArr[4] + this.ascent : fArr[3] - this.descent;
    }

    public final boolean equals(Object obj) {
        try {
            return equals((CoreMetrics) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.ascent + this.ssOffset);
    }

    public final boolean equals(CoreMetrics coreMetrics) {
        if (coreMetrics == null) {
            return false;
        }
        if (this != coreMetrics) {
            if (this.ascent != coreMetrics.ascent || this.descent != coreMetrics.descent || this.leading != coreMetrics.leading || this.baselineIndex != coreMetrics.baselineIndex) {
                return false;
            }
            float[] fArr = this.baselineOffsets;
            float f = fArr[0];
            float[] fArr2 = coreMetrics.baselineOffsets;
            if (f != fArr2[0] || fArr[1] != fArr2[1] || fArr[2] != fArr2[2] || this.strikethroughOffset != coreMetrics.strikethroughOffset || this.strikethroughThickness != coreMetrics.strikethroughThickness || this.underlineOffset != coreMetrics.underlineOffset || this.underlineThickness != coreMetrics.underlineThickness || this.ssOffset != coreMetrics.ssOffset || this.italicAngle != coreMetrics.italicAngle) {
                return false;
            }
        }
        return true;
    }
}
