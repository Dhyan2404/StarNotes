package java.awt;

import java.awt.image.ColorModel;
import java.awt.image.ImageConsumer;
import java.awt.image.ImageProducer;
import java.util.Hashtable;

/* loaded from: classes4.dex */
public class PixelGrabber implements ImageConsumer {
    private static final int DONEBITS = 112;
    private static final int GRABBEDBITS = 48;
    byte[] bytePixels;
    int dstH;
    int dstOff;
    int dstScan;
    int dstW;
    int dstX;
    int dstY;
    private int flags;
    private boolean grabbing;
    ColorModel imageModel;
    int[] intPixels;
    ImageProducer producer;

    public PixelGrabber(Image image, int i, int i2, int i3, int i4, int[] iArr, int i5, int i6) {
        this(image.getSource(), i, i2, i3, i4, iArr, i5, i6);
    }

    private void convertToRGB() {
        int i = this.dstW * this.dstH;
        int[] iArr = new int[i];
        if (this.bytePixels != null) {
            for (int i2 = 0; i2 < i; i2++) {
                iArr[i2] = this.imageModel.getRGB(this.bytePixels[i2] & 255);
            }
        } else if (this.intPixels != null) {
            for (int i3 = 0; i3 < i; i3++) {
                iArr[i3] = this.imageModel.getRGB(this.intPixels[i3]);
            }
        }
        this.bytePixels = null;
        this.intPixels = iArr;
        this.dstScan = this.dstW;
        this.dstOff = 0;
        this.imageModel = ColorModel.getRGBdefault();
    }

    public synchronized void abortGrabbing() {
        imageComplete(4);
    }

    public synchronized ColorModel getColorModel() {
        return this.imageModel;
    }

    public synchronized int getHeight() {
        int i;
        i = this.dstH;
        if (i < 0) {
            i = -1;
        }
        return i;
    }

    public synchronized Object getPixels() {
        Object obj;
        obj = this.bytePixels;
        if (obj == null) {
            obj = this.intPixels;
        }
        return obj;
    }

    public synchronized int getStatus() {
        return this.flags;
    }

    public synchronized int getWidth() {
        int i;
        i = this.dstW;
        if (i < 0) {
            i = -1;
        }
        return i;
    }

    public boolean grabPixels() throws InterruptedException {
        return grabPixels(0L);
    }

    @Override // java.awt.image.ImageConsumer
    public synchronized void imageComplete(int i) {
        this.grabbing = false;
        if (i == 2) {
            this.flags |= 16;
        } else if (i == 3) {
            this.flags |= 32;
        } else if (i != 4) {
            this.flags |= 192;
        } else {
            this.flags |= 128;
        }
        this.producer.removeConsumer(this);
        notifyAll();
    }

    @Override // java.awt.image.ImageConsumer
    public void setColorModel(ColorModel colorModel) {
    }

    @Override // java.awt.image.ImageConsumer
    public void setDimensions(int i, int i2) {
        if (this.dstW < 0) {
            this.dstW = i - this.dstX;
        }
        if (this.dstH < 0) {
            this.dstH = i2 - this.dstY;
        }
        if (this.dstW <= 0 || this.dstH <= 0) {
            imageComplete(3);
        } else if (this.intPixels == null && this.imageModel == ColorModel.getRGBdefault()) {
            int i3 = this.dstW;
            this.intPixels = new int[this.dstH * i3];
            this.dstScan = i3;
            this.dstOff = 0;
        }
        this.flags |= 3;
    }

    @Override // java.awt.image.ImageConsumer
    public void setHints(int i) {
    }

    @Override // java.awt.image.ImageConsumer
    public void setPixels(int i, int i2, int i3, int i4, ColorModel colorModel, byte[] bArr, int i5, int i6) {
        int i7 = this.dstY;
        if (i2 < i7) {
            int i8 = i7 - i2;
            if (i8 >= i4) {
                return;
            }
            i5 += i6 * i8;
            i2 += i8;
            i4 -= i8;
        }
        int i9 = i2 + i4;
        int i10 = this.dstH;
        if (i9 <= i7 + i10 || (i4 = (i7 + i10) - i2) > 0) {
            int i11 = this.dstX;
            if (i < i11) {
                int i12 = i11 - i;
                if (i12 >= i3) {
                    return;
                }
                i5 += i12;
                i += i12;
                i3 -= i12;
            }
            int i13 = i + i3;
            int i14 = this.dstW;
            if (i13 <= i11 + i14 || (i3 = (i11 + i14) - i) > 0) {
                int i15 = this.dstOff + ((i2 - i7) * this.dstScan) + (i - i11);
                if (this.intPixels == null) {
                    if (this.bytePixels == null) {
                        this.bytePixels = new byte[i10 * i14];
                        this.dstScan = i14;
                        this.dstOff = 0;
                        this.imageModel = colorModel;
                    } else if (this.imageModel != colorModel) {
                        convertToRGB();
                    }
                    if (this.bytePixels != null) {
                        for (int i16 = i4; i16 > 0; i16--) {
                            System.arraycopy(bArr, i5, this.bytePixels, i15, i3);
                            i5 += i6;
                            i15 += this.dstScan;
                        }
                    }
                }
                if (this.intPixels != null) {
                    int i17 = this.dstScan - i3;
                    int i18 = i6 - i3;
                    while (i4 > 0) {
                        int i19 = i3;
                        while (i19 > 0) {
                            this.intPixels[i15] = colorModel.getRGB(bArr[i5] & 255);
                            i19--;
                            i15++;
                            i5++;
                        }
                        i5 += i18;
                        i15 += i17;
                        i4--;
                    }
                }
                this.flags |= 8;
            }
        }
    }

