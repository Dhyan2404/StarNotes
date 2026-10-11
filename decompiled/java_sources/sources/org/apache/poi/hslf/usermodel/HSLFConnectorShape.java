package org.apache.poi.hslf.usermodel;

import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.sl.usermodel.ConnectorShape;
import org.apache.poi.sl.usermodel.ShapeContainer;

/* loaded from: classes12.dex */
public class HSLFConnectorShape extends HSLFSimpleShape implements ConnectorShape<HSLFShape, HSLFTextParagraph> {
    public HSLFConnectorShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }

    public HSLFConnectorShape(ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(null, shapeContainer);
        createSpContainer(shapeContainer instanceof HSLFGroupShape);
    }

    public HSLFConnectorShape() {
        this(null);
    }
}
