package org.apache.poi.style;

import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher;
import org.apache.poi.convert.xwpf.property.ITblPropertyFetcher;
import org.apache.poi.util.ExtUnits;

/* loaded from: classes13.dex */
public class MarginStyles implements Styles {
    private UnitValue bottom;
    private UnitValue left;
    private UnitValue right;
    private UnitValue top;

    private void appendMarginValue(StringBuilder sb, String str, UnitValue unitValue) {
        if (WordToHtmlUtils.isNull(unitValue) || !unitValue.isValid()) {
            return;
        }
        sb.append(str);
        sb.append(unitValue.toStyle());
    }

    private void appendPaddingValue(StringBuilder sb, UnitValue unitValue, char c) {
        if (WordToHtmlUtils.isNull(unitValue)) {
            sb.append("0px");
        } else {
            sb.append(unitValue.toStyle(false));
        }
        sb.append(c);
    }

    public UnitValue getBottom() {
        return this.bottom;
    }

    public UnitValue getLeft() {
        return this.left;
    }

    public float getLeftNumberValue() {
        if (WordToHtmlUtils.isNull(this.left)) {
            return 0.0f;
        }
        return this.left.getNumberValue();
    }

    public UnitValue getRight() {
        return this.right;
    }

    public UnitValue getTop() {
        return this.top;
    }

    public float getTopNumberValue() {
        if (WordToHtmlUtils.isNull(this.top)) {
            return 0.0f;
        }
        return this.top.getNumberValue();
    }

    public void parse(IParagraphPropertyFetcher iParagraphPropertyFetcher) {
        this.left = iParagraphPropertyFetcher.getMarginLeft();
        this.right = iParagraphPropertyFetcher.getMarginRight();
        this.top = iParagraphPropertyFetcher.getMarginTop();
        this.bottom = iParagraphPropertyFetcher.getMarginBottom();
    }

    public String toPaddingStyle() {
        if ((WordToHtmlUtils.isNull(this.top) || !this.top.isValid()) && ((WordToHtmlUtils.isNull(this.right) || !this.right.isValid()) && ((WordToHtmlUtils.isNull(this.bottom) || !this.bottom.isValid()) && (WordToHtmlUtils.isNull(this.left) || !this.left.isValid())))) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("box-sizing: border-box;");
        sb.append("padding:");
        appendPaddingValue(sb, this.top, ' ');
        appendPaddingValue(sb, this.right, ' ');
        appendPaddingValue(sb, this.bottom, ' ');
        appendPaddingValue(sb, this.left, ';');
        return sb.toString();
    }

    public String toString() {
        return "Margin{t=" + this.top + ", r=" + this.right + ", b=" + this.bottom + ", l=" + this.left + '}';
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        StringBuilder sb = new StringBuilder();
        appendMarginValue(sb, "margin-top:", this.top);
        appendMarginValue(sb, "margin-right:", this.right);
        appendMarginValue(sb, "margin-bottom:", this.bottom);
        appendMarginValue(sb, "margin-left:", this.left);
        return sb.toString();
    }

    public String toStyleExcludeLeft() {
        StringBuilder sb = new StringBuilder();
        appendMarginValue(sb, "margin-top:", this.top);
        appendMarginValue(sb, "margin-right:", this.right);
        appendMarginValue(sb, "margin-bottom:", this.bottom);
        return sb.toString();
    }

    public void parse(ITblPropertyFetcher iTblPropertyFetcher) {
        double[] cellMargin = iTblPropertyFetcher.getCellMargin();
        if (WordToHtmlUtils.isNull(cellMargin)) {
            return;
        }
        this.top = UnitValue.fromPX(ExtUnits.dxaToPixel(cellMargin[0]));
        this.right = UnitValue.fromPX(ExtUnits.dxaToPixel(cellMargin[1]));
        this.bottom = UnitValue.fromPX(ExtUnits.dxaToPixel(cellMargin[2]));
        this.left = UnitValue.fromPX(ExtUnits.dxaToPixel(cellMargin[3]));
    }
}
