package java.awt;

import java.awt.image.ColorModel;
import java.awt.image.ImageConsumer;
import java.awt.image.ImageProducer;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes4.dex */
public class MemoryImageSource implements ImageProducer {
    boolean animating;
    boolean fullbuffers;
    int height;
    ColorModel model;
    int pixeloffset;
    Object pixels;
    int pixelscan;
    Hashtable<?, ?> properties;
    Vector<ImageConsumer> theConsumers = new Vector<>();
    int width;

    public MemoryImageSource(int i, int i2, ColorModel colorModel, byte[] bArr, int i3, int i4) {
        initialize(i, i2, colorModel, bArr, i3, i4, null);
    }

    private void initConsumer(ImageConsumer imageConsumer) {
        if (isConsumer(imageConsumer)) {
            imageConsumer.setDimensions(this.width, this.height);
        }
        if (isConsumer(imageConsumer)) {
            imageConsumer.setProperties(this.properties);
        }
        if (isConsumer(imageConsumer)) {
            imageConsumer.setColorModel(this.model);
        }
        if (isConsumer(imageConsumer)) {
            imageConsumer.setHints(this.animating ? this.fullbuffers ? 6 : 1 : 30);
        }
    }

    private void initialize(int i, int i2, ColorModel colorModel, Object obj, int i3, int i4, Hashtable<?, ?> hashtable) {
        this.width = i;
        this.height = i2;
        this.model = colorModel;
        this.pixels = obj;
        this.pixeloffset = i3;
        this.pixelscan = i4;
        if (hashtable == null) {
            hashtable = new Hashtable<>();
        }
        this.properties = hashtable;
    }

    private void sendPixels(ImageConsumer imageConsumer, int i, int i2, int i3, int i4) {
        int i5 = this.pixeloffset + (this.pixelscan * i2) + i;
        if (isConsumer(imageConsumer)) {
            Object obj = this.pixels;
            if (obj instanceof byte[]) {
                imageConsumer.setPixels(i, i2, i3, i4, this.model, (byte[]) obj, i5, this.pixelscan);
            } else {
                imageConsumer.setPixels(i, i2, i3, i4, this.model, (int[]) obj, i5, this.pixelscan);
            }
        }
    }

    @Override // java.awt.image.ImageProducer
    public synchronized void addConsumer(ImageConsumer imageConsumer) {
        if (this.theConsumers.contains(imageConsumer)) {
            return;
        }
        this.theConsumers.addElement(imageConsumer);
        try {
            initConsumer(imageConsumer);
            sendPixels(imageConsumer, 0, 0, this.width, this.height);
            if (isConsumer(imageConsumer)) {
                imageConsumer.imageComplete(this.animating ? 2 : 3);
                if (!this.animating && isConsumer(imageConsumer)) {
                    imageConsumer.imageComplete(1);
                    removeConsumer(imageConsumer);
                }
            }
        } catch (Exception unused) {
            if (isConsumer(imageConsumer)) {
                imageConsumer.imageComplete(1);
            }
        }
    }

    @Override // java.awt.image.ImageProducer
    public synchronized boolean isConsumer(ImageConsumer imageConsumer) {
        return this.theConsumers.contains(imageConsumer);
    }

    public void newPixels() {
        newPixels(0, 0, this.width, this.height, true);
    }

    @Override // java.awt.image.ImageProducer
    public synchronized void removeConsumer(ImageConsumer imageConsumer) {
        this.theConsumers.removeElement(imageConsumer);
    }

    @Override // java.awt.image.ImageProducer
    public void requestTopDownLeftRightResend(ImageConsumer imageConsumer) {
    }

    public synchronized void setAnimated(boolean z) {
        this.animating = z;
        if (!z) {
            Enumeration<ImageConsumer> elements = this.theConsumers.elements();
            while (elements.hasMoreElements()) {
                ImageConsumer nextElement = elements.nextElement();
                nextElement.imageComplete(3);
                if (isConsumer(nextElement)) {
                    nextElement.imageComplete(1);
                }
            }
            this.theConsumers.removeAllElements();
        }
    }

    public synchronized void setFullBufferUpdates(boolean z) {
        if (this.fullbuffers == z) {
            return;
        }
        this.fullbuffers = z;
        if (this.animating) {
            Enumeration<ImageConsumer> elements = this.theConsumers.elements();
            while (elements.hasMoreElements()) {
                elements.nextElement().setHints(z ? 6 : 1);
            }
        }
    }

    @Override // java.awt.image.ImageProducer
    public void startProduction(ImageConsumer imageConsumer) {
        addConsumer(imageConsumer);
    }

    public synchronized void newPixels(int i, int i2, int i3, int i4) {
        newPixels(i, i2, i3, i4, true);
    }

    public MemoryImageSource(int i, int i2, ColorModel colorModel, byte[] bArr, int i3, int i4, Hashtable<?, ?> hashtable) {
        initialize(i, i2, colorModel, bArr, i3, i4, hashtable);
    }

    public synchronized void newPixels(int i, int i2, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7;
        int i8;
        if (this.animating) {
            if (this.fullbuffers) {
                i6 = this.width;
                i8 = this.height;
                i5 = 0;
                i7 = 0;
            } else {
                if (i < 0) {
                    i3 += i;
                    i = 0;
                }
                int i9 = i + i3;
                int i10 = this.width;
                if (i9 > i10) {
                    i3 = i10 - i;
                }
                if (i2 < 0) {
                    i4 += i2;
                    i2 = 0;
                }
                int i11 = i2 + i4;
                int i12 = this.height;
                if (i11 > i12) {
                    i4 = i12 - i2;
                }
                int i13 = i3;
                i5 = i;
                i6 = i13;
                int i14 = i4;
                i7 = i2;
                i8 = i14;
            }
            if ((i6 <= 0 || i8 <= 0) && !z) {
                return;
            }
            Enumeration<ImageConsumer> elements = this.theConsumers.elements();
            while (elements.hasMoreElements()) {
                ImageConsumer nextElement = elements.nextElement();
                if (i6 > 0 && i8 > 0) {
                    sendPixels(nextElement, i5, i7, i6, i8);
                }
                if (z && isConsumer(nextElement)) {
                    nextElement.imageComplete(2);
                }
            }
        }
    }

    public MemoryImageSource(int i, int i2, ColorModel colorModel, int[] iArr, int i3, int i4) {
        initialize(i, i2, colorModel, iArr, i3, i4, null);
    }

    public MemoryImageSource(int i, int i2, ColorModel colorModel, int[] iArr, int i3, int i4, Hashtable<?, ?> hashtable) {
        initialize(i, i2, colorModel, iArr, i3, i4, hashtable);
    }

    public MemoryImageSource(int i, int i2, int[] iArr, int i3, int i4) {
        initialize(i, i2, ColorModel.getRGBdefault(), iArr, i3, i4, null);
    }

    public MemoryImageSource(int i, int i2, int[] iArr, int i3, int i4, Hashtable<?, ?> hashtable) {
        initialize(i, i2, ColorModel.getRGBdefault(), iArr, i3, i4, hashtable);
    }

    public synchronized void newPixels(byte[] bArr, ColorModel colorModel, int i, int i2) {
        this.pixels = bArr;
        this.model = colorModel;
        this.pixeloffset = i;
        this.pixelscan = i2;
        newPixels();
    }

    public synchronized void newPixels(int[] iArr, ColorModel colorModel, int i, int i2) {
        this.pixels = iArr;
        this.model = colorModel;
        this.pixeloffset = i;
        this.pixelscan = i2;
        newPixels();
    }
}
