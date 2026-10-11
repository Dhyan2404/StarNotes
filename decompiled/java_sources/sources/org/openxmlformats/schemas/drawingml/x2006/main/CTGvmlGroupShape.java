package org.openxmlformats.schemas.drawingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGvmlGroupShape extends XmlObject {
    public static final DocumentFactory<CTGvmlGroupShape> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGvmlGroupShape> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgvmlgroupshape6aabtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGvmlConnector addNewCxnSp();

    CTOfficeArtExtensionList addNewExtLst();

    CTGvmlGraphicalObjectFrame addNewGraphicFrame();

    CTGvmlGroupShape addNewGrpSp();

    CTGroupShapeProperties addNewGrpSpPr();

    CTGvmlGroupShapeNonVisual addNewNvGrpSpPr();

    CTGvmlPicture addNewPic();

    CTGvmlShape addNewSp();

    CTGvmlTextShape addNewTxSp();

    CTGvmlConnector getCxnSpArray(int i);

    CTGvmlConnector[] getCxnSpArray();

    List<CTGvmlConnector> getCxnSpList();

    CTOfficeArtExtensionList getExtLst();

    CTGvmlGraphicalObjectFrame getGraphicFrameArray(int i);

    CTGvmlGraphicalObjectFrame[] getGraphicFrameArray();

    List<CTGvmlGraphicalObjectFrame> getGraphicFrameList();

    CTGvmlGroupShape getGrpSpArray(int i);

    CTGvmlGroupShape[] getGrpSpArray();

    List<CTGvmlGroupShape> getGrpSpList();

    CTGroupShapeProperties getGrpSpPr();

    CTGvmlGroupShapeNonVisual getNvGrpSpPr();

    CTGvmlPicture getPicArray(int i);

    CTGvmlPicture[] getPicArray();

    List<CTGvmlPicture> getPicList();

    CTGvmlShape getSpArray(int i);

    CTGvmlShape[] getSpArray();

    List<CTGvmlShape> getSpList();

    CTGvmlTextShape getTxSpArray(int i);

    CTGvmlTextShape[] getTxSpArray();

    List<CTGvmlTextShape> getTxSpList();

    CTGvmlConnector insertNewCxnSp(int i);

    CTGvmlGraphicalObjectFrame insertNewGraphicFrame(int i);

    CTGvmlGroupShape insertNewGrpSp(int i);

    CTGvmlPicture insertNewPic(int i);

    CTGvmlShape insertNewSp(int i);

    CTGvmlTextShape insertNewTxSp(int i);

    boolean isSetExtLst();

    void removeCxnSp(int i);

    void removeGraphicFrame(int i);

    void removeGrpSp(int i);

    void removePic(int i);

    void removeSp(int i);

    void removeTxSp(int i);

    void setCxnSpArray(int i, CTGvmlConnector cTGvmlConnector);

    void setCxnSpArray(CTGvmlConnector[] cTGvmlConnectorArr);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setGraphicFrameArray(int i, CTGvmlGraphicalObjectFrame cTGvmlGraphicalObjectFrame);

    void setGraphicFrameArray(CTGvmlGraphicalObjectFrame[] cTGvmlGraphicalObjectFrameArr);

    void setGrpSpArray(int i, CTGvmlGroupShape cTGvmlGroupShape);

    void setGrpSpArray(CTGvmlGroupShape[] cTGvmlGroupShapeArr);

    void setGrpSpPr(CTGroupShapeProperties cTGroupShapeProperties);

    void setNvGrpSpPr(CTGvmlGroupShapeNonVisual cTGvmlGroupShapeNonVisual);

    void setPicArray(int i, CTGvmlPicture cTGvmlPicture);

    void setPicArray(CTGvmlPicture[] cTGvmlPictureArr);

    void setSpArray(int i, CTGvmlShape cTGvmlShape);

    void setSpArray(CTGvmlShape[] cTGvmlShapeArr);

    void setTxSpArray(int i, CTGvmlTextShape cTGvmlTextShape);

    void setTxSpArray(CTGvmlTextShape[] cTGvmlTextShapeArr);

    int sizeOfCxnSpArray();

    int sizeOfGraphicFrameArray();

    int sizeOfGrpSpArray();

    int sizeOfPicArray();

    int sizeOfSpArray();

    int sizeOfTxSpArray();

    void unsetExtLst();
}
