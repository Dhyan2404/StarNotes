package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTBorderBox;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTBorderBoxPr;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArg;

/* loaded from: classes14.dex */
public class CTBorderBoxImpl extends XmlComplexContentImpl implements CTBorderBox {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "borderBoxPr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "e")};
    private static final long serialVersionUID = 1;

    public CTBorderBoxImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBorderBox
    public CTBorderBoxPr addNewBorderBoxPr() {
        CTBorderBoxPr cTBorderBoxPr;
        synchronized (monitor()) {
            check_orphaned();
            cTBorderBoxPr = (CTBorderBoxPr) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBorderBoxPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBorderBox
    public CTOMathArg addNewE() {
        CTOMathArg cTOMathArg;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathArg = (CTOMathArg) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOMathArg;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBorderBox
    public CTBorderBoxPr getBorderBoxPr() {
        CTBorderBoxPr cTBorderBoxPr;
        synchronized (monitor()) {
            check_orphaned();
            cTBorderBoxPr = (CTBorderBoxPr) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBorderBoxPr == null) {
                cTBorderBoxPr = null;
            }
        }
        return cTBorderBoxPr;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBorderBox
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

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBorderBox
    public boolean isSetBorderBoxPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBorderBox
    public void setBorderBoxPr(CTBorderBoxPr cTBorderBoxPr) {
        generatedSetterHelperImpl(cTBorderBoxPr, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBorderBox
    public void setE(CTOMathArg cTOMathArg) {
        generatedSetterHelperImpl(cTOMathArg, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTBorderBox
    public void unsetBorderBoxPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
