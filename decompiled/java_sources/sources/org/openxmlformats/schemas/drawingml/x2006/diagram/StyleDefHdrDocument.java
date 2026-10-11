package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface StyleDefHdrDocument extends XmlObject {
    public static final DocumentFactory<StyleDefHdrDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<StyleDefHdrDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "styledefhdr2daddoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTStyleDefinitionHeader addNewStyleDefHdr();

    CTStyleDefinitionHeader getStyleDefHdr();

    void setStyleDefHdr(CTStyleDefinitionHeader cTStyleDefinitionHeader);
}
