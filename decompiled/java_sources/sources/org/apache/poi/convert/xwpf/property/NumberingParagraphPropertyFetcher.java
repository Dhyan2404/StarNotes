package org.apache.poi.convert.xwpf.property;

import org.apache.poi.style.UnitValue;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.TextAlignment;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrBase;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing;

/* loaded from: classes12.dex */
public class NumberingParagraphPropertyFetcher extends ParagraphPropertyFetcher {
    public NumberingParagraphPropertyFetcher(CTPPrBase cTPPrBase) {
        super(cTPPrBase);
    }

    @Override // org.apache.poi.convert.xwpf.property.ParagraphPropertyFetcher, org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public ParagraphAlignment getAlignment() {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.ParagraphPropertyFetcher, org.apache.poi.convert.xwpf.property.BordersFetcher
    public CTBorder[] getCTBorders() {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.ParagraphPropertyFetcher, org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public CTSpacing getCTSpacing() {
        return super.getCTSpacing();
    }

    @Override // org.apache.poi.convert.xwpf.property.ParagraphPropertyFetcher, org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getMarginBottom() {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.ParagraphPropertyFetcher, org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getMarginLeft() {
        return super.getMarginLeft();
    }

    @Override // org.apache.poi.convert.xwpf.property.ParagraphPropertyFetcher, org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getMarginRight() {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.ParagraphPropertyFetcher, org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getMarginTop() {
        return null;
    }

    @Override // org.apache.poi.convert.xwpf.property.ParagraphPropertyFetcher, org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getTextIndent() {
        return super.getTextIndent();
    }

    @Override // org.apache.poi.convert.xwpf.property.ParagraphPropertyFetcher, org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public TextAlignment getVerticalAlignment() {
        return null;
    }
}
