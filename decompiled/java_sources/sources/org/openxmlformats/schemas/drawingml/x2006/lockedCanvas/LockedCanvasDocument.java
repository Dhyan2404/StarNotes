package org.openxmlformats.schemas.drawingml.x2006.lockedCanvas;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape;

/* loaded from: classes14.dex */
public interface LockedCanvasDocument extends XmlObject {
    public static final DocumentFactory<LockedCanvasDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<LockedCanvasDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "lockedcanvas3d3adoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGvmlGroupShape addNewLockedCanvas();

    CTGvmlGroupShape getLockedCanvas();

    void setLockedCanvas(CTGvmlGroupShape cTGvmlGroupShape);
}
