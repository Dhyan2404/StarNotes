package org.apache.poi.hslf.usermodel;

import java.util.Iterator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherClientDataRecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherOptRecord;
import org.apache.poi.ddf.EscherProperty;
import org.apache.poi.ddf.EscherPropertyFactory;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordTypes;
import org.apache.poi.ddf.EscherSimpleProperty;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.ddf.EscherTextboxRecord;
import org.apache.poi.hslf.model.MovieShape;
import org.apache.poi.hslf.record.ExObjRefAtom;
import org.apache.poi.hslf.record.HSLFEscherClientDataRecord;
import org.apache.poi.hslf.record.InteractiveInfo;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class HSLFShapeFactory {
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFShapeFactory.class);

    /* renamed from: org.apache.poi.hslf.usermodel.HSLFShapeFactory$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194631 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$ShapeType;

        static {
            int[] iArr = new int[ShapeType.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$ShapeType = iArr;
            try {
                iArr[ShapeType.TEXT_BOX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$ShapeType[ShapeType.HOST_CONTROL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$ShapeType[ShapeType.FRAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$ShapeType[ShapeType.LINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$ShapeType[ShapeType.NOT_PRIMITIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private static HSLFShape createFrame(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        InteractiveInfo interactiveInfo = (InteractiveInfo) getClientDataRecord(escherContainerRecord, RecordTypes.InteractiveInfo.typeID);
        if (interactiveInfo != null && interactiveInfo.getInteractiveInfoAtom() != null) {
            byte action = interactiveInfo.getInteractiveInfoAtom().getAction();
            if (action == 5) {
                return new HSLFObjectShape(escherContainerRecord, shapeContainer);
            }
            if (action == 6) {
                return new MovieShape(escherContainerRecord, shapeContainer);
            }
        }
        return ((ExObjRefAtom) getClientDataRecord(escherContainerRecord, RecordTypes.ExObjRefAtom.typeID)) != null ? new HSLFObjectShape(escherContainerRecord, shapeContainer) : new HSLFPictureShape(escherContainerRecord, shapeContainer);
    }

    private static HSLFShape createNonPrimitive(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        if (HSLFShape.getEscherProperty((AbstractEscherOptRecord) HSLFShape.getEscherChild(escherContainerRecord, EscherOptRecord.RECORD_ID), EscherPropertyTypes.GEOMETRY__VERTICES) != null) {
            return new HSLFFreeformShape(escherContainerRecord, shapeContainer);
        }
        LOG.atInfo().log("Creating AutoShape for a NotPrimitive shape");
        return new HSLFAutoShape(escherContainerRecord, shapeContainer);
    }

    public static HSLFShape createShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        return escherContainerRecord.getRecordId() == EscherContainerRecord.SPGR_CONTAINER ? createShapeGroup(escherContainerRecord, shapeContainer) : createSimpleShape(escherContainerRecord, shapeContainer);
    }

    public static HSLFGroupShape createShapeGroup(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        boolean z = false;
        EscherRecord child = escherContainerRecord.getChild(0);
        if (!(child instanceof EscherContainerRecord)) {
            throw new RecordFormatException("Did not have a EscherContainerRecord: " + child);
        }
        EscherRecord escherChild = HSLFShape.getEscherChild((EscherContainerRecord) child, EscherRecordTypes.USER_DEFINED);
        if (escherChild != null) {
            Iterator<EscherProperty> it2 = new EscherPropertyFactory().createProperties(escherChild.serialize(), 8, escherChild.getInstance()).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                EscherProperty next = it2.next();
                if (next.getPropertyNumber() == EscherPropertyTypes.GROUPSHAPE__TABLEPROPERTIES.propNumber && (next instanceof EscherSimpleProperty) && (((EscherSimpleProperty) next).getPropertyValue() & 1) == 1) {
                    z = true;
                    break;
                }
            }
        }
        return z ? new HSLFTable(escherContainerRecord, shapeContainer) : new HSLFGroupShape(escherContainerRecord, shapeContainer);
    }

    public static HSLFShape createSimpleShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        EscherSpRecord escherSpRecord = (EscherSpRecord) escherContainerRecord.getChildById(EscherSpRecord.RECORD_ID);
        if (escherSpRecord == null) {
            throw new RecordFormatException("Could not read EscherSpRecord as child of " + escherContainerRecord.getRecordName());
        }
        int i = C194631.$SwitchMap$org$apache$poi$sl$usermodel$ShapeType[ShapeType.forId(escherSpRecord.getShapeType(), false).ordinal()];
        if (i == 1) {
            return new HSLFTextBox(escherContainerRecord, shapeContainer);
        }
        if (i == 2 || i == 3) {
            return createFrame(escherContainerRecord, shapeContainer);
        }
        if (i == 4) {
            return new HSLFLine(escherContainerRecord, shapeContainer);
        }
        if (i == 5) {
            return createNonPrimitive(escherContainerRecord, shapeContainer);
        }
        if (!(shapeContainer instanceof HSLFTable)) {
            return new HSLFAutoShape(escherContainerRecord, shapeContainer);
        }
        short s = EscherTextboxRecord.RECORD_ID;
        if (((EscherTextboxRecord) escherContainerRecord.getChildById(s)) == null) {
            LOG.atWarn().log("invalid ppt - add EscherTextboxRecord to cell");
            EscherTextboxRecord escherTextboxRecord = new EscherTextboxRecord();
            escherTextboxRecord.setRecordId(s);
            escherTextboxRecord.setOptions((short) 15);
            escherContainerRecord.addChildRecord(escherTextboxRecord);
        }
        return new HSLFTableCell(escherContainerRecord, (HSLFTable) shapeContainer);
    }

    public static <T extends Record> T getClientDataRecord(EscherContainerRecord escherContainerRecord, int i) {
        HSLFEscherClientDataRecord hSLFEscherClientDataRecord = (HSLFEscherClientDataRecord) escherContainerRecord.getChildById(EscherClientDataRecord.RECORD_ID);
        if (hSLFEscherClientDataRecord == null) {
            return null;
        }
        Iterator<? extends Record> it2 = hSLFEscherClientDataRecord.getHSLFChildRecords().iterator();
        while (it2.hasNext()) {
            T t = (T) it2.next();
            if (t.getRecordType() == i) {
                return t;
            }
        }
        return null;
    }
}
