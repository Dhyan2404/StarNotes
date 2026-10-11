package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface AttributeDocument extends XmlObject {
    public static final DocumentFactory<AttributeDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AttributeDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "attributeedb9doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    TopLevelAttribute addNewAttribute();

    TopLevelAttribute getAttribute();

    void setAttribute(TopLevelAttribute topLevelAttribute);
}
