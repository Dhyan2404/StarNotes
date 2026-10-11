package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTAcc;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTAccPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg;

/* loaded from: classes14.dex */
public class CTAccImpl extends XmlComplexContentImpl implements CTAcc {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "accPr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "e")};
    private static final long serialVersionUID = 1;

    public CTAccImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTAcc
    public CTAccPr addNewAccPr() {
        CTAccPr cTAccPr;
        synchronized (monitor()) {
            check_orphaned();
            cTAccPr = (CTAccPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAccPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTAcc
    public CTOMathArg addNewE() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTAcc
    public CTAccPr getAccPr() {
        CTAccPr cTAccPr;
        synchronized (monitor()) {
            check_orphaned();
            cTAccPr = (CTAccPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTAccPr == null) {
                cTAccPr = null;
            }
        }
        return cTAccPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTAcc
    public CTOMathArg getE() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTOMathArg == null) {
                cTOMathArg = null;
            }
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTAcc
    public boolean isSetAccPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTAcc
    public void setAccPr(CTAccPr cTAccPr) {
        generatedSetterHelperImpl(cTAccPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTAcc
    public void setE(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTAcc
    public void unsetAccPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
