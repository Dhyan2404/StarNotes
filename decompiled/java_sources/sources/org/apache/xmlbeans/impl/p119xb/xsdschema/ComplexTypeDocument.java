package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface ComplexTypeDocument extends XmlObject {
    public static final DocumentFactory<ComplexTypeDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ComplexTypeDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "complextype83cbdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    TopLevelComplexType addNewComplexType();

    TopLevelComplexType getComplexType();

    void setComplexType(TopLevelComplexType topLevelComplexType);
}
