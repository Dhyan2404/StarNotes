package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTBar;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTBarPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg;

/* loaded from: classes14.dex */
public class CTBarImpl extends XmlComplexContentImpl implements CTBar {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "barPr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "e")};
    private static final long serialVersionUID = 1;

    public CTBarImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBar
    public CTBarPr addNewBarPr() {
        CTBarPr cTBarPr;
        synchronized (monitor()) {
            check_orphaned();
            cTBarPr = (CTBarPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBarPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBar
    public CTOMathArg addNewE() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBar
    public CTBarPr getBarPr() {
        CTBarPr cTBarPr;
        synchronized (monitor()) {
            check_orphaned();
            cTBarPr = (CTBarPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBarPr == null) {
                cTBarPr = null;
            }
        }
        return cTBarPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBar
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBar
    public boolean isSetBarPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBar
    public void setBarPr(CTBarPr cTBarPr) {
        generatedSetterHelperImpl(cTBarPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBar
    public void setE(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBar
    public void unsetBarPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
