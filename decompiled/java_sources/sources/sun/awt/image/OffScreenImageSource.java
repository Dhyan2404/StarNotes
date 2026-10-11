package sun.awt.image;

import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.DirectColorModel;
import java.awt.image.ImageConsumer;
import java.awt.image.ImageProducer;
import java.awt.image.IndexColorModel;
import java.awt.image.WritableRaster;
import java.util.Hashtable;

/* loaded from: classes16.dex */
public class OffScreenImageSource implements ImageProducer {
    int height;
    BufferedImage image;
    Hashtable properties;
    private ImageConsumer theConsumer;
    int width;

    public OffScreenImageSource(BufferedImage bufferedImage, Hashtable hashtable) {
        this.image = bufferedImage;
        if (hashtable != null) {
            this.properties = hashtable;
        } else {
            this.properties = new Hashtable();
        }
        this.width = bufferedImage.getWidth();
        this.height = bufferedImage.getHeight();
    }

    private void produce() {
        try {
            this.theConsumer.setDimensions(this.image.getWidth(), this.image.getHeight());
            this.theConsumer.setProperties(this.properties);
            sendPixels();
            this.theConsumer.imageComplete(2);
            this.theConsumer.imageComplete(3);
        } catch (NullPointerException unused) {
            ImageConsumer imageConsumer = this.theConsumer;
            if (imageConsumer != null) {
                imageConsumer.imageComplete(1);
            }
        }
    }

    private void sendPixels() {
        int i;
        int i2;
        int i3;
        int i4;
        ColorModel colorModel = this.image.getColorModel();
        WritableRaster raster = this.image.getRaster();
        int numDataElements = raster.getNumDataElements();
        int dataType = raster.getDataBuffer().getDataType();
        int i5 = this.width;
        int[] iArr = new int[numDataElements * i5];
        boolean z = true;
        if (colorModel instanceof IndexColorModel) {
            byte[] bArr = new byte[i5];
            this.theConsumer.setColorModel(colorModel);
            if (raster instanceof ByteComponentRaster) {
                for (int i6 = 0; i6 < this.height; i6++) {
                    raster.getDataElements(0, i6, this.width, 1, bArr);
                    ImageConsumer imageConsumer = this.theConsumer;
                    int i7 = this.width;
                    imageConsumer.setPixels(0, i6, i7, 1, colorModel, bArr, 0, i7);
                }
            } else if (raster instanceof BytePackedRaster) {
                for (int i8 = 0; i8 < this.height; i8++) {
                    raster.getPixels(0, i8, this.width, 1, iArr);
                    int i9 = 0;
                    while (true) {
                        i4 = this.width;
                        if (i9 < i4) {
                            bArr[i9] = (byte) iArr[i9];
                            i9++;
                        }
                    }
                    this.theConsumer.setPixels(0, i8, i4, 1, colorModel, bArr, 0, i4);
                }
            } else if (dataType == 2 || dataType == 3) {
                for (int i10 = 0; i10 < this.height; i10++) {
                    raster.getPixels(0, i10, this.width, 1, iArr);
                    ImageConsumer imageConsumer2 = this.theConsumer;
                    int i11 = this.width;
                    imageConsumer2.setPixels(0, i10, i11, 1, colorModel, iArr, 0, i11);
                }
            }
            z = false;
        } else if (colorModel instanceof DirectColorModel) {
            this.theConsumer.setColorModel(colorModel);
            if (dataType == 0) {
                byte[] bArr2 = new byte[this.width];
                for (int i12 = 0; i12 < this.height; i12++) {
                    raster.getDataElements(0, i12, this.width, 1, bArr2);
                    int i13 = 0;
                    while (true) {
                        i = this.width;
                        if (i13 < i) {
                            iArr[i13] = bArr2[i13] & 255;
                            i13++;
                        }
                    }
                    this.theConsumer.setPixels(0, i12, i, 1, colorModel, iArr, 0, i);
                }
            } else if (dataType == 1) {
                short[] sArr = new short[this.width];
                for (int i14 = 0; i14 < this.height; i14++) {
                    raster.getDataElements(0, i14, this.width, 1, sArr);
                    int i15 = 0;
                    while (true) {
                        i2 = this.width;
                        if (i15 < i2) {
                            iArr[i15] = sArr[i15] & 65535;
                            i15++;
                        }
                    }
                    this.theConsumer.setPixels(0, i14, i2, 1, colorModel, iArr, 0, i2);
                }
            } else if (dataType == 3) {
                for (int i16 = 0; i16 < this.height; i16++) {
                    raster.getDataElements(0, i16, this.width, 1, iArr);
                    ImageConsumer imageConsumer3 = this.theConsumer;
                    int i17 = this.width;
                    imageConsumer3.setPixels(0, i16, i17, 1, colorModel, iArr, 0, i17);
                }
            }
            z = false;
        }
        if (z) {
            ColorModel rGBdefault = ColorModel.getRGBdefault();
            this.theConsumer.setColorModel(rGBdefault);
            int i18 = 0;
            while (i18 < this.height) {
                int i19 = 0;
                while (true) {
                    i3 = this.width;
                    if (i19 < i3) {
                        iArr[i19] = this.image.getRGB(i19, i18);
                        i19++;
                    }
                }
                int[] iArr2 = iArr;
                this.theConsumer.setPixels(0, i18, i3, 1, rGBdefault, iArr2, 0, i3);
                i18++;
                iArr = iArr2;
            }
        }
    }

    @Override // java.awt.image.ImageProducer
    public synchronized void addConsumer(ImageConsumer imageConsumer) {
        this.theConsumer = imageConsumer;
        produce();
    }

    @Override // java.awt.image.ImageProducer
    public synchronized boolean isConsumer(ImageConsumer imageConsumer) {
        return imageConsumer == this.theConsumer;
    }

    @Override // java.awt.image.ImageProducer
    public synchronized void removeConsumer(ImageConsumer imageConsumer) {
        if (this.theConsumer == imageConsumer) {
            this.theConsumer = null;
        }
    }

    @Override // java.awt.image.ImageProducer
    public void requestTopDownLeftRightResend(ImageConsumer imageConsumer) {
    }

    @Override // java.awt.image.ImageProducer
    public void startProduction(ImageConsumer imageConsumer) {
        addConsumer(imageConsumer);
    }

    public OffScreenImageSource(BufferedImage bufferedImage) {
        this(bufferedImage, null);
    }
}
