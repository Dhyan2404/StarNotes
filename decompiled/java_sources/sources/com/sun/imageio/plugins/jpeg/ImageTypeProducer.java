package com.sun.imageio.plugins.jpeg;

import com.sun.imageio.plugins.jpeg.JPEG;
import javax.imageio.ImageTypeSpecifier;

/* loaded from: classes9.dex */
class ImageTypeProducer {
    private static final ImageTypeProducer[] defaultTypes = new ImageTypeProducer[6];
    private int csCode;
    boolean failed;
    private ImageTypeSpecifier type;

    public ImageTypeProducer(int i) {
        this.type = null;
        this.failed = false;
        this.csCode = i;
    }

    public static synchronized ImageTypeProducer getTypeProducer(int i) {
        synchronized (ImageTypeProducer.class) {
            if (i < 0 || i >= 6) {
                return null;
            }
            ImageTypeProducer[] imageTypeProducerArr = defaultTypes;
            if (imageTypeProducerArr[i] == null) {
                imageTypeProducerArr[i] = new ImageTypeProducer(i);
            }
            return imageTypeProducerArr[i];
        }
    }

    public synchronized ImageTypeSpecifier getType() {
        if (!this.failed && this.type == null) {
            try {
                this.type = produce();
            } catch (Throwable unused) {
                this.failed = true;
            }
        }
        return this.type;
    }

    public ImageTypeSpecifier produce() {
        int i = this.csCode;
        if (i == 1) {
            return ImageTypeSpecifier.createFromBufferedImageType(10);
        }
        if (i == 2 || i == 3) {
            return ImageTypeSpecifier.createInterleaved(JPEG.JCS.sRGB, JPEG.bOffsRGB, 0, false, false);
        }
        return null;
    }

    public ImageTypeProducer() {
        this.type = null;
        this.failed = false;
        this.csCode = -1;
    }
}
