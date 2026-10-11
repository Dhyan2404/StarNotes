package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface ElementDocument extends XmlObject {
    public static final DocumentFactory<ElementDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ElementDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "element7f99doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    TopLevelElement addNewElement();

    TopLevelElement getElement();

    void setElement(TopLevelElement topLevelElement);
}
