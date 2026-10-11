package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CanonicalizationMethodType extends XmlObject {
    public static final DocumentFactory<CanonicalizationMethodType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CanonicalizationMethodType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "canonicalizationmethodtypeec74type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getAlgorithm();

    void setAlgorithm(String str);

    XmlAnyURI xgetAlgorithm();

    void xsetAlgorithm(XmlAnyURI xmlAnyURI);
}
