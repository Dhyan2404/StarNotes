package org.apache.poi.xssf.usermodel;

import org.apache.poi.util.Internal;
import org.apache.poi.xssf.usermodel.helpers.XSSFXmlColumnPr;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTableColumn;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXmlColumnPr;

/* loaded from: classes13.dex */
public class XSSFTableColumn {
    private final CTTableColumn ctTableColumn;
    private final XSSFTable table;
    private XSSFXmlColumnPr xmlColumnPr;

    @Internal
    public XSSFTableColumn(XSSFTable xSSFTable, CTTableColumn cTTableColumn) {
        this.table = xSSFTable;
        this.ctTableColumn = cTTableColumn;
    }

    public int getColumnIndex() {
        return this.table.findColumnIndex(getName());
    }

    public long getId() {
        return this.ctTableColumn.getId();
    }

    public String getName() {
        return this.ctTableColumn.getName();
    }

    public XSSFTable getTable() {
        return this.table;
    }

    public XSSFXmlColumnPr getXmlColumnPr() {
        CTXmlColumnPr xmlColumnPr;
        if (this.xmlColumnPr == null && (xmlColumnPr = this.ctTableColumn.getXmlColumnPr()) != null) {
            this.xmlColumnPr = new XSSFXmlColumnPr(this, xmlColumnPr);
        }
        return this.xmlColumnPr;
    }

    public void setId(long j) {
        this.ctTableColumn.setId(j);
    }

    public void setName(String str) {
        this.ctTableColumn.setName(str);
    }
}
