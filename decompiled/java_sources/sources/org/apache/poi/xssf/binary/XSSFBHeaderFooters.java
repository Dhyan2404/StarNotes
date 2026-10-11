package org.apache.poi.xssf.binary;

import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
class XSSFBHeaderFooters {
    private XSSFBHeaderFooter footer;
    private XSSFBHeaderFooter footerEven;
    private XSSFBHeaderFooter footerFirst;
    private XSSFBHeaderFooter header;
    private XSSFBHeaderFooter headerEven;
    private XSSFBHeaderFooter headerFirst;

    public static XSSFBHeaderFooters parse(byte[] bArr) {
        XSSFBHeaderFooters xSSFBHeaderFooters = new XSSFBHeaderFooters();
        xSSFBHeaderFooters.header = new XSSFBHeaderFooter(Constants.NAME_HEADER, true);
        xSSFBHeaderFooters.footer = new XSSFBHeaderFooter(Constants.NAME_FOOTER, false);
        xSSFBHeaderFooters.headerEven = new XSSFBHeaderFooter("evenHeader", true);
        xSSFBHeaderFooters.footerEven = new XSSFBHeaderFooter("evenFooter", false);
        xSSFBHeaderFooters.headerFirst = new XSSFBHeaderFooter("firstHeader", true);
        xSSFBHeaderFooters.footerFirst = new XSSFBHeaderFooter("firstFooter", false);
        int readHeaderFooter = readHeaderFooter(bArr, 2, xSSFBHeaderFooters.header) + 2;
        int readHeaderFooter2 = readHeaderFooter + readHeaderFooter(bArr, readHeaderFooter, xSSFBHeaderFooters.footer);
        int readHeaderFooter3 = readHeaderFooter2 + readHeaderFooter(bArr, readHeaderFooter2, xSSFBHeaderFooters.headerEven);
        int readHeaderFooter4 = readHeaderFooter3 + readHeaderFooter(bArr, readHeaderFooter3, xSSFBHeaderFooters.footerEven);
        readHeaderFooter(bArr, readHeaderFooter4 + readHeaderFooter(bArr, readHeaderFooter4, xSSFBHeaderFooters.headerFirst), xSSFBHeaderFooters.footerFirst);
        return xSSFBHeaderFooters;
    }

    private static int readHeaderFooter(byte[] bArr, int i, XSSFBHeaderFooter xSSFBHeaderFooter) {
        if (i + 4 >= bArr.length) {
            return 0;
        }
        StringBuilder sb = new StringBuilder();
        int readXLNullableWideString = XSSFBUtils.readXLNullableWideString(bArr, i, sb);
        xSSFBHeaderFooter.setRawString(sb.toString());
        return readXLNullableWideString;
    }

    public XSSFBHeaderFooter getFooter() {
        return this.footer;
    }

    public XSSFBHeaderFooter getFooterEven() {
        return this.footerEven;
    }

    public XSSFBHeaderFooter getFooterFirst() {
        return this.footerFirst;
    }

    public XSSFBHeaderFooter getHeader() {
        return this.header;
    }

    public XSSFBHeaderFooter getHeaderEven() {
        return this.headerEven;
    }

    public XSSFBHeaderFooter getHeaderFirst() {
        return this.headerFirst;
    }
}
