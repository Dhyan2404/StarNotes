package org.etsi.uri.x01903.v13.impl;

import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.DataObjectFormatDocument;
import org.etsi.uri.x01903.v13.DataObjectFormatType;

/* loaded from: classes13.dex */
public class DataObjectFormatDocumentImpl extends XmlComplexContentImpl implements DataObjectFormatDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "DataObjectFormat")};
    private static final long serialVersionUID = 1;

    public DataObjectFormatDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.etsi.uri.x01903.v13.DataObjectFormatDocument
    public DataObjectFormatType addNewDataObjectFormat() {
        DataObjectFormatType dataObjectFormatType;
        synchronized (monitor()) {
            check_orphaned();
            dataObjectFormatType = (DataObjectFormatType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return dataObjectFormatType;
    }

    @Override // org.etsi.uri.x01903.v13.DataObjectFormatDocument
    public DataObjectFormatType getDataObjectFormat() {
        DataObjectFormatType dataObjectFormatType;
        synchronized (monitor()) {
            check_orphaned();
            dataObjectFormatType = (DataObjectFormatType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (dataObjectFormatType == null) {
                dataObjectFormatType = null;
            }
        }
        return dataObjectFormatType;
    }

    @Override // org.etsi.uri.x01903.v13.DataObjectFormatDocument
    public void setDataObjectFormat(DataObjectFormatType dataObjectFormatType) {
        generatedSetterHelperImpl(dataObjectFormatType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
