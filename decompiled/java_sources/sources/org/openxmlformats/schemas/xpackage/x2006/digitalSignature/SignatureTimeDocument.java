package org.openxmlformats.schemas.xpackage.x2006.digitalSignature;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface SignatureTimeDocument extends XmlObject {
    public static final DocumentFactory<SignatureTimeDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignatureTimeDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signaturetime9c91doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSignatureTime addNewSignatureTime();

    CTSignatureTime getSignatureTime();

    void setSignatureTime(CTSignatureTime cTSignatureTime);
}
