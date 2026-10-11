package org.apache.poi.hemf.record.emfplus;

import java.awt.color.ColorSpace;
import java.awt.image.BufferedImage;
import java.awt.image.ComponentColorModel;
import java.awt.image.DataBufferByte;
import java.awt.image.PixelInterleavedSampleModel;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;
import org.apache.poi.hemf.record.emfplus.HemfPlusImage;
import org.apache.poi.sl.draw.BitmapImageRenderer;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public class HemfPlusGDIImageRenderer extends BitmapImageRenderer {
    private int height;
    private HemfPlusImage.EmfPlusPixelFormat pixelFormat;
    private int stride;
    private int width;

    /* renamed from: org.apache.poi.hemf.record.emfplus.HemfPlusGDIImageRenderer$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C194471 {

        /* renamed from: $SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusImage$EmfPlusPixelFormat */
        static final /* synthetic */ int[] f111346x7bff615f;

        static {
            int[] iArr = new int[HemfPlusImage.EmfPlusPixelFormat.values().length];
            f111346x7bff615f = iArr;
            try {
                iArr[HemfPlusImage.EmfPlusPixelFormat.ARGB_32BPP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f111346x7bff615f[HemfPlusImage.EmfPlusPixelFormat.RGB_24BPP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // org.apache.poi.sl.draw.BitmapImageRenderer, org.apache.poi.sl.draw.ImageRenderer
    public boolean canRender(String str) {
        return true;
    }

    public int getHeight() {
        return this.height;
    }

    public HemfPlusImage.EmfPlusPixelFormat getPixelFormat() {
        return this.pixelFormat;
    }

    public int getStride() {
        return this.stride;
    }

    public int getWidth() {
        return this.width;
    }

    @Override // org.apache.poi.sl.draw.BitmapImageRenderer, org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(InputStream inputStream, String str) throws IOException {
        this.img = readGDIImage(IOUtils.toByteArray(inputStream));
    }

    public BufferedImage readGDIImage(byte[] bArr) {
        int[] iArr;
        int[] iArr2;
        int i = C194471.f111346x7bff615f[this.pixelFormat.ordinal()];
        if (i == 1) {
            iArr = new int[]{8, 8, 8, 8};
            iArr2 = new int[]{2, 1, 0, 3};
        } else {
            if (i != 2) {
                throw new IllegalStateException("not yet implemented");
            }
            iArr = new int[]{8, 8, 8};
            iArr2 = new int[]{2, 1, 0};
        }
        int[] iArr3 = iArr2;
        ComponentColorModel componentColorModel = new ComponentColorModel(ColorSpace.getInstance(1000), iArr, this.pixelFormat.isAlpha(), this.pixelFormat.isPreMultiplied(), 3, 0);
        return new BufferedImage(componentColorModel, (WritableRaster) Raster.createRaster(new PixelInterleavedSampleModel(componentColorModel.getTransferType(), this.width, this.height, componentColorModel.getNumComponents(), this.stride, iArr3), new DataBufferByte(bArr, bArr.length), null), componentColorModel.isAlphaPremultiplied(), (Hashtable<?, ?>) null);
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setPixelFormat(HemfPlusImage.EmfPlusPixelFormat emfPlusPixelFormat) {
        this.pixelFormat = emfPlusPixelFormat;
    }

    public void setStride(int i) {
        this.stride = i;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    @Override // org.apache.poi.sl.draw.BitmapImageRenderer, org.apache.poi.sl.draw.ImageRenderer
    public void loadImage(byte[] bArr, String str) {
        this.img = readGDIImage(bArr);
    }
}
