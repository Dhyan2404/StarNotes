package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SignedDataObjectPropertiesDocument extends XmlObject {
    public static final DocumentFactory<SignedDataObjectPropertiesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignedDataObjectPropertiesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signeddataobjectproperties4b5cdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SignedDataObjectPropertiesType addNewSignedDataObjectProperties();

    SignedDataObjectPropertiesType getSignedDataObjectProperties();

    void setSignedDataObjectProperties(SignedDataObjectPropertiesType signedDataObjectPropertiesType);
}
