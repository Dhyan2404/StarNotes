package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface AttributeRevocationValuesDocument extends XmlObject {
    public static final DocumentFactory<AttributeRevocationValuesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AttributeRevocationValuesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "attributerevocationvalues774edoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    RevocationValuesType addNewAttributeRevocationValues();

    RevocationValuesType getAttributeRevocationValues();

    void setAttributeRevocationValues(RevocationValuesType revocationValuesType);
}
