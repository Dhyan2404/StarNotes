package org.apache.poi.xdgf.usermodel;

import com.microsoft.schemas.office.visio.x2012.main.PageSheetType;

/* loaded from: classes13.dex */
public class XDGFPageSheet extends XDGFSheet {
    PageSheetType _pageSheet;

    public XDGFPageSheet(PageSheetType pageSheetType, XDGFDocument xDGFDocument) {
        super(pageSheetType, xDGFDocument);
        this._pageSheet = pageSheetType;
    }

    @Override // org.apache.poi.xdgf.usermodel.XDGFSheet
    public PageSheetType getXmlObject() {
        return this._pageSheet;
    }
}
