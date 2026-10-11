package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBackgroundFormatting;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTWholeE2OFormatting;
import org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture;

/* loaded from: classes14.dex */
public interface CTWordprocessingCanvas extends XmlObject {
    public static final DocumentFactory<CTWordprocessingCanvas> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWordprocessingCanvas> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwordprocessingcanvas11aatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBackgroundFormatting addNewBg();

    CTWordprocessingContentPart addNewContentPart();

    CTOfficeArtExtensionList addNewExtLst();

    CTGraphicFrame addNewGraphicFrame();

    CTPicture addNewPic();

    CTWordprocessingGroup addNewWgp();

    CTWholeE2OFormatting addNewWhole();

    CTWordprocessingShape addNewWsp();

    CTBackgroundFormatting getBg();

    CTWordprocessingContentPart getContentPartArray(int i);

    CTWordprocessingContentPart[] getContentPartArray();

    List<CTWordprocessingContentPart> getContentPartList();

    CTOfficeArtExtensionList getExtLst();

    CTGraphicFrame getGraphicFrameArray(int i);

    CTGraphicFrame[] getGraphicFrameArray();

    List<CTGraphicFrame> getGraphicFrameList();

    CTPicture getPicArray(int i);

    CTPicture[] getPicArray();

    List<CTPicture> getPicList();

    CTWordprocessingGroup getWgpArray(int i);

    CTWordprocessingGroup[] getWgpArray();

    List<CTWordprocessingGroup> getWgpList();

    CTWholeE2OFormatting getWhole();

    CTWordprocessingShape getWspArray(int i);

    CTWordprocessingShape[] getWspArray();

    List<CTWordprocessingShape> getWspList();

    CTWordprocessingContentPart insertNewContentPart(int i);

    CTGraphicFrame insertNewGraphicFrame(int i);

    CTPicture insertNewPic(int i);

    CTWordprocessingGroup insertNewWgp(int i);

    CTWordprocessingShape insertNewWsp(int i);

    boolean isSetBg();

    boolean isSetExtLst();

    boolean isSetWhole();

    void removeContentPart(int i);

    void removeGraphicFrame(int i);

    void removePic(int i);

    void removeWgp(int i);

    void removeWsp(int i);

    void setBg(CTBackgroundFormatting cTBackgroundFormatting);

    void setContentPartArray(int i, CTWordprocessingContentPart cTWordprocessingContentPart);

    void setContentPartArray(CTWordprocessingContentPart[] cTWordprocessingContentPartArr);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setGraphicFrameArray(int i, CTGraphicFrame cTGraphicFrame);

    void setGraphicFrameArray(CTGraphicFrame[] cTGraphicFrameArr);

    void setPicArray(int i, CTPicture cTPicture);

    void setPicArray(CTPicture[] cTPictureArr);

    void setWgpArray(int i, CTWordprocessingGroup cTWordprocessingGroup);

    void setWgpArray(CTWordprocessingGroup[] cTWordprocessingGroupArr);

    void setWhole(CTWholeE2OFormatting cTWholeE2OFormatting);

    void setWspArray(int i, CTWordprocessingShape cTWordprocessingShape);

    void setWspArray(CTWordprocessingShape[] cTWordprocessingShapeArr);

    int sizeOfContentPartArray();

    int sizeOfGraphicFrameArray();

    int sizeOfPicArray();

    int sizeOfWgpArray();

    int sizeOfWspArray();

    void unsetBg();

    void unsetExtLst();

    void unsetWhole();
}
