package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface KeyInfoDocument extends XmlObject {
    public static final DocumentFactory<KeyInfoDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<KeyInfoDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "keyinfoe194doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    KeyInfoType addNewKeyInfo();

    KeyInfoType getKeyInfo();

    void setKeyInfo(KeyInfoType keyInfoType);
}
