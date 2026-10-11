package org.beyka.tiffbitmapfactory;

/* loaded from: classes13.dex */
public enum ImageFormat {
    UNKNOWN(0),
    JPEG(1),
    PNG(2),
    TIFF(4);

    final int ordinal;

    ImageFormat(int i) {
        this.ordinal = i;
    }
}
