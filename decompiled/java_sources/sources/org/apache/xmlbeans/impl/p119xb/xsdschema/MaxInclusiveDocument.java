package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface MaxInclusiveDocument extends XmlObject {
    public static final DocumentFactory<MaxInclusiveDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<MaxInclusiveDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "maxinclusive93dbdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Facet addNewMaxInclusive();

    Facet getMaxInclusive();

    void setMaxInclusive(Facet facet);
}
