package org.openxmlformats.schemas.officeDocument.x2006.customXml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;

/* loaded from: classes14.dex */
public interface CTDatastoreItem extends XmlObject {
    public static final DocumentFactory<CTDatastoreItem> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDatastoreItem> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdatastoreitem24fctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDatastoreSchemaRefs addNewSchemaRefs();

    String getItemID();

    CTDatastoreSchemaRefs getSchemaRefs();

    boolean isSetSchemaRefs();

    void setItemID(String str);

    void setSchemaRefs(CTDatastoreSchemaRefs cTDatastoreSchemaRefs);

    void unsetSchemaRefs();

    STGuid xgetItemID();

    void xsetItemID(STGuid sTGuid);
}
