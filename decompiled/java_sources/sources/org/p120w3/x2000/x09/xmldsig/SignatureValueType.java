package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface SignatureValueType extends XmlBase64Binary {
    public static final DocumentFactory<SignatureValueType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignatureValueType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signaturevaluetype58cctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getId();

    boolean isSetId();

    void setId(String str);

    void unsetId();

    XmlID xgetId();

    void xsetId(XmlID xmlID);
}
