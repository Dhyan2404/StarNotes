package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface DSAKeyValueDocument extends XmlObject {
    public static final DocumentFactory<DSAKeyValueDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DSAKeyValueDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "dsakeyvalue773ddoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    DSAKeyValueType addNewDSAKeyValue();

    DSAKeyValueType getDSAKeyValue();

    void setDSAKeyValue(DSAKeyValueType dSAKeyValueType);
}
