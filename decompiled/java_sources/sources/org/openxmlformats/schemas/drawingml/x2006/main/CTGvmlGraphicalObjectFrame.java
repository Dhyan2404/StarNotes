package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGvmlGraphicalObjectFrame extends XmlObject {
    public static final DocumentFactory<CTGvmlGraphicalObjectFrame> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGvmlGraphicalObjectFrame> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgvmlgraphicalobjectframe4824type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    CTGraphicalObject addNewGraphic();

    CTGvmlGraphicFrameNonVisual addNewNvGraphicFramePr();

    CTTransform2D addNewXfrm();

    CTOfficeArtExtensionList getExtLst();

    CTGraphicalObject getGraphic();

    CTGvmlGraphicFrameNonVisual getNvGraphicFramePr();

    CTTransform2D getXfrm();

    boolean isSetExtLst();

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setGraphic(CTGraphicalObject cTGraphicalObject);

    void setNvGraphicFramePr(CTGvmlGraphicFrameNonVisual cTGvmlGraphicFrameNonVisual);

    void setXfrm(CTTransform2D cTTransform2D);

    void unsetExtLst();
}
