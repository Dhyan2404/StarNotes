package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface ReferenceDocument extends XmlObject {
    public static final DocumentFactory<ReferenceDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ReferenceDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "reference4af6doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    ReferenceType addNewReference();

    ReferenceType getReference();

    void setReference(ReferenceType referenceType);
}
