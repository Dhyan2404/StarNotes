package org.apache.poi.hwpf.usermodel;

import org.apache.poi.ddf.EscherContainerRecord;

/* loaded from: classes12.dex */
public interface OfficeDrawing {

    /* loaded from: classes12.dex */
    public enum HorizontalPositioning {
        ABSOLUTE,
        CENTER,
        INSIDE,
        LEFT,
        OUTSIDE,
        RIGHT
    }

    /* loaded from: classes12.dex */
    public enum HorizontalRelativeElement {
        CHAR,
        MARGIN,
        PAGE,
        TEXT
    }

    /* loaded from: classes12.dex */
    public enum VerticalPositioning {
        ABSOLUTE,
        BOTTOM,
        CENTER,
        INSIDE,
        OUTSIDE,
        TOP
    }

    /* loaded from: classes12.dex */
    public enum VerticalRelativeElement {
        LINE,
        MARGIN,
        PAGE,
        TEXT
    }

    HorizontalPositioning getHorizontalPositioning();

    HorizontalRelativeElement getHorizontalRelative();

    EscherContainerRecord getOfficeArtSpContainer();

    byte[] getPictureData();

    int getRectangleBottom();

    int getRectangleLeft();

    int getRectangleRight();

    int getRectangleTop();

    int getShapeId();

    VerticalPositioning getVerticalPositioning();

    VerticalRelativeElement getVerticalRelativeElement();
}
