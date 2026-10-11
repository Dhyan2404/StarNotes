package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface AnchorDocument extends XmlObject {
    public static final DocumentFactory<AnchorDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<AnchorDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "anchordab6doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAnchor addNewAnchor();

    CTAnchor getAnchor();

    void setAnchor(CTAnchor cTAnchor);
}
