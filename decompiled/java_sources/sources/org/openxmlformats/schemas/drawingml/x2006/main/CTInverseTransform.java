package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTInverseTransform extends XmlObject {
    public static final DocumentFactory<CTInverseTransform> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTInverseTransform> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctinversetransformfcb7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }
}
