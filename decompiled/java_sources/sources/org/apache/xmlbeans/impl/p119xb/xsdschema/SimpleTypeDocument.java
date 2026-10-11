package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface SimpleTypeDocument extends XmlObject {
    public static final DocumentFactory<SimpleTypeDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SimpleTypeDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "simpletypedef7doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    TopLevelSimpleType addNewSimpleType();

    TopLevelSimpleType getSimpleType();

    void setSimpleType(TopLevelSimpleType topLevelSimpleType);
}
