package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.p120w3.x2000.x09.xmldsig.DigestMethodType;
import org.p120w3.x2000.x09.xmldsig.DigestValueType;

/* loaded from: classes13.dex */
public interface ReferenceInfoType extends XmlObject {
    public static final DocumentFactory<ReferenceInfoType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ReferenceInfoType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "referenceinfotype5cf5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    DigestMethodType addNewDigestMethod();

    DigestMethodType getDigestMethod();

    byte[] getDigestValue();

    String getId();

    String getURI();

    boolean isSetId();

    boolean isSetURI();

    void setDigestMethod(DigestMethodType digestMethodType);

    void setDigestValue(byte[] bArr);

    void setId(String str);

    void setURI(String str);

    void unsetId();

    void unsetURI();

    DigestValueType xgetDigestValue();

    XmlID xgetId();

    XmlAnyURI xgetURI();

    void xsetDigestValue(DigestValueType digestValueType);

    void xsetId(XmlID xmlID);

    void xsetURI(XmlAnyURI xmlAnyURI);
}
