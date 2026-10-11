package org.openxmlformats.schemas.drawingml.x2006.chartDrawing;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTRelSizeAnchor extends XmlObject {
    public static final DocumentFactory<CTRelSizeAnchor> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRelSizeAnchor> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrelsizeanchorf2e7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTConnector addNewCxnSp();

    CTMarker addNewFrom();

    CTGraphicFrame addNewGraphicFrame();

    CTGroupShape addNewGrpSp();

    CTPicture addNewPic();

    CTShape addNewSp();

    CTMarker addNewTo();

    CTConnector getCxnSp();

    CTMarker getFrom();

    CTGraphicFrame getGraphicFrame();

    CTGroupShape getGrpSp();

    CTPicture getPic();

    CTShape getSp();

    CTMarker getTo();

    boolean isSetCxnSp();

    boolean isSetGraphicFrame();

    boolean isSetGrpSp();

    boolean isSetPic();

    boolean isSetSp();

    void setCxnSp(CTConnector cTConnector);

    void setFrom(CTMarker cTMarker);

    void setGraphicFrame(CTGraphicFrame cTGraphicFrame);

    void setGrpSp(CTGroupShape cTGroupShape);

    void setPic(CTPicture cTPicture);

    void setSp(CTShape cTShape);

    void setTo(CTMarker cTMarker);

    void unsetCxnSp();

    void unsetGraphicFrame();

    void unsetGrpSp();

    void unsetPic();

    void unsetSp();
}
