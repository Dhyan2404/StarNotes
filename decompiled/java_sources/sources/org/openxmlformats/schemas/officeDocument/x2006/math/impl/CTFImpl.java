package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTF;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTFPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg;

/* loaded from: classes14.dex */
public class CTFImpl extends XmlComplexContentImpl implements CTF {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "fPr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "num"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "den")};
    private static final long serialVersionUID = 1;

    public CTFImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTF
    public CTOMathArg addNewDen() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTF
    public CTFPr addNewFPr() {
        CTFPr cTFPr;
        synchronized (monitor()) {
            check_orphaned();
            cTFPr = (CTFPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTF
    public CTOMathArg addNewNum() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTF
    public CTOMathArg getDen() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTF
    public CTFPr getFPr() {
        CTFPr cTFPr;
        synchronized (monitor()) {
            check_orphaned();
            cTFPr = (CTFPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTFPr == null) {
                cTFPr = null;
            }
        }
        return cTFPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTF
    public CTOMathArg getNum() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTF
    public boolean isSetFPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTF
    public void setDen(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTF
    public void setFPr(CTFPr cTFPr) {
        generatedSetterHelperImpl(cTFPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTF
    public void setNum(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTF
    public void unsetFPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
