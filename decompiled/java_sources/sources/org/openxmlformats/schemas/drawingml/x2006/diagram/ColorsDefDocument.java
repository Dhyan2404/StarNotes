package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface ColorsDefDocument extends XmlObject {
    public static final DocumentFactory<ColorsDefDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ColorsDefDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "colorsdefc89adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColorTransform addNewColorsDef();

    CTColorTransform getColorsDef();

    void setColorsDef(CTColorTransform cTColorTransform);
}
