package org.apache.poi.sl.usermodel;

import java.awt.Color;

/* loaded from: classes12.dex */
public interface HighlightColorSupport {
    PaintStyle getHighlightColor();

    void setHighlightColor(Color color);

    void setHighlightColor(PaintStyle paintStyle);
}
