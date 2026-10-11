package sun.font;

import java.awt.InternalError;
import java.awt.font.FontRenderContext;
import java.awt.font.LineMetrics;

/* loaded from: classes16.dex */
public final class FontLineMetrics extends LineMetrics implements Cloneable {

    /* renamed from: cm */
    public final CoreMetrics f116344cm;
    public final FontRenderContext frc;
    public int numchars;

    public FontLineMetrics(int i, CoreMetrics coreMetrics, FontRenderContext fontRenderContext) {
        this.numchars = i;
        this.f116344cm = coreMetrics;
        this.frc = fontRenderContext;
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e);
        }
    }

    public final boolean equals(Object obj) {
        try {
            return this.f116344cm.equals(((FontLineMetrics) obj).f116344cm);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.awt.font.LineMetrics
    public final float getAscent() {
        return this.f116344cm.ascent;
    }

    @Override // java.awt.font.LineMetrics
    public final int getBaselineIndex() {
        return this.f116344cm.baselineIndex;
    }

    @Override // java.awt.font.LineMetrics
    public final float[] getBaselineOffsets() {
        return (float[]) this.f116344cm.baselineOffsets.clone();
    }

    @Override // java.awt.font.LineMetrics
    public final float getDescent() {
        return this.f116344cm.descent;
    }

    @Override // java.awt.font.LineMetrics
    public final float getHeight() {
        return this.f116344cm.height;
    }

    @Override // java.awt.font.LineMetrics
    public final float getLeading() {
        return this.f116344cm.leading;
    }

    @Override // java.awt.font.LineMetrics
    public final int getNumChars() {
        return this.numchars;
    }

    @Override // java.awt.font.LineMetrics
    public final float getStrikethroughOffset() {
        return this.f116344cm.strikethroughOffset;
    }

    @Override // java.awt.font.LineMetrics
    public final float getStrikethroughThickness() {
        return this.f116344cm.strikethroughThickness;
    }

    @Override // java.awt.font.LineMetrics
    public final float getUnderlineOffset() {
        return this.f116344cm.underlineOffset;
    }

    @Override // java.awt.font.LineMetrics
    public final float getUnderlineThickness() {
        return this.f116344cm.underlineThickness;
    }

    public final int hashCode() {
        return this.f116344cm.hashCode();
    }
}
