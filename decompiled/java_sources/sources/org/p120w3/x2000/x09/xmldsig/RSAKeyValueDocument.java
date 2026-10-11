package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface RSAKeyValueDocument extends XmlObject {
    public static final DocumentFactory<RSAKeyValueDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RSAKeyValueDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "rsakeyvalue35efdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    RSAKeyValueType addNewRSAKeyValue();

    RSAKeyValueType getRSAKeyValue();

    void setRSAKeyValue(RSAKeyValueType rSAKeyValueType);
}
