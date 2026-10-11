package org.apache.poi.hslf.usermodel;

import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.ShapeContainer;

/* loaded from: classes12.dex */
public final class HSLFPlaceholder extends HSLFTextBox {
    public HSLFPlaceholder(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFTextBox, org.apache.poi.hslf.usermodel.HSLFSimpleShape, org.apache.poi.hslf.usermodel.HSLFShape
    public EscherContainerRecord createSpContainer(boolean z) {
        EscherContainerRecord createSpContainer = super.createSpContainer(z);
        setPlaceholder(Placeholder.BODY);
        return createSpContainer;
    }

    public HSLFPlaceholder(ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(shapeContainer);
    }

    public HSLFPlaceholder() {
    }
}
