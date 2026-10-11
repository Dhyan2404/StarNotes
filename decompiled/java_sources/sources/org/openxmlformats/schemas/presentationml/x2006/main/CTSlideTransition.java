package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STTransitionSpeed;

/* loaded from: classes14.dex */
public interface CTSlideTransition extends XmlObject {
    public static final DocumentFactory<CTSlideTransition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSlideTransition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctslidetransition6829type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOrientationTransition addNewBlinds();

    CTOrientationTransition addNewChecker();

    CTEmpty addNewCircle();

    CTOrientationTransition addNewComb();

    CTEightDirectionTransition addNewCover();

    CTOptionalBlackTransition addNewCut();

    CTEmpty addNewDiamond();

    CTEmpty addNewDissolve();

    CTExtensionListModify addNewExtLst();

    CTOptionalBlackTransition addNewFade();

    CTEmpty addNewNewsflash();

    CTEmpty addNewPlus();

    CTEightDirectionTransition addNewPull();

    CTSideDirectionTransition addNewPush();

    CTEmpty addNewRandom();

    CTOrientationTransition addNewRandomBar();

    CTTransitionSoundAction addNewSndAc();

    CTSplitTransition addNewSplit();

    CTCornerDirectionTransition addNewStrips();

    CTEmpty addNewWedge();

    CTWheelTransition addNewWheel();

    CTSideDirectionTransition addNewWipe();

    CTInOutTransition addNewZoom();

    boolean getAdvClick();

    long getAdvTm();

    CTOrientationTransition getBlinds();

    CTOrientationTransition getChecker();

    CTEmpty getCircle();

    CTOrientationTransition getComb();

    CTEightDirectionTransition getCover();

    CTOptionalBlackTransition getCut();

    CTEmpty getDiamond();

    CTEmpty getDissolve();

    CTExtensionListModify getExtLst();

    CTOptionalBlackTransition getFade();

    CTEmpty getNewsflash();

    CTEmpty getPlus();

    CTEightDirectionTransition getPull();

    CTSideDirectionTransition getPush();

    CTEmpty getRandom();

    CTOrientationTransition getRandomBar();

    CTTransitionSoundAction getSndAc();

    STTransitionSpeed.Enum getSpd();

    CTSplitTransition getSplit();

    CTCornerDirectionTransition getStrips();

    CTEmpty getWedge();

    CTWheelTransition getWheel();

    CTSideDirectionTransition getWipe();

    CTInOutTransition getZoom();

    boolean isSetAdvClick();

    boolean isSetAdvTm();

    boolean isSetBlinds();

    boolean isSetChecker();

    boolean isSetCircle();

    boolean isSetComb();

    boolean isSetCover();

    boolean isSetCut();

    boolean isSetDiamond();

    boolean isSetDissolve();

    boolean isSetExtLst();

    boolean isSetFade();

    boolean isSetNewsflash();

    boolean isSetPlus();

    boolean isSetPull();

    boolean isSetPush();

    boolean isSetRandom();

    boolean isSetRandomBar();

    boolean isSetSndAc();

    boolean isSetSpd();

    boolean isSetSplit();

    boolean isSetStrips();

    boolean isSetWedge();

    boolean isSetWheel();

    boolean isSetWipe();

    boolean isSetZoom();

    void setAdvClick(boolean z);

    void setAdvTm(long j);

    void setBlinds(CTOrientationTransition cTOrientationTransition);

    void setChecker(CTOrientationTransition cTOrientationTransition);

    void setCircle(CTEmpty cTEmpty);

    void setComb(CTOrientationTransition cTOrientationTransition);

    void setCover(CTEightDirectionTransition cTEightDirectionTransition);

    void setCut(CTOptionalBlackTransition cTOptionalBlackTransition);

    void setDiamond(CTEmpty cTEmpty);

    void setDissolve(CTEmpty cTEmpty);

    void setExtLst(CTExtensionListModify cTExtensionListModify);

    void setFade(CTOptionalBlackTransition cTOptionalBlackTransition);

    void setNewsflash(CTEmpty cTEmpty);

    void setPlus(CTEmpty cTEmpty);

    void setPull(CTEightDirectionTransition cTEightDirectionTransition);

    void setPush(CTSideDirectionTransition cTSideDirectionTransition);

    void setRandom(CTEmpty cTEmpty);

    void setRandomBar(CTOrientationTransition cTOrientationTransition);

    void setSndAc(CTTransitionSoundAction cTTransitionSoundAction);

    void setSpd(STTransitionSpeed.Enum r1);

    void setSplit(CTSplitTransition cTSplitTransition);

    void setStrips(CTCornerDirectionTransition cTCornerDirectionTransition);

    void setWedge(CTEmpty cTEmpty);

    void setWheel(CTWheelTransition cTWheelTransition);

    void setWipe(CTSideDirectionTransition cTSideDirectionTransition);

    void setZoom(CTInOutTransition cTInOutTransition);

    void unsetAdvClick();

    void unsetAdvTm();

    void unsetBlinds();

    void unsetChecker();

    void unsetCircle();

    void unsetComb();

    void unsetCover();

    void unsetCut();

    void unsetDiamond();

    void unsetDissolve();

    void unsetExtLst();

    void unsetFade();

    void unsetNewsflash();

    void unsetPlus();

    void unsetPull();

    void unsetPush();

    void unsetRandom();

    void unsetRandomBar();

    void unsetSndAc();

    void unsetSpd();

    void unsetSplit();

    void unsetStrips();

    void unsetWedge();

    void unsetWheel();

    void unsetWipe();

    void unsetZoom();

    XmlBoolean xgetAdvClick();

    XmlUnsignedInt xgetAdvTm();

    STTransitionSpeed xgetSpd();

    void xsetAdvClick(XmlBoolean xmlBoolean);

    void xsetAdvTm(XmlUnsignedInt xmlUnsignedInt);

    void xsetSpd(STTransitionSpeed sTTransitionSpeed);
}
