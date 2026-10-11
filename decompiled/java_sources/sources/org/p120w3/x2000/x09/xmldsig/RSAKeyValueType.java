package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface RSAKeyValueType extends XmlObject {
    public static final DocumentFactory<RSAKeyValueType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RSAKeyValueType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "rsakeyvaluetypefec5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    byte[] getExponent();

    byte[] getModulus();

    void setExponent(byte[] bArr);

    void setModulus(byte[] bArr);

    CryptoBinary xgetExponent();

    CryptoBinary xgetModulus();

    void xsetExponent(CryptoBinary cryptoBinary);

    void xsetModulus(CryptoBinary cryptoBinary);
}
