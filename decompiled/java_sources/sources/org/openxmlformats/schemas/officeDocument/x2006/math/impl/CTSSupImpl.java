package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSSupPr;

/* loaded from: classes14.dex */
public class CTSSupImpl extends XmlComplexContentImpl implements CTSSup {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sSupPr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "e"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sup")};
    private static final long serialVersionUID = 1;

    public CTSSupImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup
    public CTOMathArg addNewE() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup
    public CTSSupPr addNewSSupPr() {
        CTSSupPr cTSSupPr;
        synchronized (monitor()) {
            check_orphaned();
            cTSSupPr = (CTSSupPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSSupPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup
    public CTOMathArg addNewSup() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup
    public CTSSupPr getSSupPr() {
        CTSSupPr cTSSupPr;
        synchronized (monitor()) {
            check_orphaned();
            cTSSupPr = (CTSSupPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSSupPr == null) {
                cTSSupPr = null;
            }
        }
        return cTSSupPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup
    public CTOMathArg getSup() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup
    public boolean isSetSSupPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup
    public void setE(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup
    public void setSSupPr(CTSSupPr cTSSupPr) {
        generatedSetterHelperImpl(cTSSupPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup
    public void setSup(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSSup
    public void unsetSSupPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
