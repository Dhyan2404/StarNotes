package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface DigestMethodDocument extends XmlObject {
    public static final DocumentFactory<DigestMethodDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DigestMethodDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "digestmethod576adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    DigestMethodType addNewDigestMethod();

    DigestMethodType getDigestMethod();

    void setDigestMethod(DigestMethodType digestMethodType);
}
