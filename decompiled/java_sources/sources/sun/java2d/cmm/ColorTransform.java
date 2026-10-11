package sun.java2d.cmm;

import java.awt.image.BufferedImage;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;

/* loaded from: classes16.dex */
public interface ColorTransform {
    public static final int Any = -1;
    public static final int Gamut = 3;

    /* renamed from: In */
    public static final int f116375In = 1;
    public static final int Out = 2;
    public static final int Simulation = 4;

    void colorConvert(BufferedImage bufferedImage, BufferedImage bufferedImage2);

    void colorConvert(Raster raster, WritableRaster writableRaster);

    void colorConvert(Raster raster, WritableRaster writableRaster, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4);

    byte[] colorConvert(byte[] bArr, byte[] bArr2);

    short[] colorConvert(short[] sArr, short[] sArr2);

    int getNumInComponents();

    int getNumOutComponents();
}
