package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface X509DataDocument extends XmlObject {
    public static final DocumentFactory<X509DataDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<X509DataDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "x509data5c7fdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    X509DataType addNewX509Data();

    X509DataType getX509Data();

    void setX509Data(X509DataType x509DataType);
}
