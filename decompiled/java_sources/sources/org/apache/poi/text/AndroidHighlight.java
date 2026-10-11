package org.apache.poi.text;

import android.text.Layout;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.onyx.common.util.PaintFactory;
import com.trans.android.common.AttributedData;
import com.trans.android.util.BridgeUtils;
import java.awt.Font;
import java.awt.font.FontRenderContext;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.text.AttributedCharacterIterator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.poi.sl.draw.DrawTextPart;

/* loaded from: classes13.dex */
public class AndroidHighlight implements Highlight {

    /* renamed from: dy */
    private double f111588dy;
    private DrawTextPart textPart;
    private Map<String, Rectangle2D> cache = new HashMap();
    private double height = -1.0d;

    private StaticLayout createStaticLayout(CharSequence charSequence, TextPaint textPaint, int i) {
        return new StaticLayout(charSequence, textPaint, i, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    private String getKey(int i, int i2) {
        return i + "-" + i2;
    }

    private Point2D getMetrics(int i, int i2) {
        AttributedCharacterIterator iterator = getIterator(null, i, i2);
        String convertCharacterIterator = BridgeUtils.convertCharacterIterator(iterator);
        List<AttributedData> collectAttributeData = BridgeUtils.collectAttributeData(iterator, convertCharacterIterator);
        SpannableString spannableString = new SpannableString(convertCharacterIterator);
        BridgeUtils.setSpannableWithAttributeData(spannableString, collectAttributeData);
        TextPaint paint = getPaint(BridgeUtils.getFontFromAttributedData(collectAttributeData, Font.DEFAULT_FONT));
        float desiredWidth = Layout.getDesiredWidth(spannableString, paint);
        if (this.height < 0.0d) {
            StaticLayout createStaticLayout = createStaticLayout(spannableString, paint, (int) (1.0f + desiredWidth));
            this.f111588dy = createStaticLayout.getLineAscent(0) - paint.getFontMetrics().ascent;
            this.height = createStaticLayout.getHeight();
        }
        return new Point2D.Double(desiredWidth, this.height);
    }

    private TextPaint getPaint(Font font) {
        return PaintFactory.create(font);
    }

    private void getTextPartMetrics() {
        getMetrics(0, this.textPart.getAttributedString().getIterator().getEndIndex());
    }

    @Override // org.apache.poi.text.Highlight
    public double getHeight() {
        return this.height;
    }

    @Override // org.apache.poi.text.Highlight
    public Rectangle2D getHighlight(Point2D point2D, int i, int i2) {
        String key = getKey(i, i2);
        Rectangle2D rectangle2D = this.cache.get(key);
        if (rectangle2D != null) {
            return rectangle2D;
        }
        if (i != 0) {
            Rectangle2D highlight = getHighlight(point2D, 0, i);
            return new Rectangle2D.Double(point2D.getX(), point2D.getY() + this.f111588dy, getHighlight(point2D, 0, i2).getWidth() - highlight.getWidth(), this.height);
        }
        Point2D metrics = getMetrics(i, i2);
        this.cache.put(key, new Rectangle2D.Double(0.0d, 0.0d, metrics.getX(), metrics.getY()));
        return new Rectangle2D.Double(point2D.getX(), point2D.getY() + this.f111588dy, metrics.getX(), metrics.getY());
    }

    @Override // org.apache.poi.text.Highlight
    public AttributedCharacterIterator getIterator(AttributedCharacterIterator.Attribute[] attributeArr, int i, int i2) {
        return this.textPart.getAttributedString().getIterator(attributeArr, i, i2);
    }

    @Override // org.apache.poi.text.Highlight
    public void loadData(DrawTextPart drawTextPart, AffineTransform affineTransform, FontRenderContext fontRenderContext) {
        release();
        this.textPart = drawTextPart;
        getTextPartMetrics();
    }

    @Override // org.apache.poi.text.Highlight
    public void release() {
        this.textPart = null;
        this.cache.clear();
        this.height = -1.0d;
    }
}
