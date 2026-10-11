package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface UnsignedSignaturePropertiesDocument extends XmlObject {
    public static final DocumentFactory<UnsignedSignaturePropertiesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<UnsignedSignaturePropertiesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "unsignedsignatureproperties5cc8doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    UnsignedSignaturePropertiesType addNewUnsignedSignatureProperties();

    UnsignedSignaturePropertiesType getUnsignedSignatureProperties();

    void setUnsignedSignatureProperties(UnsignedSignaturePropertiesType unsignedSignaturePropertiesType);
}
