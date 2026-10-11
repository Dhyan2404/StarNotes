package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface FractionDigitsDocument extends XmlObject {
    public static final DocumentFactory<FractionDigitsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FractionDigitsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "fractiondigitsed7bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    NumFacet addNewFractionDigits();

    NumFacet getFractionDigits();

    void setFractionDigits(NumFacet numFacet);
}
