package org.apache.poi.xssf.usermodel;

import org.apache.poi.ss.usermodel.BuiltinFormats;
import org.apache.poi.ss.usermodel.DataFormat;
import org.apache.poi.xssf.model.StylesTable;

/* loaded from: classes13.dex */
public class XSSFDataFormat implements DataFormat {
    private final StylesTable stylesSource;

    public XSSFDataFormat(StylesTable stylesTable) {
        this.stylesSource = stylesTable;
    }

    @Override // org.apache.poi.ss.usermodel.DataFormat
    public short getFormat(String str) {
        int builtinFormat = BuiltinFormats.getBuiltinFormat(str);
        if (builtinFormat == -1) {
            builtinFormat = this.stylesSource.putNumberFormat(str);
        }
        return (short) builtinFormat;
    }

    public void putFormat(short s, String str) {
        this.stylesSource.putNumberFormat(s, str);
    }

    @Override // org.apache.poi.ss.usermodel.DataFormat
    public String getFormat(short s) {
        String numberFormatAt = this.stylesSource.getNumberFormatAt(s);
        return numberFormatAt == null ? BuiltinFormats.getBuiltinFormat(s) : numberFormatAt;
    }
}
