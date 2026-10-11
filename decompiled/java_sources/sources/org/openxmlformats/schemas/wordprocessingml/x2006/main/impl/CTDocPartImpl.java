package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPart;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPartPr;

/* loaded from: classes16.dex */
public class CTDocPartImpl extends XmlComplexContentImpl implements CTDocPart {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "docPartPr"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "docPartBody")};
    private static final long serialVersionUID = 1;

    public CTDocPartImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPart
    public CTBody addNewDocPartBody() {
        CTBody cTBody;
        synchronized (monitor()) {
            check_orphaned();
            cTBody = (CTBody) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTBody;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPart
    public CTDocPartPr addNewDocPartPr() {
        CTDocPartPr cTDocPartPr;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartPr = (CTDocPartPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDocPartPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPart
    public CTBody getDocPartBody() {
        CTBody cTBody;
        synchronized (monitor()) {
            check_orphaned();
            cTBody = (CTBody) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTBody == null) {
                cTBody = null;
            }
        }
        return cTBody;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPart
    public CTDocPartPr getDocPartPr() {
        CTDocPartPr cTDocPartPr;
        synchronized (monitor()) {
            check_orphaned();
            cTDocPartPr = (CTDocPartPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDocPartPr == null) {
                cTDocPartPr = null;
            }
        }
        return cTDocPartPr;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPart
    public boolean isSetDocPartBody() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPart
    public boolean isSetDocPartPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPart
    public void setDocPartBody(CTBody cTBody) {
        generatedSetterHelperImpl(cTBody, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPart
    public void setDocPartPr(CTDocPartPr cTDocPartPr) {
        generatedSetterHelperImpl(cTDocPartPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPart
    public void unsetDocPartBody() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocPart
    public void unsetDocPartPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
