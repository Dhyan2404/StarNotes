package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTOleObject;
import org.openxmlformats.schemas.presentationml.x2006.main.OleObjDocument;

/* loaded from: classes14.dex */
public class OleObjDocumentImpl extends XmlComplexContentImpl implements OleObjDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "oleObj")};
    private static final long serialVersionUID = 1;

    public OleObjDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.OleObjDocument
    public CTOleObject addNewOleObj() {
        CTOleObject cTOleObject;
        synchronized (monitor()) {
            check_orphaned();
            cTOleObject = (CTOleObject) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOleObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.OleObjDocument
    public CTOleObject getOleObj() {
        CTOleObject cTOleObject;
        synchronized (monitor()) {
            check_orphaned();
            cTOleObject = (CTOleObject) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOleObject == null) {
                cTOleObject = null;
            }
        }
        return cTOleObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.OleObjDocument
    public void setOleObj(CTOleObject cTOleObject) {
        generatedSetterHelperImpl(cTOleObject, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
