package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface VectorDocument extends XmlObject {
    public static final DocumentFactory<VectorDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<VectorDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "vector7a0edoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTVector addNewVector();

    CTVector getVector();

    void setVector(CTVector cTVector);
}
