package java.awt.image;

import java.util.Hashtable;

/* loaded from: classes5.dex */
public interface ImageConsumer {
    public static final int COMPLETESCANLINES = 4;
    public static final int IMAGEABORTED = 4;
    public static final int IMAGEERROR = 1;
    public static final int RANDOMPIXELORDER = 1;
    public static final int SINGLEFRAME = 16;
    public static final int SINGLEFRAMEDONE = 2;
    public static final int SINGLEPASS = 8;
    public static final int STATICIMAGEDONE = 3;
    public static final int TOPDOWNLEFTRIGHT = 2;

    void imageComplete(int i);

    void setColorModel(ColorModel colorModel);

    void setDimensions(int i, int i2);

    void setHints(int i);

    void setPixels(int i, int i2, int i3, int i4, ColorModel colorModel, byte[] bArr, int i5, int i6);

    void setPixels(int i, int i2, int i3, int i4, ColorModel colorModel, int[] iArr, int i5, int i6);

    void setProperties(Hashtable<?, ?> hashtable);
}
