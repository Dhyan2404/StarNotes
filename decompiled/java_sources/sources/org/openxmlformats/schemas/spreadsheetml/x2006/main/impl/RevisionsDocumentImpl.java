package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisions;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.RevisionsDocument;

/* loaded from: classes15.dex */
public class RevisionsDocumentImpl extends XmlComplexContentImpl implements RevisionsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "revisions")};
    private static final long serialVersionUID = 1;

    public RevisionsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.RevisionsDocument
    public CTRevisions addNewRevisions() {
        CTRevisions cTRevisions;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisions = (CTRevisions) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRevisions;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.RevisionsDocument
    public CTRevisions getRevisions() {
        CTRevisions cTRevisions;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisions = (CTRevisions) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRevisions == null) {
                cTRevisions = null;
            }
        }
        return cTRevisions;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.RevisionsDocument
    public void setRevisions(CTRevisions cTRevisions) {
        generatedSetterHelperImpl(cTRevisions, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
