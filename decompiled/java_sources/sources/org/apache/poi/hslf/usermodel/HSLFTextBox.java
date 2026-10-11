package org.apache.poi.hslf.usermodel;

import com.onyx.engine.sdk.archive.ArchiveFormatCode;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.ShapeType;
import org.apache.poi.sl.usermodel.TextBox;
import org.apache.poi.sl.usermodel.VerticalAlignment;

/* loaded from: classes12.dex */
public class HSLFTextBox extends HSLFTextShape implements TextBox<HSLFShape, HSLFTextParagraph> {
    public HSLFTextBox(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFSimpleShape, org.apache.poi.hslf.usermodel.HSLFShape
    public EscherContainerRecord createSpContainer(boolean z) {
        EscherContainerRecord createSpContainer = super.createSpContainer(z);
        setShapeType(ShapeType.TEXT_BOX);
        setEscherProperty(EscherPropertyTypes.FILL__FILLCOLOR, 134217732);
        setEscherProperty(EscherPropertyTypes.FILL__FILLBACKCOLOR, 134217728);
        setEscherProperty(EscherPropertyTypes.FILL__NOFILLHITTEST, 1048576);
        setEscherProperty(EscherPropertyTypes.LINESTYLE__COLOR, 134217729);
        setEscherProperty(EscherPropertyTypes.LINESTYLE__NOLINEDRAWDASH, 524288);
        setEscherProperty(EscherPropertyTypes.SHADOWSTYLE__COLOR, 134217730);
        getTextParagraphs();
        return createSpContainer;
    }

    @Override // org.apache.poi.hslf.usermodel.HSLFTextShape
    public void setDefaultTextProperties(HSLFTextParagraph hSLFTextParagraph) {
        setVerticalAlignment(VerticalAlignment.TOP);
        setEscherProperty(EscherPropertyTypes.TEXT__SIZE_TEXT_TO_FIT_SHAPE, ArchiveFormatCode.ARCHIVE_FORMAT_SHAR_DUMP);
    }

    public HSLFTextBox(ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(shapeContainer);
    }

    public HSLFTextBox() {
        this(null);
    }
}
