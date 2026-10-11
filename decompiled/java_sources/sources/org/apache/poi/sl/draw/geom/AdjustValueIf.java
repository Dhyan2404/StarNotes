package org.apache.poi.sl.draw.geom;

/* loaded from: classes12.dex */
public interface AdjustValueIf extends GuideIf {
    @Override // org.apache.poi.sl.draw.geom.GuideIf, org.apache.poi.sl.draw.geom.Formula
    default double evaluate(Context context) {
        return evaluateAdjustValue(context);
    }

    default double evaluateAdjustValue(Context context) {
        GuideIf adjustValue = context.getAdjustValue(getName());
        return adjustValue != null ? adjustValue.evaluate(context) : evaluateGuide(context);
    }
}
