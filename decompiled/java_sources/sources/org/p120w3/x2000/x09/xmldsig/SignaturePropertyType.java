package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface SignaturePropertyType extends XmlObject {
    public static final DocumentFactory<SignaturePropertyType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignaturePropertyType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signaturepropertytypecdaatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getId();

    String getTarget();

    boolean isSetId();

    void setId(String str);

    void setTarget(String str);

    void unsetId();

    XmlID xgetId();

    XmlAnyURI xgetTarget();

    void xsetId(XmlID xmlID);

    void xsetTarget(XmlAnyURI xmlAnyURI);
}
