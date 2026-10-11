package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsDocument;
import com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsType;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class DataRecordSetsDocumentImpl extends XmlComplexContentImpl implements DataRecordSetsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "DataRecordSets")};
    private static final long serialVersionUID = 1;

    public DataRecordSetsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsDocument
    public DataRecordSetsType addNewDataRecordSets() {
        DataRecordSetsType dataRecordSetsType;
        synchronized (monitor()) {
            check_orphaned();
            dataRecordSetsType = (DataRecordSetsType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return dataRecordSetsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsDocument
    public DataRecordSetsType getDataRecordSets() {
        DataRecordSetsType dataRecordSetsType;
        synchronized (monitor()) {
            check_orphaned();
            dataRecordSetsType = (DataRecordSetsType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (dataRecordSetsType == null) {
                dataRecordSetsType = null;
            }
        }
        return dataRecordSetsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataRecordSetsDocument
    public void setDataRecordSets(DataRecordSetsType dataRecordSetsType) {
        generatedSetterHelperImpl(dataRecordSetsType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
