package org.apache.poi.sl.usermodel;

import java.awt.Insets;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.TextParagraph;

/* loaded from: classes12.dex */
public interface PictureShape<S extends Shape<S, P>, P extends TextParagraph<S, P, ? extends TextRun>> extends SimpleShape<S, P> {
    default PictureData getAlternativePictureData() {
        return null;
    }

    Insets getClipping();

    PictureData getPictureData();
}
