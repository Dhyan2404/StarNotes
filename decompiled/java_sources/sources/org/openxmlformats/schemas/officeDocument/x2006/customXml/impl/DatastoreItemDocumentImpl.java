package org.openxmlformats.schemas.officeDocument.x2006.customXml.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.customXml.CTDatastoreItem;
import org.openxmlformats.schemas.officeDocument.x2006.customXml.DatastoreItemDocument;

/* loaded from: classes14.dex */
public class DatastoreItemDocumentImpl extends XmlComplexContentImpl implements DatastoreItemDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/customXml", "datastoreItem")};
    private static final long serialVersionUID = 1;

    public DatastoreItemDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.DatastoreItemDocument
    public CTDatastoreItem addNewDatastoreItem() {
        CTDatastoreItem cTDatastoreItem;
        synchronized (monitor()) {
            check_orphaned();
            cTDatastoreItem = (CTDatastoreItem) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDatastoreItem;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.DatastoreItemDocument
    public CTDatastoreItem getDatastoreItem() {
        CTDatastoreItem cTDatastoreItem;
        synchronized (monitor()) {
            check_orphaned();
            cTDatastoreItem = (CTDatastoreItem) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDatastoreItem == null) {
                cTDatastoreItem = null;
            }
        }
        return cTDatastoreItem;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customXml.DatastoreItemDocument
    public void setDatastoreItem(CTDatastoreItem cTDatastoreItem) {
        generatedSetterHelperImpl(cTDatastoreItem, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
