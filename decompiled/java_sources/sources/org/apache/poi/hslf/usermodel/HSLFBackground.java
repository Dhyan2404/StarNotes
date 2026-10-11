package org.apache.poi.hslf.usermodel;

import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.sl.usermodel.Background;
import org.apache.poi.sl.usermodel.ShapeContainer;

/* loaded from: classes12.dex */
public final class HSLFBackground extends HSLFShape implements Background<HSLFShape, HSLFTextParagraph> {
    public HSLFBackground(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFShape
    public EscherContainerRecord createSpContainer(boolean z) {
        return null;
    }
}
