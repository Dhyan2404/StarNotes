package org.apache.xmlbeans.impl.p119xb.xsdschema;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.metadata.system.sXMLSCHEMA.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface UniqueDocument extends XmlObject {
    public static final DocumentFactory<UniqueDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<UniqueDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "unique3752doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Keybase addNewUnique();

    Keybase getUnique();

    void setUnique(Keybase keybase);
}
