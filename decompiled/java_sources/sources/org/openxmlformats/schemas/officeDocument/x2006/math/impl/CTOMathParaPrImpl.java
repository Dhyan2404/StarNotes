package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathJc;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathParaPr;

/* loaded from: classes14.dex */
public class CTOMathParaPrImpl extends XmlComplexContentImpl implements CTOMathParaPr {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "jc")};
    private static final long serialVersionUID = 1;

    public CTOMathParaPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathParaPr
    public CTOMathJc addNewJc() {
        CTOMathJc cTOMathJc;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathJc = (CTOMathJc) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOMathJc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathParaPr
    public CTOMathJc getJc() {
        CTOMathJc cTOMathJc;
        synchronized (monitor()) {
            check_orphaned();
            cTOMathJc = (CTOMathJc) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOMathJc == null) {
                cTOMathJc = null;
            }
        }
        return cTOMathJc;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathParaPr
    public boolean isSetJc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathParaPr
    public void setJc(CTOMathJc cTOMathJc) {
        generatedSetterHelperImpl(cTOMathJc, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathParaPr
    public void unsetJc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
