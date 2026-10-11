package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface UnsignedPropertiesDocument extends XmlObject {
    public static final DocumentFactory<UnsignedPropertiesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<UnsignedPropertiesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "unsignedproperties238cdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    UnsignedPropertiesType addNewUnsignedProperties();

    UnsignedPropertiesType getUnsignedProperties();

    void setUnsignedProperties(UnsignedPropertiesType unsignedPropertiesType);
}
