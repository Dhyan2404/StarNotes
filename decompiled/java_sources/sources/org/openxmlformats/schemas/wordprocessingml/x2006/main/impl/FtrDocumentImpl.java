package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHdrFtr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.FtrDocument;

/* loaded from: classes16.dex */
public class FtrDocumentImpl extends XmlComplexContentImpl implements FtrDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "ftr")};
    private static final long serialVersionUID = 1;

    public FtrDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.FtrDocument
    public CTHdrFtr addNewFtr() {
        CTHdrFtr cTHdrFtr;
        synchronized (monitor()) {
            check_orphaned();
            cTHdrFtr = (CTHdrFtr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTHdrFtr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.FtrDocument
    public CTHdrFtr getFtr() {
        CTHdrFtr cTHdrFtr;
        synchronized (monitor()) {
            check_orphaned();
            cTHdrFtr = (CTHdrFtr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTHdrFtr == null) {
                cTHdrFtr = null;
            }
        }
        return cTHdrFtr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.FtrDocument
    public void setFtr(CTHdrFtr cTHdrFtr) {
        generatedSetterHelperImpl(cTHdrFtr, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
