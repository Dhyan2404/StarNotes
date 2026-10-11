package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CanonicalizationMethodDocument extends XmlObject {
    public static final DocumentFactory<CanonicalizationMethodDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CanonicalizationMethodDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "canonicalizationmethoda4fedoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CanonicalizationMethodType addNewCanonicalizationMethod();

    CanonicalizationMethodType getCanonicalizationMethod();

    void setCanonicalizationMethod(CanonicalizationMethodType canonicalizationMethodType);
}
