package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface EncapsulatedPKIDataDocument extends XmlObject {
    public static final DocumentFactory<EncapsulatedPKIDataDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<EncapsulatedPKIDataDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "encapsulatedpkidatabd97doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    EncapsulatedPKIDataType addNewEncapsulatedPKIData();

    EncapsulatedPKIDataType getEncapsulatedPKIData();

    void setEncapsulatedPKIData(EncapsulatedPKIDataType encapsulatedPKIDataType);
}
