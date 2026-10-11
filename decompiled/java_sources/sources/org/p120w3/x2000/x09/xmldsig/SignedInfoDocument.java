package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface SignedInfoDocument extends XmlObject {
    public static final DocumentFactory<SignedInfoDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignedInfoDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signedinfoc0e5doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    SignedInfoType addNewSignedInfo();

    SignedInfoType getSignedInfo();

    void setSignedInfo(SignedInfoType signedInfoType);
}
