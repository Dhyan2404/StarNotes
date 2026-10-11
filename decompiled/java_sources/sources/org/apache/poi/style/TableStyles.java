package org.apache.poi.style;

import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.XWPFTablePropertyFetcher;
import org.apache.poi.util.ExtUnits;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.impl.values.XmlUnionImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTJcTable;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblLayoutType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth;

/* loaded from: classes13.dex */
public class TableStyles implements Styles {
    private XWPFTablePropertyFetcher fetcher;
    private UnitValue indent;
    private Layout layout = Layout.NONE;
    private TextAlign align = TextAlign.NONE;
    private UnitValue[] borderSpace = new UnitValue[2];

    /* loaded from: classes13.dex */
    public enum Layout {
        NONE(""),
        AUTO("auto"),
        FIXED("fixed");

        String name;

        Layout(String str) {
            this.name = str;
        }
    }

    public TableStyles(XWPFTablePropertyFetcher xWPFTablePropertyFetcher) {
        this.fetcher = xWPFTablePropertyFetcher;
        parse(xWPFTablePropertyFetcher);
    }

    private TextAlign getAlign(CTJcTable cTJcTable) {
        if (WordToHtmlUtils.isNull(cTJcTable)) {
            return TextAlign.LEFT;
        }
        int intValue = cTJcTable.getVal().intValue();
        return intValue != 1 ? (intValue == 2 || intValue == 4) ? TextAlign.RIGHT : TextAlign.LEFT : TextAlign.CENTER;
    }

    private Layout getLayout(CTTblLayoutType cTTblLayoutType) {
        if (cTTblLayoutType != null && cTTblLayoutType.getType().intValue() == 1) {
            return Layout.FIXED;
        }
        return Layout.AUTO;
    }

    private void parse(XWPFTablePropertyFetcher xWPFTablePropertyFetcher) {
        CTTblPr tblPr = xWPFTablePropertyFetcher.getTblPr();
        this.layout = getLayout(tblPr.getTblLayout());
        this.align = getAlign(tblPr.getJc());
        parseIndent(tblPr.getTblInd());
    }

    private void parseIndent(CTTblWidth cTTblWidth) {
        if (WordToHtmlUtils.isNull(cTTblWidth) || !cTTblWidth.isSetW()) {
            return;
        }
        XmlAnySimpleType xgetW = cTTblWidth.xgetW();
        if (xgetW instanceof XmlUnionImpl) {
            int intValue = ((XmlUnionImpl) xgetW).getIntValue();
            if (cTTblWidth.getType() == STTblWidth.PCT) {
                this.indent = UnitValue.fromPCT(intValue);
            } else {
                this.indent = UnitValue.fromPX(ExtUnits.dxaToPixel(intValue));
            }
        }
    }

    public UnitValue[] getBorderSpace() {
        return this.borderSpace;
    }

    @Override // org.apache.poi.style.Styles
    public String toStyle() {
        StringBuilder sb = new StringBuilder();
        if (this.layout == Layout.FIXED) {
            sb.append("table-layout:fixed;");
        } else {
            sb.append("table-layout:auto;");
        }
        TextAlign textAlign = this.align;
        if (textAlign == TextAlign.CENTER) {
            sb.append("margin-left:auto;margin-right:auto;");
        } else if (textAlign == TextAlign.RIGHT) {
            sb.append("margin-left:auto;");
        }
        if (!WordToHtmlUtils.isNull(this.indent)) {
            sb.append("margin-left:");
            sb.append(this.indent.toStyle());
        }
        if ((WordToHtmlUtils.isNull(this.borderSpace[0]) || !this.borderSpace[0].isValid()) && (WordToHtmlUtils.isNull(this.borderSpace[1]) || !this.borderSpace[1].isValid())) {
            sb.append("border-collapse:collapse;");
        } else {
            sb.append("border-collapse:separate;border-spacing:");
            if (WordToHtmlUtils.isNull(this.borderSpace[0])) {
                sb.append("0px ");
            } else {
                sb.append(this.borderSpace[0].toStyle(false));
                sb.append(' ');
            }
            if (WordToHtmlUtils.isNull(this.borderSpace[1])) {
                sb.append("0px;");
            } else {
                sb.append(this.borderSpace[1].toStyle());
            }
        }
        return sb.toString();
    }
}
