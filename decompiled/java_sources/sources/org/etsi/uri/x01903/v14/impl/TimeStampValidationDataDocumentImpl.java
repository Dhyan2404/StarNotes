package org.etsi.uri.x01903.v14.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v14.TimeStampValidationDataDocument;
import org.etsi.uri.x01903.v14.ValidationDataType;

/* loaded from: classes13.dex */
public class TimeStampValidationDataDocumentImpl extends XmlComplexContentImpl implements TimeStampValidationDataDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_141_NS, "TimeStampValidationData")};
    private static final long serialVersionUID = 1;

    public TimeStampValidationDataDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v14.TimeStampValidationDataDocument
    public ValidationDataType addNewTimeStampValidationData() {
        ValidationDataType validationDataType;
        synchronized (monitor()) {
            check_orphaned();
            validationDataType = (ValidationDataType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return validationDataType;
    }

    @Override // org.etsi.uri.x01903.v14.TimeStampValidationDataDocument
    public ValidationDataType getTimeStampValidationData() {
        ValidationDataType validationDataType;
        synchronized (monitor()) {
            check_orphaned();
            validationDataType = (ValidationDataType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (validationDataType == null) {
                validationDataType = null;
            }
        }
        return validationDataType;
    }

    @Override // org.etsi.uri.x01903.v14.TimeStampValidationDataDocument
    public void setTimeStampValidationData(ValidationDataType validationDataType) {
        generatedSetterHelperImpl(validationDataType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
