package org.apache.poi.hslf.usermodel;

import java.awt.Color;
import org.apache.poi.ddf.AbstractEscherOptRecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.sl.usermodel.Line;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.ShapeType;

/* loaded from: classes12.dex */
public final class HSLFLine extends HSLFTextShape implements Line<HSLFShape, HSLFTextParagraph> {
    public HSLFLine(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSimpleShape, org.apache.poi.hslf.usermodel.HSLFShape
    public EscherContainerRecord createSpContainer(boolean z) {
        EscherContainerRecord createSpContainer = super.createSpContainer(z);
        ShapeType shapeType = ShapeType.LINE;
        setShapeType(shapeType);
        ((EscherSpRecord) createSpContainer.getChildById(EscherSpRecord.RECORD_ID)).setOptions((short) ((shapeType.nativeId << 4) | 2));
        AbstractEscherOptRecord escherOptRecord = getEscherOptRecord();
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.GEOMETRY__SHAPEPATH, 4);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.GEOMETRY__FILLOK, 65536);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.FILL__NOFILLHITTEST, 1048576);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.LINESTYLE__COLOR, 134217729);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.LINESTYLE__NOLINEDRAWDASH, 655368);
        HSLFShape.setEscherProperty(escherOptRecord, EscherPropertyTypes.SHADOWSTYLE__COLOR, 134217730);
        return createSpContainer;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFTextShape, org.apache.poi.hslf.usermodel.HSLFShape
    public Color getColor(EscherPropertyTypes escherPropertyTypes) {
        return escherPropertyTypes == EscherPropertyTypes.LINESTYLE__COLOR ? Color.BLACK : super.getColor(escherPropertyTypes);
    }

    public HSLFLine(ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(null, shapeContainer);
        createSpContainer(shapeContainer instanceof HSLFGroupShape);
    }

    public HSLFLine() {
        this(null);
    }
}
