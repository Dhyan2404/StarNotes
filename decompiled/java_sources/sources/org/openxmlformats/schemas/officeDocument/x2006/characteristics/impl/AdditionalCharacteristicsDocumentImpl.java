package org.openxmlformats.schemas.officeDocument.x2006.characteristics.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.characteristics.AdditionalCharacteristicsDocument;
import org.openxmlformats.schemas.officeDocument.x2006.characteristics.CTAdditionalCharacteristics;

/* loaded from: classes14.dex */
public class AdditionalCharacteristicsDocumentImpl extends XmlComplexContentImpl implements AdditionalCharacteristicsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/characteristics", "additionalCharacteristics")};
    private static final long serialVersionUID = 1;

    public AdditionalCharacteristicsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.characteristics.AdditionalCharacteristicsDocument
    public CTAdditionalCharacteristics addNewAdditionalCharacteristics() {
        CTAdditionalCharacteristics cTAdditionalCharacteristics;
        synchronized (monitor()) {
            check_orphaned();
            cTAdditionalCharacteristics = (CTAdditionalCharacteristics) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAdditionalCharacteristics;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.characteristics.AdditionalCharacteristicsDocument
    public CTAdditionalCharacteristics getAdditionalCharacteristics() {
        CTAdditionalCharacteristics cTAdditionalCharacteristics;
        synchronized (monitor()) {
            check_orphaned();
            cTAdditionalCharacteristics = (CTAdditionalCharacteristics) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTAdditionalCharacteristics == null) {
                cTAdditionalCharacteristics = null;
            }
        }
        return cTAdditionalCharacteristics;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.characteristics.AdditionalCharacteristicsDocument
    public void setAdditionalCharacteristics(CTAdditionalCharacteristics cTAdditionalCharacteristics) {
        generatedSetterHelperImpl(cTAdditionalCharacteristics, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
