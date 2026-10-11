package java.awt.image;

import java.util.Hashtable;

/* loaded from: classes5.dex */
public class ImageFilter implements ImageConsumer, Cloneable {
    protected ImageConsumer consumer;

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e);
        }
    }

    public ImageFilter getFilterInstance(ImageConsumer imageConsumer) {
        ImageFilter imageFilter = (ImageFilter) clone();
        imageFilter.consumer = imageConsumer;
        return imageFilter;
    }

    @Override // java.awt.image.ImageConsumer
    public void imageComplete(int i) {
        this.consumer.imageComplete(i);
    }

    public void resendTopDownLeftRight(ImageProducer imageProducer) {
        imageProducer.requestTopDownLeftRightResend(this);
    }

    @Override // java.awt.image.ImageConsumer
    public void setColorModel(ColorModel colorModel) {
        this.consumer.setColorModel(colorModel);
    }

    @Override // java.awt.image.ImageConsumer
    public void setDimensions(int i, int i2) {
        this.consumer.setDimensions(i, i2);
    }

    @Override // java.awt.image.ImageConsumer
    public void setHints(int i) {
        this.consumer.setHints(i);
    }

    @Override // java.awt.image.ImageConsumer
    public void setPixels(int i, int i2, int i3, int i4, ColorModel colorModel, byte[] bArr, int i5, int i6) {
        this.consumer.setPixels(i, i2, i3, i4, colorModel, bArr, i5, i6);
    }

    @Override // java.awt.image.ImageConsumer
    public void setProperties(Hashtable<?, ?> hashtable) {
        Hashtable<?, ?> hashtable2 = (Hashtable) hashtable.clone();
        Object obj = hashtable2.get("filters");
        if (obj == null) {
            hashtable2.put("filters", toString());
        } else if (obj instanceof String) {
            hashtable2.put("filters", ((String) obj) + toString());
        }
        this.consumer.setProperties(hashtable2);
    }

    @Override // java.awt.image.ImageConsumer
    public void setPixels(int i, int i2, int i3, int i4, ColorModel colorModel, int[] iArr, int i5, int i6) {
        this.consumer.setPixels(i, i2, i3, i4, colorModel, iArr, i5, i6);
    }
}
