package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface KeyDocument extends XmlObject {
    public static final DocumentFactory<KeyDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<KeyDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "key5d16doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Keybase addNewKey();

    Keybase getKey();

    void setKey(Keybase keybase);
}
