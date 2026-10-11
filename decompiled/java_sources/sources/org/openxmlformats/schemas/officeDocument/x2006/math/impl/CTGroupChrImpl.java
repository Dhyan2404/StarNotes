package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChrPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg;

/* loaded from: classes14.dex */
public class CTGroupChrImpl extends XmlComplexContentImpl implements CTGroupChr {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "groupChrPr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "e")};
    private static final long serialVersionUID = 1;

    public CTGroupChrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChr
    public CTOMathArg addNewE() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChr
    public CTGroupChrPr addNewGroupChrPr() {
        CTGroupChrPr cTGroupChrPr;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupChrPr = (CTGroupChrPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGroupChrPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChr
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChr
    public CTGroupChrPr getGroupChrPr() {
        CTGroupChrPr cTGroupChrPr;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupChrPr = (CTGroupChrPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGroupChrPr == null) {
                cTGroupChrPr = null;
            }
        }
        return cTGroupChrPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChr
    public boolean isSetGroupChrPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChr
    public void setE(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChr
    public void setGroupChrPr(CTGroupChrPr cTGroupChrPr) {
        generatedSetterHelperImpl(cTGroupChrPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTGroupChr
    public void unsetGroupChrPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
