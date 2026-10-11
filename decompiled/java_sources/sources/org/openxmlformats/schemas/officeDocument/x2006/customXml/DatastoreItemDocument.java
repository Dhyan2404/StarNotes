package org.openxmlformats.schemas.officeDocument.x2006.customXml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface DatastoreItemDocument extends XmlObject {
    public static final DocumentFactory<DatastoreItemDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DatastoreItemDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "datastoreitem0028doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDatastoreItem addNewDatastoreItem();

    CTDatastoreItem getDatastoreItem();

    void setDatastoreItem(CTDatastoreItem cTDatastoreItem);
}
