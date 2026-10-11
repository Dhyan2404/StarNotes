package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface AttributeRevocationRefsDocument extends XmlObject {
    public static final DocumentFactory<AttributeRevocationRefsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AttributeRevocationRefsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "attributerevocationrefsc92cdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CompleteRevocationRefsType addNewAttributeRevocationRefs();

    CompleteRevocationRefsType getAttributeRevocationRefs();

    void setAttributeRevocationRefs(CompleteRevocationRefsType completeRevocationRefsType);
}
