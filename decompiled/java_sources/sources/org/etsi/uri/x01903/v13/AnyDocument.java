package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface AnyDocument extends XmlObject {
    public static final DocumentFactory<AnyDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AnyDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "any2f5edoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    AnyType addNewAny();

    AnyType getAny();

    void setAny(AnyType anyType);
}
