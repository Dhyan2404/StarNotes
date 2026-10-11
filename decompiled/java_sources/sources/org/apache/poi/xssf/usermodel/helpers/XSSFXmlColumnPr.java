package org.apache.poi.xssf.usermodel.helpers;

import org.apache.poi.util.Internal;
import org.apache.poi.xssf.usermodel.XSSFTable;
import org.apache.poi.xssf.usermodel.XSSFTableColumn;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXmlColumnPr;

/* loaded from: classes13.dex */
public class XSSFXmlColumnPr {
    private CTXmlColumnPr ctXmlColumnPr;
    private XSSFTable table;
    private XSSFTableColumn tableColumn;

    @Internal
    public XSSFXmlColumnPr(XSSFTableColumn xSSFTableColumn, CTXmlColumnPr cTXmlColumnPr) {
        this.table = xSSFTableColumn.getTable();
        this.tableColumn = xSSFTableColumn;
        this.ctXmlColumnPr = cTXmlColumnPr;
    }

    public String getLocalXPath() {
        StringBuilder sb = new StringBuilder();
        String[] split = this.ctXmlColumnPr.getXpath().split("/");
        for (int length = this.table.getCommonXpath().split("/").length - 1; length < split.length; length++) {
            sb.append("/");
            sb.append(split[length]);
        }
        return sb.toString();
    }

    public long getMapId() {
        return this.ctXmlColumnPr.getMapId();
    }

    public XSSFTableColumn getTableColumn() {
        return this.tableColumn;
    }

    public String getXPath() {
        return this.ctXmlColumnPr.getXpath();
    }

    public String getXmlDataType() {
        return this.ctXmlColumnPr.getXmlDataType();
    }
}
