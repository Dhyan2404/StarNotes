package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface MinLengthDocument extends XmlObject {
    public static final DocumentFactory<MinLengthDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<MinLengthDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "minlengthe7fddoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    NumFacet addNewMinLength();

    NumFacet getMinLength();

    void setMinLength(NumFacet numFacet);
}
