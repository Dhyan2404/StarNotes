package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLowPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg;

/* loaded from: classes14.dex */
public class CTLimLowImpl extends XmlComplexContentImpl implements CTLimLow {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "limLowPr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "e"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "lim")};
    private static final long serialVersionUID = 1;

    public CTLimLowImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow
    public CTOMathArg addNewE() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow
    public CTOMathArg addNewLim() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow
    public CTLimLowPr addNewLimLowPr() {
        CTLimLowPr cTLimLowPr;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLowPr = (CTLimLowPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTLimLowPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow
    public CTOMathArg getLim() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTOMathArg == null) {
                cTOMathArg = null;
            }
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow
    public CTLimLowPr getLimLowPr() {
        CTLimLowPr cTLimLowPr;
        synchronized (monitor()) {
            check_orphaned();
            cTLimLowPr = (CTLimLowPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTLimLowPr == null) {
                cTLimLowPr = null;
            }
        }
        return cTLimLowPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow
    public boolean isSetLimLowPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow
    public void setE(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow
    public void setLim(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow
    public void setLimLowPr(CTLimLowPr cTLimLowPr) {
        generatedSetterHelperImpl(cTLimLowPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTLimLow
    public void unsetLimLowPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
