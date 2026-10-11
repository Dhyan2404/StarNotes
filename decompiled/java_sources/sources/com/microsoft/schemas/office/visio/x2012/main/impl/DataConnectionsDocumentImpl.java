package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.DataConnectionsDocument;
import com.microsoft.schemas.office.visio.x2012.main.DataConnectionsType;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class DataConnectionsDocumentImpl extends XmlComplexContentImpl implements DataConnectionsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "DataConnections")};
    private static final long serialVersionUID = 1;

    public DataConnectionsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsDocument
    public DataConnectionsType addNewDataConnections() {
        DataConnectionsType dataConnectionsType;
        synchronized (monitor()) {
            check_orphaned();
            dataConnectionsType = (DataConnectionsType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return dataConnectionsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsDocument
    public DataConnectionsType getDataConnections() {
        DataConnectionsType dataConnectionsType;
        synchronized (monitor()) {
            check_orphaned();
            dataConnectionsType = (DataConnectionsType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (dataConnectionsType == null) {
                dataConnectionsType = null;
            }
        }
        return dataConnectionsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.DataConnectionsDocument
    public void setDataConnections(DataConnectionsType dataConnectionsType) {
        generatedSetterHelperImpl(dataConnectionsType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
