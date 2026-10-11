package org.apache.poi.xssf.usermodel;

import com.onyx.android.sdk.data.common.data.FileTypeConstant;

/* loaded from: classes13.dex */
public enum XSSFWorkbookType {
    XLSX(XSSFRelation.WORKBOOK.getContentType(), FileTypeConstant.XLSX),
    XLSM(XSSFRelation.MACROS_WORKBOOK.getContentType(), "xlsm");

    private final String _contentType;
    private final String _extension;

    XSSFWorkbookType(String str, String str2) {
        this._contentType = str;
        this._extension = str2;
    }

    public String getContentType() {
        return this._contentType;
    }

    public String getExtension() {
        return this._extension;
    }
}
