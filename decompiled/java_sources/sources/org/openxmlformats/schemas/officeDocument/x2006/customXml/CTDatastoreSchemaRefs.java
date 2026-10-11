package org.openxmlformats.schemas.officeDocument.x2006.customXml;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTDatastoreSchemaRefs extends XmlObject {
    public static final DocumentFactory<CTDatastoreSchemaRefs> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDatastoreSchemaRefs> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdatastoreschemarefsefeatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDatastoreSchemaRef addNewSchemaRef();

    CTDatastoreSchemaRef getSchemaRefArray(int i);

    CTDatastoreSchemaRef[] getSchemaRefArray();

    List<CTDatastoreSchemaRef> getSchemaRefList();

    CTDatastoreSchemaRef insertNewSchemaRef(int i);

    void removeSchemaRef(int i);

    void setSchemaRefArray(int i, CTDatastoreSchemaRef cTDatastoreSchemaRef);

    void setSchemaRefArray(CTDatastoreSchemaRef[] cTDatastoreSchemaRefArr);

    int sizeOfSchemaRefArray();
}
