package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTable;
import org.openxmlformats.schemas.drawingml.x2006.main.TblDocument;

/* loaded from: classes14.dex */
public class TblDocumentImpl extends XmlComplexContentImpl implements TblDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "tbl")};
    private static final long serialVersionUID = 1;

    public TblDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.TblDocument
    public CTTable addNewTbl() {
        CTTable cTTable;
        synchronized (monitor()) {
            check_orphaned();
            cTTable = (CTTable) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTable;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.TblDocument
    public CTTable getTbl() {
        CTTable cTTable;
        synchronized (monitor()) {
            check_orphaned();
            cTTable = (CTTable) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTable == null) {
                cTTable = null;
            }
        }
        return cTTable;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.TblDocument
    public void setTbl(CTTable cTTable) {
        generatedSetterHelperImpl(cTTable, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
