package org.p120w3.x2000.x09.xmldsig;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface SignatureMethodType extends XmlObject {
    public static final DocumentFactory<SignatureMethodType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignatureMethodType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signaturemethodtypefd5etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getAlgorithm();

    BigInteger getHMACOutputLength();

    boolean isSetHMACOutputLength();

    void setAlgorithm(String str);

    void setHMACOutputLength(BigInteger bigInteger);

    void unsetHMACOutputLength();

    XmlAnyURI xgetAlgorithm();

    HMACOutputLengthType xgetHMACOutputLength();

    void xsetAlgorithm(XmlAnyURI xmlAnyURI);

    void xsetHMACOutputLength(HMACOutputLengthType hMACOutputLengthType);
}
