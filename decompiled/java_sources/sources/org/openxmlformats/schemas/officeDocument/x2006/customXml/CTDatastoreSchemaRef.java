package org.openxmlformats.schemas.officeDocument.x2006.customXml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTDatastoreSchemaRef extends XmlObject {
    public static final DocumentFactory<CTDatastoreSchemaRef> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDatastoreSchemaRef> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdatastoreschemaref6e37type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getUri();

    void setUri(String str);

    XmlString xgetUri();

    void xsetUri(XmlString xmlString);
}
