package org.apache.poi.hslf.model;

import org.apache.poi.ddf.EscherComplexProperty;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.record.ExControl;
import org.apache.poi.hslf.record.ExObjList;
import org.apache.poi.hslf.record.ExObjRefAtom;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.usermodel.HSLFPictureData;
import org.apache.poi.hslf.usermodel.HSLFPictureShape;
import org.apache.poi.hslf.usermodel.HSLFShape;
import org.apache.poi.hslf.usermodel.HSLFSheet;
import org.apache.poi.hslf.usermodel.HSLFTextParagraph;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class ActiveXShape extends HSLFPictureShape {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DEFAULT_ACTIVEX_THUMBNAIL = -1;

    public ActiveXShape(int i, HSLFPictureData hSLFPictureData) {
        super(hSLFPictureData, (ShapeContainer<HSLFShape, HSLFTextParagraph>) null);
        setActiveXIndex(i);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureShape, org.apache.poi.hslf.usermodel.HSLFShape
    public void afterInsert(HSLFSheet hSLFSheet) {
        ExControl exControl = getExControl();
        if (exControl == null) {
            throw new NullPointerException("ExControl is not defined");
        }
        exControl.getExControlAtom().setSlideId(hSLFSheet._getSheetNumber());
        byte[] toUnicodeLE = StringUtil.getToUnicodeLE(exControl.getProgId() + "-" + getControlIndex() + (char) 0);
        EscherComplexProperty escherComplexProperty = new EscherComplexProperty(EscherPropertyTypes.GROUPSHAPE__SHAPENAME, false, toUnicodeLE.length);
        escherComplexProperty.setComplexData(toUnicodeLE);
        getEscherOptRecord().addEscherProperty(escherComplexProperty);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFPictureShape
    public EscherContainerRecord createSpContainer(int i, boolean z) {
        EscherContainerRecord createSpContainer = super.createSpContainer(i, z);
        ((EscherSpRecord) createSpContainer.getChildById(EscherSpRecord.RECORD_ID)).setFlags(2576);
        setShapeType(ShapeType.HOST_CONTROL);
        setEscherProperty(EscherPropertyTypes.BLIP__PICTUREID, i);
        setEscherProperty(EscherPropertyTypes.LINESTYLE__COLOR, 134217729);
        setEscherProperty(EscherPropertyTypes.LINESTYLE__NOLINEDRAWDASH, 524296);
        setEscherProperty(EscherPropertyTypes.SHADOWSTYLE__COLOR, 134217730);
        setEscherProperty(EscherPropertyTypes.PROTECTION__LOCKAGAINSTGROUPING, -1);
        getClientData(true).addChild(new ExObjRefAtom());
        return createSpContainer;
    }

    public int getControlIndex() {
        ExObjRefAtom exObjRefAtom = (ExObjRefAtom) getClientDataRecord(RecordTypes.ExObjRefAtom.typeID);
        if (exObjRefAtom != null) {
            return exObjRefAtom.getExObjIdRef();
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public ExControl getExControl() {
        int controlIndex = getControlIndex();
        ExObjList exObjList = (ExObjList) getSheet().getSlideShow().getDocumentRecord().findFirstOfType(RecordTypes.ExObjList.typeID);
        if (exObjList == null) {
            return null;
        }
        for (Record record : exObjList.getChildRecords()) {
            if (record instanceof ExControl) {
                ExControl exControl = (ExControl) record;
                if (exControl.getExOleObjAtom().getObjID() == controlIndex) {
                    return exControl;
                }
            }
        }
        return null;
    }

    public void setActiveXIndex(int i) {
        ExObjRefAtom exObjRefAtom = (ExObjRefAtom) getClientDataRecord(RecordTypes.ExObjRefAtom.typeID);
        if (exObjRefAtom == null) {
            throw new HSLFException("OEShapeAtom for ActiveX doesn't exist");
        }
        exObjRefAtom.setExObjIdRef(i);
    }

    public void setProperty(String str, String str2) {
    }

    public ActiveXShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }
}
