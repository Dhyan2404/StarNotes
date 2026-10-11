package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTSPrePr;

/* loaded from: classes14.dex */
public class CTSPreImpl extends XmlComplexContentImpl implements CTSPre {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sPrePr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sub"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "sup"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "e")};
    private static final long serialVersionUID = 1;

    public CTSPreImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public CTOMathArg addNewE() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public CTSPrePr addNewSPrePr() {
        CTSPrePr cTSPrePr;
        synchronized (monitor()) {
            check_orphaned();
            cTSPrePr = (CTSPrePr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSPrePr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public CTOMathArg addNewSub() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public CTOMathArg addNewSup() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public CTOMathArg getE() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTOMathArg == null) {
                cTOMathArg = null;
            }
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public CTSPrePr getSPrePr() {
        CTSPrePr cTSPrePr;
        synchronized (monitor()) {
            check_orphaned();
            cTSPrePr = (CTSPrePr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSPrePr == null) {
                cTSPrePr = null;
            }
        }
        return cTSPrePr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public CTOMathArg getSub() {
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public boolean isSetSPrePr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public void setE(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public void setSPrePr(CTSPrePr cTSPrePr) {
        generatedSetterHelperImpl(cTSPrePr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public void setSub(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public void setSup(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTSPre
    public void unsetSPrePr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
