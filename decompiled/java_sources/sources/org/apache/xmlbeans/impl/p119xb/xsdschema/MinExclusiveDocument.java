package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface MinExclusiveDocument extends XmlObject {
    public static final DocumentFactory<MinExclusiveDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<MinExclusiveDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "minexclusive64d7doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Facet addNewMinExclusive();

    Facet getMinExclusive();

    void setMinExclusive(Facet facet);
}
