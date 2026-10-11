package org.apache.poi.xssf.binary;

import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
class XSSFBRichStr {
    private final String phoneticString;
    private final String string;

    public XSSFBRichStr(String str, String str2) {
        this.string = str;
        this.phoneticString = str2;
    }

    public static XSSFBRichStr build(byte[] bArr, int i) throws XSSFBParseException {
        byte b = bArr[i];
        StringBuilder sb = new StringBuilder();
        XSSFBUtils.readXLWideString(bArr, i + 1, sb);
        return new XSSFBRichStr(sb.toString(), "");
    }

    public String getString() {
        return this.string;
    }
}
