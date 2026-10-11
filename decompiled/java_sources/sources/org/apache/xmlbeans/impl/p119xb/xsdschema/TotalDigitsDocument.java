package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.impl.schema.ElementFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface TotalDigitsDocument extends XmlObject {
    public static final DocumentFactory<TotalDigitsDocument> Factory;
    public static final SchemaType type;

    /* loaded from: classes13.dex */
    public interface TotalDigits extends NumFacet {
        public static final ElementFactory<TotalDigits> Factory;
        public static final SchemaType type;

        static {
            ElementFactory<TotalDigits> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "totaldigits2615elemtype");
            Factory = elementFactory;
            type = elementFactory.getType();
        }
    }

    static {
        DocumentFactory<TotalDigitsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "totaldigits4a8bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    TotalDigits addNewTotalDigits();

    TotalDigits getTotalDigits();

    void setTotalDigits(TotalDigits totalDigits);
}
