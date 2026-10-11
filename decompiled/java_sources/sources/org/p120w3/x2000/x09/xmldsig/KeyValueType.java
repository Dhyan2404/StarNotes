package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface KeyValueType extends XmlObject {
    public static final DocumentFactory<KeyValueType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<KeyValueType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "keyvaluetype1d33type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    DSAKeyValueType addNewDSAKeyValue();

    RSAKeyValueType addNewRSAKeyValue();

    DSAKeyValueType getDSAKeyValue();

    RSAKeyValueType getRSAKeyValue();

    boolean isSetDSAKeyValue();

    boolean isSetRSAKeyValue();

    void setDSAKeyValue(DSAKeyValueType dSAKeyValueType);

    void setRSAKeyValue(RSAKeyValueType rSAKeyValueType);

    void unsetDSAKeyValue();

    void unsetRSAKeyValue();
}
