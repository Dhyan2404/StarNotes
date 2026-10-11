package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface ObjectIdentifierDocument extends XmlObject {
    public static final DocumentFactory<ObjectIdentifierDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ObjectIdentifierDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "objectidentifier0d0cdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    ObjectIdentifierType addNewObjectIdentifier();

    ObjectIdentifierType getObjectIdentifier();

    void setObjectIdentifier(ObjectIdentifierType objectIdentifierType);
}