    @Override // java.awt.image.ImageConsumer
    public void setProperties(Hashtable<?, ?> hashtable) {
    }

    public synchronized void startGrabbing() {
        int i = this.flags;
        if ((i & 112) != 0) {
            return;
        }
        if (!this.grabbing) {
            this.grabbing = true;
            this.flags = i & (-129);
            this.producer.startProduction(this);
        }
    }

    public synchronized int status() {
        return this.flags;
    }

    public PixelGrabber(ImageProducer imageProducer, int i, int i2, int i3, int i4, int[] iArr, int i5, int i6) {
        this.producer = imageProducer;
        this.dstX = i;
        this.dstY = i2;
        this.dstW = i3;
        this.dstH = i4;
        this.dstOff = i5;
        this.dstScan = i6;
        this.intPixels = iArr;
        this.imageModel = ColorModel.getRGBdefault();
    }

    public synchronized boolean grabPixels(long j) throws InterruptedException {
        int i = this.flags;
        if ((i & 112) != 0) {
            return (i & 48) != 0;
        }
        long currentTimeMillis = System.currentTimeMillis() + j;
        if (!this.grabbing) {
            this.grabbing = true;
            this.flags &= -129;
            this.producer.startProduction(this);
        }
        while (this.grabbing) {
            long j2 = 0;
            if (j != 0) {
                long currentTimeMillis2 = currentTimeMillis - System.currentTimeMillis();
                if (currentTimeMillis2 <= 0) {
                    break;
                }
                j2 = currentTimeMillis2;
            }
            wait(j2);
        }
        return (this.flags & 48) != 0;
    }

    public PixelGrabber(Image image, int i, int i2, int i3, int i4, boolean z) {
        this.producer = image.getSource();
        this.dstX = i;
        this.dstY = i2;
        this.dstW = i3;
        this.dstH = i4;
        if (z) {
            this.imageModel = ColorModel.getRGBdefault();
        }
    }

    @Override // java.awt.image.ImageConsumer
    public void setPixels(int i, int i2, int i3, int i4, ColorModel colorModel, int[] iArr, int i5, int i6) {
        int i7 = this.dstY;
        if (i2 < i7) {
            int i8 = i7 - i2;
            if (i8 >= i4) {
                return;
            }
            i5 += i6 * i8;
            i2 += i8;
            i4 -= i8;
        }
        int i9 = i2 + i4;
        int i10 = this.dstH;
        if (i9 <= i7 + i10 || (i4 = (i7 + i10) - i2) > 0) {
            int i11 = this.dstX;
            if (i < i11) {
                int i12 = i11 - i;
                if (i12 >= i3) {
                    return;
                }
                i5 += i12;
                i += i12;
                i3 -= i12;
            }
            int i13 = i + i3;
            int i14 = this.dstW;
            if (i13 <= i11 + i14 || (i3 = (i11 + i14) - i) > 0) {
                if (this.intPixels == null) {
                    if (this.bytePixels == null) {
                        this.intPixels = new int[i10 * i14];
                        this.dstScan = i14;
                        this.dstOff = 0;
                        this.imageModel = colorModel;
                    } else {
                        convertToRGB();
                    }
                }
                int i15 = this.dstOff + ((i2 - this.dstY) * this.dstScan) + (i - this.dstX);
                ColorModel colorModel2 = this.imageModel;
                if (colorModel2 == colorModel) {
                    while (i4 > 0) {
                        System.arraycopy(iArr, i5, this.intPixels, i15, i3);
                        i5 += i6;
                        i15 += this.dstScan;
                        i4--;
                    }
                } else {
                    if (colorModel2 != ColorModel.getRGBdefault()) {
                        convertToRGB();
                    }
                    int i16 = this.dstScan - i3;
                    int i17 = i6 - i3;
                    while (i4 > 0) {
                        int i18 = i3;
                        while (i18 > 0) {
                            this.intPixels[i15] = colorModel.getRGB(iArr[i5]);
                            i18--;
                            i15++;
                            i5++;
                        }
                        i5 += i17;
                        i15 += i16;
                        i4--;
                    }
                }
                this.flags |= 8;
            }
        }
    }
}
