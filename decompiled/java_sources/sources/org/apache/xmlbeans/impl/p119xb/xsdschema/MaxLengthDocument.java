package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface MaxLengthDocument extends XmlObject {
    public static final DocumentFactory<MaxLengthDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<MaxLengthDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "maxlengthf8abdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    NumFacet addNewMaxLength();

    NumFacet getMaxLength();

    void setMaxLength(NumFacet numFacet);
}
