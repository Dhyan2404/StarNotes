package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTPhant;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTPhantPr;

/* loaded from: classes14.dex */
public class CTPhantImpl extends XmlComplexContentImpl implements CTPhant {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "phantPr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "e")};
    private static final long serialVersionUID = 1;

    public CTPhantImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTPhant
    public CTOMathArg addNewE() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTPhant
    public CTPhantPr addNewPhantPr() {
        CTPhantPr cTPhantPr;
        synchronized (monitor()) {
            check_orphaned();
            cTPhantPr = (CTPhantPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPhantPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTPhant
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTPhant
    public CTPhantPr getPhantPr() {
        CTPhantPr cTPhantPr;
        synchronized (monitor()) {
            check_orphaned();
            cTPhantPr = (CTPhantPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPhantPr == null) {
                cTPhantPr = null;
            }
        }
        return cTPhantPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTPhant
    public boolean isSetPhantPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTPhant
    public void setE(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTPhant
    public void setPhantPr(CTPhantPr cTPhantPr) {
        generatedSetterHelperImpl(cTPhantPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTPhant
    public void unsetPhantPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
