package org.openxmlformats.schemas.officeDocument.x2006.math.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTInteger2;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArgPr;

/* loaded from: classes14.dex */
public class CTOMathArgPrImpl extends XmlComplexContentImpl implements CTOMathArgPr {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/math", "argSz")};
    private static final long serialVersionUID = 1;

    public CTOMathArgPrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArgPr
    public CTInteger2 addNewArgSz() {
        CTInteger2 cTInteger2;
        synchronized (monitor()) {
            check_orphaned();
            cTInteger2 = (CTInteger2) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTInteger2;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArgPr
    public CTInteger2 getArgSz() {
        CTInteger2 cTInteger2;
        synchronized (monitor()) {
            check_orphaned();
            cTInteger2 = (CTInteger2) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTInteger2 == null) {
                cTInteger2 = null;
            }
        }
        return cTInteger2;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArgPr
    public boolean isSetArgSz() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArgPr
    public void setArgSz(CTInteger2 cTInteger2) {
        generatedSetterHelperImpl(cTInteger2, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathArgPr
    public void unsetArgSz() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
