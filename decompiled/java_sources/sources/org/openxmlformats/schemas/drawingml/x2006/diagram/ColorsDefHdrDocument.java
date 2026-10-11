package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface ColorsDefHdrDocument extends XmlObject {
    public static final DocumentFactory<ColorsDefHdrDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ColorsDefHdrDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "colorsdefhdr593cdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColorTransformHeader addNewColorsDefHdr();

    CTColorTransformHeader getColorsDefHdr();

    void setColorsDefHdr(CTColorTransformHeader cTColorTransformHeader);
}
