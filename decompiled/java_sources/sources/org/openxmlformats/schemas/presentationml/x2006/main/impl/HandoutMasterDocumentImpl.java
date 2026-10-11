package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTHandoutMaster;
import org.openxmlformats.schemas.presentationml.x2006.main.HandoutMasterDocument;

/* loaded from: classes14.dex */
public class HandoutMasterDocumentImpl extends XmlComplexContentImpl implements HandoutMasterDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "handoutMaster")};
    private static final long serialVersionUID = 1;

    public HandoutMasterDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.HandoutMasterDocument
    public CTHandoutMaster addNewHandoutMaster() {
        CTHandoutMaster cTHandoutMaster;
        synchronized (monitor()) {
            check_orphaned();
            cTHandoutMaster = (CTHandoutMaster) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTHandoutMaster;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.HandoutMasterDocument
    public CTHandoutMaster getHandoutMaster() {
        CTHandoutMaster cTHandoutMaster;
        synchronized (monitor()) {
            check_orphaned();
            cTHandoutMaster = (CTHandoutMaster) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTHandoutMaster == null) {
                cTHandoutMaster = null;
            }
        }
        return cTHandoutMaster;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.HandoutMasterDocument
    public void setHandoutMaster(CTHandoutMaster cTHandoutMaster) {
        generatedSetterHelperImpl(cTHandoutMaster, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
