package org.apache.poi.hslf.model;

import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.hslf.record.AnimationInfo;
import org.apache.poi.hslf.record.AnimationInfoAtom;
import org.apache.poi.hslf.record.ExMCIMovie;
import org.apache.poi.hslf.record.ExObjList;
import org.apache.poi.hslf.record.ExObjRefAtom;
import org.apache.poi.hslf.record.ExVideoContainer;
import org.apache.poi.hslf.record.HSLFEscherClientDataRecord;
import org.apache.poi.hslf.record.InteractiveInfo;
import org.apache.poi.hslf.record.InteractiveInfoAtom;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.usermodel.HSLFPictureData;
import org.apache.poi.hslf.usermodel.HSLFPictureShape;
import org.apache.poi.hslf.usermodel.HSLFShape;
import org.apache.poi.hslf.usermodel.HSLFTextParagraph;
import org.apache.poi.sl.usermodel.ShapeContainer;

/* loaded from: classes12.dex */
public final class MovieShape extends HSLFPictureShape {
    public static final int DEFAULT_MOVIE_THUMBNAIL = -1;
    public static final int MOVIE_AVI = 2;
    public static final int MOVIE_MPEG = 1;

    public MovieShape(int i, HSLFPictureData hSLFPictureData) {
        super(hSLFPictureData, (ShapeContainer<HSLFShape, HSLFTextParagraph>) null);
        setMovieIndex(i);
        setAutoPlay(true);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureShape
    public EscherContainerRecord createSpContainer(int i, boolean z) {
        EscherContainerRecord createSpContainer = super.createSpContainer(i, z);
        setEscherProperty(EscherPropertyTypes.PROTECTION__LOCKAGAINSTGROUPING, 16777472);
        setEscherProperty(EscherPropertyTypes.FILL__NOFILLHITTEST, 65537);
        ExObjRefAtom exObjRefAtom = new ExObjRefAtom();
        InteractiveInfo interactiveInfo = new InteractiveInfo();
        InteractiveInfoAtom interactiveInfoAtom = interactiveInfo.getInteractiveInfoAtom();
        interactiveInfoAtom.setAction((byte) 6);
        interactiveInfoAtom.setHyperlinkType((byte) -1);
        AnimationInfo animationInfo = new AnimationInfo();
        animationInfo.getAnimationInfoAtom().setFlag(4, true);
        HSLFEscherClientDataRecord clientData = getClientData(true);
        clientData.addChild(exObjRefAtom);
        clientData.addChild(animationInfo);
        clientData.addChild(interactiveInfo);
        return createSpContainer;
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public String getPath() {
        int exObjIdRef = ((ExObjRefAtom) getClientDataRecord(RecordTypes.ExObjRefAtom.typeID)).getExObjIdRef();
        ExObjList exObjList = (ExObjList) getSheet().getSlideShow().getDocumentRecord().findFirstOfType(RecordTypes.ExObjList.typeID);
        if (exObjList == null) {
            return null;
        }
        for (Record record : exObjList.getChildRecords()) {
            if (record instanceof ExMCIMovie) {
                ExVideoContainer exVideo = ((ExMCIMovie) record).getExVideo();
                if (exVideo.getExMediaAtom().getObjectId() == exObjIdRef) {
                    return exVideo.getPathAtom().getText();
                }
            }
        }
        return null;
    }

    public boolean isAutoPlay() {
        AnimationInfo animationInfo = (AnimationInfo) getClientDataRecord(RecordTypes.AnimationInfo.typeID);
        if (animationInfo != null) {
            return animationInfo.getAnimationInfoAtom().getFlag(4);
        }
        return false;
    }

    public void setAutoPlay(boolean z) {
        AnimationInfo animationInfo = (AnimationInfo) getClientDataRecord(RecordTypes.AnimationInfo.typeID);
        if (animationInfo != null) {
            animationInfo.getAnimationInfoAtom().setFlag(4, z);
        }
    }

    public void setMovieIndex(int i) {
        ((ExObjRefAtom) getClientDataRecord(RecordTypes.ExObjRefAtom.typeID)).setExObjIdRef(i);
        AnimationInfo animationInfo = (AnimationInfo) getClientDataRecord(RecordTypes.AnimationInfo.typeID);
        if (animationInfo != null) {
            AnimationInfoAtom animationInfoAtom = animationInfo.getAnimationInfoAtom();
            animationInfoAtom.setDimColor(117440512);
            animationInfoAtom.setFlag(4, true);
            animationInfoAtom.setFlag(256, true);
            animationInfoAtom.setFlag(1024, true);
            animationInfoAtom.setOrderID(i + 1);
        }
    }

    public MovieShape(int i, HSLFPictureData hSLFPictureData, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(hSLFPictureData, shapeContainer);
        setMovieIndex(i);
    }

    public MovieShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }
}
