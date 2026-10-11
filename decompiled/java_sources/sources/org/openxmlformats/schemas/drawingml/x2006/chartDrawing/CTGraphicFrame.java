package org.openxmlformats.schemas.drawingml.x2006.chartDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;

/* loaded from: classes14.dex */
public interface CTGraphicFrame extends XmlObject {
    public static final DocumentFactory<CTGraphicFrame> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGraphicFrame> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgraphicframe5967type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGraphicalObject addNewGraphic();

    CTGraphicFrameNonVisual addNewNvGraphicFramePr();

    CTTransform2D addNewXfrm();

    boolean getFPublished();

    CTGraphicalObject getGraphic();

    String getMacro();

    CTGraphicFrameNonVisual getNvGraphicFramePr();

    CTTransform2D getXfrm();

    boolean isSetFPublished();

    boolean isSetMacro();

    void setFPublished(boolean z);

    void setGraphic(CTGraphicalObject cTGraphicalObject);

    void setMacro(String str);

    void setNvGraphicFramePr(CTGraphicFrameNonVisual cTGraphicFrameNonVisual);

    void setXfrm(CTTransform2D cTTransform2D);

    void unsetFPublished();

    void unsetMacro();

    XmlBoolean xgetFPublished();

    XmlString xgetMacro();

    void xsetFPublished(XmlBoolean xmlBoolean);

    void xsetMacro(XmlString xmlString);
}
