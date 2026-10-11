package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface UnsignedDataObjectPropertiesDocument extends XmlObject {
    public static final DocumentFactory<UnsignedDataObjectPropertiesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<UnsignedDataObjectPropertiesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "unsigneddataobjectproperties6435doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    UnsignedDataObjectPropertiesType addNewUnsignedDataObjectProperties();

    UnsignedDataObjectPropertiesType getUnsignedDataObjectProperties();

    void setUnsignedDataObjectProperties(UnsignedDataObjectPropertiesType unsignedDataObjectPropertiesType);
}
