package org.apache.poi.convert.xwpf.property;

import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;

/* loaded from: classes12.dex */
public interface ITblPropertyFetcher extends BordersFetcher {
    CTBorder getCTBorder(XWPFTable.Border border);

    @Override // org.apache.poi.convert.xwpf.property.BordersFetcher
    CTBorder[] getCTBorders();

    double getCellMargin(int i);

    double[] getCellMargin();

    boolean isSetTcBorders();

    boolean isSetTcMar();
}
