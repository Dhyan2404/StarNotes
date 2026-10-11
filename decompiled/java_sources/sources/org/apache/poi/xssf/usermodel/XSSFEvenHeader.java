package org.apache.poi.xssf.usermodel;

import org.apache.poi.ss.usermodel.Header;
import org.apache.poi.xssf.usermodel.extensions.XSSFHeaderFooter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTHeaderFooter;

/* loaded from: classes13.dex */
public class XSSFEvenHeader extends XSSFHeaderFooter implements Header {
    public XSSFEvenHeader(CTHeaderFooter cTHeaderFooter) {
        super(cTHeaderFooter);
        cTHeaderFooter.setDifferentOddEven(true);
    }

    @Override // org.apache.poi.xssf.usermodel.extensions.XSSFHeaderFooter
    public String getText() {
        return getHeaderFooter().getEvenHeader();
    }

    @Override // org.apache.poi.xssf.usermodel.extensions.XSSFHeaderFooter
    public void setText(String str) {
        if (str != null) {
            getHeaderFooter().setEvenHeader(str);
            return;
        }
        getHeaderFooter().unsetEvenHeader();
        if (getHeaderFooter().isSetEvenFooter()) {
            return;
        }
        getHeaderFooter().unsetDifferentOddEven();
    }
}
