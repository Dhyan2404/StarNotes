package org.apache.poi.xssf.binary;

import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.util.Internal;
import org.apache.poi.util.NotImplemented;
import org.apache.poi.xssf.usermodel.XSSFRichTextString;

@Internal
/* loaded from: classes13.dex */
class XSSFBRichTextString extends XSSFRichTextString {
    private final String string;

    public XSSFBRichTextString(String str) {
        this.string = str;
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFRichTextString, org.apache.poi.ss.usermodel.RichTextString
    @NotImplemented
    public void applyFont(int i, int i2, Font font) {
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFRichTextString, org.apache.poi.ss.usermodel.RichTextString
    @NotImplemented
    public void clearFormatting() {
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFRichTextString, org.apache.poi.ss.usermodel.RichTextString
    @NotImplemented
    public int getIndexOfFormattingRun(int i) {
        return 0;
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFRichTextString, org.apache.poi.ss.usermodel.RichTextString
    public String getString() {
        return this.string;
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFRichTextString, org.apache.poi.ss.usermodel.RichTextString
    public int length() {
        return this.string.length();
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFRichTextString, org.apache.poi.ss.usermodel.RichTextString
    @NotImplemented
    public int numFormattingRuns() {
        return 0;
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFRichTextString, org.apache.poi.ss.usermodel.RichTextString
    @NotImplemented
    public void applyFont(int i, int i2, short s) {
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFRichTextString, org.apache.poi.ss.usermodel.RichTextString
    @NotImplemented
    public void applyFont(Font font) {
    }

    @Override // org.apache.poi.xssf.usermodel.XSSFRichTextString, org.apache.poi.ss.usermodel.RichTextString
    @NotImplemented
    public void applyFont(short s) {
    }
}
