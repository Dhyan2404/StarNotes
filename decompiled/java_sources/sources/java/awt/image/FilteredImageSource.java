package java.awt.image;

import java.util.Hashtable;

/* loaded from: classes5.dex */
public class FilteredImageSource implements ImageProducer {
    ImageFilter filter;
    private Hashtable proxies;
    ImageProducer src;

    public FilteredImageSource(ImageProducer imageProducer, ImageFilter imageFilter) {
        this.src = imageProducer;
        this.filter = imageFilter;
    }

    @Override // java.awt.image.ImageProducer
    public synchronized void addConsumer(ImageConsumer imageConsumer) {
        if (this.proxies == null) {
            this.proxies = new Hashtable();
        }
        if (!this.proxies.containsKey(imageConsumer)) {
            ImageFilter filterInstance = this.filter.getFilterInstance(imageConsumer);
            this.proxies.put(imageConsumer, filterInstance);
            this.src.addConsumer(filterInstance);
        }
    }

    @Override // java.awt.image.ImageProducer
    public synchronized boolean isConsumer(ImageConsumer imageConsumer) {
        boolean z;
        Hashtable hashtable = this.proxies;
        if (hashtable != null) {
            z = hashtable.containsKey(imageConsumer);
        }
        return z;
    }

    @Override // java.awt.image.ImageProducer
    public synchronized void removeConsumer(ImageConsumer imageConsumer) {
        ImageFilter imageFilter;
        Hashtable hashtable = this.proxies;
        if (hashtable != null && (imageFilter = (ImageFilter) hashtable.get(imageConsumer)) != null) {
            this.src.removeConsumer(imageFilter);
            this.proxies.remove(imageConsumer);
            if (this.proxies.isEmpty()) {
                this.proxies = null;
            }
        }
    }

    @Override // java.awt.image.ImageProducer
    public synchronized void requestTopDownLeftRightResend(ImageConsumer imageConsumer) {
        ImageFilter imageFilter;
        Hashtable hashtable = this.proxies;
        if (hashtable != null && (imageFilter = (ImageFilter) hashtable.get(imageConsumer)) != null) {
            imageFilter.resendTopDownLeftRight(this.src);
        }
    }

    @Override // java.awt.image.ImageProducer
    public synchronized void startProduction(ImageConsumer imageConsumer) {
        if (this.proxies == null) {
            this.proxies = new Hashtable();
        }
        ImageFilter imageFilter = (ImageFilter) this.proxies.get(imageConsumer);
        if (imageFilter == null) {
            imageFilter = this.filter.getFilterInstance(imageConsumer);
            this.proxies.put(imageConsumer, imageFilter);
        }
        this.src.startProduction(imageFilter);
    }
}
