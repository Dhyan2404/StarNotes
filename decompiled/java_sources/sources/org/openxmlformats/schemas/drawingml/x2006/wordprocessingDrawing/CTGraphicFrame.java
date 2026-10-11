package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGraphicFrameProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;

/* loaded from: classes14.dex */
public interface CTGraphicFrame extends XmlObject {
    public static final DocumentFactory<CTGraphicFrame> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGraphicFrame> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgraphicframe1c9atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNonVisualGraphicFrameProperties addNewCNvFrPr();

    CTNonVisualDrawingProps addNewCNvPr();

    CTOfficeArtExtensionList addNewExtLst();

    CTGraphicalObject addNewGraphic();

    CTTransform2D addNewXfrm();

    CTNonVisualGraphicFrameProperties getCNvFrPr();

    CTNonVisualDrawingProps getCNvPr();

    CTOfficeArtExtensionList getExtLst();

    CTGraphicalObject getGraphic();

    CTTransform2D getXfrm();

    boolean isSetExtLst();

    void setCNvFrPr(CTNonVisualGraphicFrameProperties cTNonVisualGraphicFrameProperties);

    void setCNvPr(CTNonVisualDrawingProps cTNonVisualDrawingProps);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setGraphic(CTGraphicalObject cTGraphicalObject);

    void setXfrm(CTTransform2D cTTransform2D);

    void unsetExtLst();
}
