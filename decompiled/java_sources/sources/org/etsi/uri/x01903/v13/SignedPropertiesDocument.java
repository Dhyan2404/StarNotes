package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SignedPropertiesDocument extends XmlObject {
    public static final DocumentFactory<SignedPropertiesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignedPropertiesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signedproperties7f73doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SignedPropertiesType addNewSignedProperties();

    SignedPropertiesType getSignedProperties();

    void setSignedProperties(SignedPropertiesType signedPropertiesType);
}
