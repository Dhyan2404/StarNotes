package org.apache.poi.convert.xwpf.property;

import org.apache.poi.style.UnitValue;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.TextAlignment;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing;

/* loaded from: classes12.dex */
public interface IParagraphPropertyFetcher extends BordersFetcher {
    ParagraphAlignment getAlignment();

    CTSpacing getCTSpacing();

    UnitValue getMarginBottom();

    UnitValue getMarginLeft();

    UnitValue getMarginRight();

    UnitValue getMarginTop();

    UnitValue getTextIndent();

    TextAlignment getVerticalAlignment();
}
