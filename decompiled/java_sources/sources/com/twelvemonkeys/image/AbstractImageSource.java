package com.twelvemonkeys.image;

import java.awt.image.ImageConsumer;
import java.awt.image.ImageProducer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public abstract class AbstractImageSource implements ImageProducer {

    /* renamed from: e */
    public List<ImageConsumer> f93900e = new ArrayList();
    protected int height;
    protected int width;
    protected int xOff;
    protected int yOff;

    @Override // java.awt.image.ImageProducer
    public void addConsumer(ImageConsumer imageConsumer) {
        if (this.f93900e.contains(imageConsumer)) {
            return;
        }
        this.f93900e.add(imageConsumer);
        try {
            initConsumer(imageConsumer);
            sendPixels(imageConsumer);
            if (isConsumer(imageConsumer)) {
                imageConsumer.imageComplete(3);
                if (isConsumer(imageConsumer)) {
                    imageConsumer.imageComplete(1);
                    removeConsumer(imageConsumer);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            if (isConsumer(imageConsumer)) {
                imageConsumer.imageComplete(1);
            }
        }
    }

    public abstract void initConsumer(ImageConsumer imageConsumer);

    @Override // java.awt.image.ImageProducer
    public boolean isConsumer(ImageConsumer imageConsumer) {
        return this.f93900e.contains(imageConsumer);
    }

    @Override // java.awt.image.ImageProducer
    public void removeConsumer(ImageConsumer imageConsumer) {
        this.f93900e.remove(imageConsumer);
    }

    @Override // java.awt.image.ImageProducer
    public void requestTopDownLeftRightResend(ImageConsumer imageConsumer) {
    }

    public abstract void sendPixels(ImageConsumer imageConsumer);

    @Override // java.awt.image.ImageProducer
    public void startProduction(ImageConsumer imageConsumer) {
        addConsumer(imageConsumer);
    }
}
