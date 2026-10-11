package org.apache.poi.hslf.usermodel;

import java.awt.Color;
import java.awt.Insets;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherComplexProperty;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.sl.draw.DrawPictureShape;
import org.apache.poi.sl.usermodel.PictureShape;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.util.StringUtil;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public class HSLFPictureShape extends HSLFSimpleShape implements PictureShape<HSLFShape, HSLFTextParagraph> {
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFPictureShape.class);

    public HSLFPictureShape(HSLFPictureData hSLFPictureData) {
        this(hSLFPictureData, (ShapeContainer<HSLFShape, HSLFTextParagraph>) null);
    }

    private static double getFractProp(AbstractEscherOptRecord abstractEscherOptRecord, EscherPropertyTypes escherPropertyTypes) {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(abstractEscherOptRecord, escherPropertyTypes);
        if (escherSimpleProperty == null) {
            return 0.0d;
        }
        return Units.fixedPointToDouble(escherSimpleProperty.getPropertyValue());
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public void afterInsert(HSLFSheet hSLFSheet) {
        super.afterInsert(hSLFSheet);
        EscherBSERecord escherBSERecord = getEscherBSERecord();
        escherBSERecord.setRef(escherBSERecord.getRef() + 1);
        if (getAnchor().isEmpty()) {
            new DrawPictureShape(this).resize();
        }
    }

    public EscherContainerRecord createSpContainer(int i, boolean z) {
        EscherContainerRecord createSpContainer = super.createSpContainer(z);
        ((EscherSpRecord) createSpContainer.getChildById(EscherSpRecord.RECORD_ID)).setOptions((short) ((ShapeType.FRAME.nativeId << 4) | 2));
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.PROTECTION__LOCKAGAINSTGROUPING, 8388736);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.BLIP__BLIPTODISPLAY, true, i);
        return createSpContainer;
    }

    @Override // org.apache.poi.sl.usermodel.PictureShape
    public Insets getClipping() {
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        double fractProp = getFractProp(escherOptRecord, EscherPropertyTypes.BLIP__CROPFROMTOP);
        double fractProp2 = getFractProp(escherOptRecord, EscherPropertyTypes.BLIP__CROPFROMBOTTOM);
        double fractProp3 = getFractProp(escherOptRecord, EscherPropertyTypes.BLIP__CROPFROMLEFT);
        double fractProp4 = getFractProp(escherOptRecord, EscherPropertyTypes.BLIP__CROPFROMRIGHT);
        if (fractProp == 0.0d && fractProp2 == 0.0d && fractProp3 == 0.0d && fractProp4 == 0.0d) {
            return null;
        }
        return new Insets((int) (fractProp * 100000.0d), (int) (fractProp3 * 100000.0d), (int) (fractProp2 * 100000.0d), (int) (fractProp4 * 100000.0d));
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public Color getColor(EscherPropertyTypes escherPropertyTypes) {
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public EscherBSERecord getEscherBSERecord() {
        EscherContainerRecord escherContainerRecord = (EscherContainerRecord) HSLFShape.getEscherChild(getSheet().getSlideShow().getDocumentRecord().getPPDrawingGroup().getDggContainer(), EscherContainerRecord.BSTORE_CONTAINER);
        if (escherContainerRecord == null) {
            LOG.atDebug().log("EscherContainerRecord.BSTORE_CONTAINER was not found ");
            return null;
        }
        int pictureIndex = getPictureIndex();
        if (pictureIndex != 0) {
            return (EscherBSERecord) escherContainerRecord.getChild(pictureIndex - 1);
        }
        LOG.atDebug().log("picture index was not found, returning ");
        return null;
    }

    public int getPictureIndex() {
        EscherSimpleProperty escherSimpleProperty = (EscherSimpleProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.BLIP__BLIPTODISPLAY);
        if (escherSimpleProperty == null) {
            return 0;
        }
        return escherSimpleProperty.getPropertyValue();
    }

    public String getPictureName() {
        EscherComplexProperty escherComplexProperty = (EscherComplexProperty) HSLFShape.getEscherProperty(getEscherOptRecord(), EscherPropertyTypes.BLIP__BLIPFILENAME);
        if (escherComplexProperty == null) {
            return null;
        }
        return StringUtil.getFromUnicodeLE(escherComplexProperty.getComplexData()).trim();
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public ShapeType getShapeType() {
        return ShapeType.RECT;
    }

    public void setPictureName(String str) {
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        byte[] toUnicodeLE = StringUtil.getToUnicodeLE(str + (char) 0);
        EscherComplexProperty escherComplexProperty = new EscherComplexProperty(EscherPropertyTypes.BLIP__BLIPFILENAME, false, toUnicodeLE.length);
        escherComplexProperty.setComplexData(toUnicodeLE);
        escherOptRecord.addEscherProperty(escherComplexProperty);
    }

    public HSLFPictureShape(HSLFPictureData hSLFPictureData, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(null, shapeContainer);
        createSpContainer(hSLFPictureData.getIndex(), shapeContainer instanceof HSLFGroupShape);
    }

    @Override // org.apache.poi.sl.usermodel.PictureShape
    public HSLFPictureData getPictureData() {
        List<HSLFPictureData> pictureData = getSheet().getSlideShow().getPictureData();
        EscherBSERecord escherBSERecord = getEscherBSERecord();
        if (escherBSERecord == null) {
            LOG.atError().log("no reference to picture data found ");
            return null;
        }
        for (HSLFPictureData hSLFPictureData : pictureData) {
            if (hSLFPictureData.bse == escherBSERecord) {
                return hSLFPictureData;
            }
        }
        LOG.atError().log("no picture found for our BSE offset {}", Unbox.box(escherBSERecord.getOffset()));
        return null;
    }

    public HSLFPictureShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }
}
