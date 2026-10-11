package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTDrawing;

/* loaded from: classes14.dex */
public interface UserShapesDocument extends XmlObject {
    public static final DocumentFactory<UserShapesDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<UserShapesDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "usershapesd66bdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDrawing addNewUserShapes();

    CTDrawing getUserShapes();

    void setUserShapes(CTDrawing cTDrawing);
}
