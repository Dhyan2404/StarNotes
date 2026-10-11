package org.beyka.tiffbitmapfactory;

import com.sunia.HTREnginev2.b7n;

/* loaded from: classes13.dex */
public enum Photometric {
    MINISWHITE(0),
    MINISBLACK(1),
    RGB(2),
    PALETTE(3),
    MASK(4),
    SEPARATED(5),
    YCBCR(6),
    CIELAB(8),
    ICCLAB(9),
    ITULAB(10),
    LOGL(b7n.f65494o),
    LOGLUV(b7n.f65495p),
    OTHER(-1);

    final int ordinal;

    Photometric(int i) {
        this.ordinal = i;
    }
}
