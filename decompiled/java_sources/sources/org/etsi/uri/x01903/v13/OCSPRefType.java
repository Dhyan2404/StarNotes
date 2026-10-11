package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface OCSPRefType extends XmlObject {
    public static final DocumentFactory<OCSPRefType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OCSPRefType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ocspreftype089etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    DigestAlgAndValueType addNewDigestAlgAndValue();

    OCSPIdentifierType addNewOCSPIdentifier();

    DigestAlgAndValueType getDigestAlgAndValue();

    OCSPIdentifierType getOCSPIdentifier();

    boolean isSetDigestAlgAndValue();

    void setDigestAlgAndValue(DigestAlgAndValueType digestAlgAndValueType);

    void setOCSPIdentifier(OCSPIdentifierType oCSPIdentifierType);

    void unsetDigestAlgAndValue();
}
