package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface WgpDocument extends XmlObject {
    public static final DocumentFactory<WgpDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<WgpDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "wgp8c7ddoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTWordprocessingGroup addNewWgp();

    CTWordprocessingGroup getWgp();

    void setWgp(CTWordprocessingGroup cTWordprocessingGroup);
}
