package org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector;
import org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.CTVectorLpstr;

/* loaded from: classes14.dex */
public class CTVectorLpstrImpl extends XmlComplexContentImpl implements CTVectorLpstr {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "vector")};
    private static final long serialVersionUID = 1;

    public CTVectorLpstrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.CTVectorLpstr
    public CTVector addNewVector() {
        CTVector cTVector;
        synchronized (monitor()) {
            check_orphaned();
            cTVector = (CTVector) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTVector;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.CTVectorLpstr
    public CTVector getVector() {
        CTVector cTVector;
        synchronized (monitor()) {
            check_orphaned();
            cTVector = (CTVector) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTVector == null) {
                cTVector = null;
            }
        }
        return cTVector;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.extendedProperties.CTVectorLpstr
    public void setVector(CTVector cTVector) {
        generatedSetterHelperImpl(cTVector, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
