package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGroupShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGroupDrawingShapeProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture;

/* loaded from: classes14.dex */
public interface CTWordprocessingGroup extends XmlObject {
    public static final DocumentFactory<CTWordprocessingGroup> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWordprocessingGroup> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwordprocessinggroup0ca7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTNonVisualGroupDrawingShapeProps addNewCNvGrpSpPr();

    CTNonVisualDrawingProps addNewCNvPr();

    CTWordprocessingContentPart addNewContentPart();

    CTOfficeArtExtensionList addNewExtLst();

    CTGraphicFrame addNewGraphicFrame();

    CTWordprocessingGroup addNewGrpSp();

    CTGroupShapeProperties addNewGrpSpPr();

    CTPicture addNewPic();

    CTWordprocessingShape addNewWsp();

    CTNonVisualGroupDrawingShapeProps getCNvGrpSpPr();

    CTNonVisualDrawingProps getCNvPr();

    CTWordprocessingContentPart getContentPartArray(int i);

    CTWordprocessingContentPart[] getContentPartArray();

    List<CTWordprocessingContentPart> getContentPartList();

    CTOfficeArtExtensionList getExtLst();

    CTGraphicFrame getGraphicFrameArray(int i);

    CTGraphicFrame[] getGraphicFrameArray();

    List<CTGraphicFrame> getGraphicFrameList();

    CTWordprocessingGroup getGrpSpArray(int i);

    CTWordprocessingGroup[] getGrpSpArray();

    List<CTWordprocessingGroup> getGrpSpList();

    CTGroupShapeProperties getGrpSpPr();

    CTPicture getPicArray(int i);

    CTPicture[] getPicArray();

    List<CTPicture> getPicList();

    CTWordprocessingShape getWspArray(int i);

    CTWordprocessingShape[] getWspArray();

    List<CTWordprocessingShape> getWspList();

    CTWordprocessingContentPart insertNewContentPart(int i);

    CTGraphicFrame insertNewGraphicFrame(int i);

    CTWordprocessingGroup insertNewGrpSp(int i);

    CTPicture insertNewPic(int i);

    CTWordprocessingShape insertNewWsp(int i);

    boolean isSetCNvPr();

    boolean isSetExtLst();

    void removeContentPart(int i);

    void removeGraphicFrame(int i);

    void removeGrpSp(int i);

    void removePic(int i);

    void removeWsp(int i);

    void setCNvGrpSpPr(CTNonVisualGroupDrawingShapeProps cTNonVisualGroupDrawingShapeProps);

    void setCNvPr(CTNonVisualDrawingProps cTNonVisualDrawingProps);

    void setContentPartArray(int i, CTWordprocessingContentPart cTWordprocessingContentPart);

    void setContentPartArray(CTWordprocessingContentPart[] cTWordprocessingContentPartArr);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setGraphicFrameArray(int i, CTGraphicFrame cTGraphicFrame);

    void setGraphicFrameArray(CTGraphicFrame[] cTGraphicFrameArr);

    void setGrpSpArray(int i, CTWordprocessingGroup cTWordprocessingGroup);

    void setGrpSpArray(CTWordprocessingGroup[] cTWordprocessingGroupArr);

    void setGrpSpPr(CTGroupShapeProperties cTGroupShapeProperties);

    void setPicArray(int i, CTPicture cTPicture);

    void setPicArray(CTPicture[] cTPictureArr);

    void setWspArray(int i, CTWordprocessingShape cTWordprocessingShape);

    void setWspArray(CTWordprocessingShape[] cTWordprocessingShapeArr);

    int sizeOfContentPartArray();

    int sizeOfGraphicFrameArray();

    int sizeOfGrpSpArray();

    int sizeOfPicArray();

    int sizeOfWspArray();

    void unsetCNvPr();

    void unsetExtLst();
}
