package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryTable;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.QueryTableDocument;

/* loaded from: classes15.dex */
public class QueryTableDocumentImpl extends XmlComplexContentImpl implements QueryTableDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "queryTable")};
    private static final long serialVersionUID = 1;

    public QueryTableDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.QueryTableDocument
    public CTQueryTable addNewQueryTable() {
        CTQueryTable cTQueryTable;
        synchronized (monitor()) {
            check_orphaned();
            cTQueryTable = (CTQueryTable) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTQueryTable;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.QueryTableDocument
    public CTQueryTable getQueryTable() {
        CTQueryTable cTQueryTable;
        synchronized (monitor()) {
            check_orphaned();
            cTQueryTable = (CTQueryTable) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTQueryTable == null) {
                cTQueryTable = null;
            }
        }
        return cTQueryTable;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.QueryTableDocument
    public void setQueryTable(CTQueryTable cTQueryTable) {
        generatedSetterHelperImpl(cTQueryTable, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
