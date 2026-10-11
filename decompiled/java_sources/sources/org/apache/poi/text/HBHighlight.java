package org.apache.poi.text;

import com.onyx.common.util.ArrayUtils;
import com.trans.android.p107hb.HBUtils;
import java.awt.font.FontRenderContext;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.text.AttributedCharacterIterator;
import org.apache.poi.sl.draw.DrawTextPart;

/* loaded from: classes13.dex */
public class HBHighlight implements Highlight {
    private float[] advances;
    private float height = -1.0f;
    private float[] metrics;
    private DrawTextPart textPart;

    private void getTextPartAdvancesAndMetrics() {
        AttributedCharacterIterator iterator = this.textPart.getAttributedString().getIterator();
        float[] fArr = new float[iterator.getEndIndex()];
        this.advances = fArr;
        float[] fArr2 = new float[3];
        this.metrics = fArr2;
        HBUtils.getMetrics(iterator, fArr, fArr2);
        this.height = ArrayUtils.getSum(this.metrics);
    }

    @Override // org.apache.poi.text.Highlight
    public double getHeight() {
        return this.height;
    }

    @Override // org.apache.poi.text.Highlight
    public Rectangle2D getHighlight(Point2D point2D, int i, int i2) {
        return new Rectangle2D.Double(point2D.getX(), point2D.getY() - this.metrics[2], ArrayUtils.getSum(this.advances, i, i2), this.height);
    }

    @Override // org.apache.poi.text.Highlight
    public AttributedCharacterIterator getIterator(AttributedCharacterIterator.Attribute[] attributeArr, int i, int i2) {
        return this.textPart.getAttributedString().getIterator(attributeArr, i, i2);
    }

    @Override // org.apache.poi.text.Highlight
    public void loadData(DrawTextPart drawTextPart, AffineTransform affineTransform, FontRenderContext fontRenderContext) {
        release();
        this.textPart = drawTextPart;
        getTextPartAdvancesAndMetrics();
    }

    @Override // org.apache.poi.text.Highlight
    public void release() {
        this.textPart = null;
        this.advances = null;
        this.metrics = null;
        this.height = -1.0f;
    }
}
