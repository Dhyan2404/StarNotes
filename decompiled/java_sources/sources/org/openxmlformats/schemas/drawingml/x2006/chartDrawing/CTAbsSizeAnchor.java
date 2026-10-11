package org.openxmlformats.schemas.drawingml.x2006.chartDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;

/* loaded from: classes14.dex */
public interface CTAbsSizeAnchor extends XmlObject {
    public static final DocumentFactory<CTAbsSizeAnchor> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAbsSizeAnchor> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctabssizeanchor81c0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTConnector addNewCxnSp();

    CTPositiveSize2D addNewExt();

    CTMarker addNewFrom();

    CTGraphicFrame addNewGraphicFrame();

    CTGroupShape addNewGrpSp();

    CTPicture addNewPic();

    CTShape addNewSp();

    CTConnector getCxnSp();

    CTPositiveSize2D getExt();

    CTMarker getFrom();

    CTGraphicFrame getGraphicFrame();

    CTGroupShape getGrpSp();

    CTPicture getPic();

    CTShape getSp();

    boolean isSetCxnSp();

    boolean isSetGraphicFrame();

    boolean isSetGrpSp();

    boolean isSetPic();

    boolean isSetSp();

    void setCxnSp(CTConnector cTConnector);

    void setExt(CTPositiveSize2D cTPositiveSize2D);

    void setFrom(CTMarker cTMarker);

    void setGraphicFrame(CTGraphicFrame cTGraphicFrame);

    void setGrpSp(CTGroupShape cTGroupShape);

    void setPic(CTPicture cTPicture);

    void setSp(CTShape cTShape);

    void unsetCxnSp();

    void unsetGraphicFrame();

    void unsetGrpSp();

    void unsetPic();

    void unsetSp();
}
