package sun.font;

import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;

/* loaded from: classes16.dex */
public final class StrikeMetrics {
    public float ascentX;
    public float ascentY;
    public float baselineX;
    public float baselineY;
    public float descentX;
    public float descentY;
    public float leadingX;
    public float leadingY;
    public float maxAdvanceX;
    public float maxAdvanceY;

    public StrikeMetrics() {
        this.ascentY = 2.14748365E9f;
        this.ascentX = 2.14748365E9f;
        this.leadingY = -2.14748365E9f;
        this.leadingX = -2.14748365E9f;
        this.descentY = -2.14748365E9f;
        this.descentX = -2.14748365E9f;
        this.maxAdvanceY = -2.14748365E9f;
        this.maxAdvanceX = -2.14748365E9f;
        this.baselineX = -2.14748365E9f;
    }

    public void convertToUserSpace(AffineTransform affineTransform) {
        Point2D.Float r0 = new Point2D.Float();
        r0.f97777x = this.ascentX;
        r0.f97778y = this.ascentY;
        affineTransform.deltaTransform(r0, r0);
        this.ascentX = r0.f97777x;
        this.ascentY = r0.f97778y;
        r0.f97777x = this.descentX;
        r0.f97778y = this.descentY;
        affineTransform.deltaTransform(r0, r0);
        this.descentX = r0.f97777x;
        this.descentY = r0.f97778y;
        r0.f97777x = this.baselineX;
        r0.f97778y = this.baselineY;
        affineTransform.deltaTransform(r0, r0);
        this.baselineX = r0.f97777x;
        this.baselineY = r0.f97778y;
        r0.f97777x = this.leadingX;
        r0.f97778y = this.leadingY;
        affineTransform.deltaTransform(r0, r0);
        this.leadingX = r0.f97777x;
        this.leadingY = r0.f97778y;
        r0.f97777x = this.maxAdvanceX;
        r0.f97778y = this.maxAdvanceY;
        affineTransform.deltaTransform(r0, r0);
        this.maxAdvanceX = r0.f97777x;
        this.maxAdvanceY = r0.f97778y;
    }

    public float getAscent() {
        return -this.ascentY;
    }

    public float getDescent() {
        return this.descentY;
    }

    public float getLeading() {
        return this.leadingY;
    }

    public float getMaxAdvance() {
        return this.maxAdvanceX;
    }

    public void merge(StrikeMetrics strikeMetrics) {
        if (strikeMetrics != null) {
            float f = strikeMetrics.ascentX;
            if (f < this.ascentX) {
                this.ascentX = f;
            }
            float f2 = strikeMetrics.ascentY;
            if (f2 < this.ascentY) {
                this.ascentY = f2;
            }
            float f3 = strikeMetrics.descentX;
            if (f3 > this.descentX) {
                this.descentX = f3;
            }
            float f4 = strikeMetrics.descentY;
            if (f4 > this.descentY) {
                this.descentY = f4;
            }
            float f5 = strikeMetrics.baselineX;
            if (f5 > this.baselineX) {
                this.baselineX = f5;
            }
            float f6 = strikeMetrics.baselineY;
            if (f6 > this.baselineY) {
                this.baselineY = f6;
            }
            float f7 = strikeMetrics.leadingX;
            if (f7 > this.leadingX) {
                this.leadingX = f7;
            }
            float f8 = strikeMetrics.leadingY;
            if (f8 > this.leadingY) {
                this.leadingY = f8;
            }
            float f9 = strikeMetrics.maxAdvanceX;
            if (f9 > this.maxAdvanceX) {
                this.maxAdvanceX = f9;
            }
            float f10 = strikeMetrics.maxAdvanceY;
            if (f10 > this.maxAdvanceY) {
                this.maxAdvanceY = f10;
            }
        }
    }

    public String toString() {
        return "ascent:x=" + this.ascentX + " y=" + this.ascentY + " descent:x=" + this.descentX + " y=" + this.descentY + " baseline:x=" + this.baselineX + " y=" + this.baselineY + " leading:x=" + this.leadingX + " y=" + this.leadingY + " maxAdvance:x=" + this.maxAdvanceX + " y=" + this.maxAdvanceY;
    }

    public StrikeMetrics(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        this.ascentX = f;
        this.ascentY = f2;
        this.descentX = f3;
        this.descentY = f4;
        this.baselineX = f5;
        this.baselineY = f6;
        this.leadingX = f7;
        this.leadingY = f8;
        this.maxAdvanceX = f9;
        this.maxAdvanceY = f10;
    }
}
