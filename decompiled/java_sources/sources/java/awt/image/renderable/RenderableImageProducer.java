package java.awt.image.renderable;

import java.awt.image.ColorModel;
import java.awt.image.DataBuffer;
import java.awt.image.ImageConsumer;
import java.awt.image.ImageProducer;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import java.awt.image.SampleModel;
import java.util.Enumeration;
import java.util.Vector;

/* loaded from: classes5.dex */
public class RenderableImageProducer implements ImageProducer, Runnable {
    Vector ics = new Vector();

    /* renamed from: rc */
    RenderContext f97809rc;
    RenderableImage rdblImage;

    public RenderableImageProducer(RenderableImage renderableImage, RenderContext renderContext) {
        this.rdblImage = renderableImage;
        this.f97809rc = renderContext;
    }

    @Override // java.awt.image.ImageProducer
    public synchronized void addConsumer(ImageConsumer imageConsumer) {
        if (!this.ics.contains(imageConsumer)) {
            this.ics.addElement(imageConsumer);
        }
    }

    @Override // java.awt.image.ImageProducer
    public synchronized boolean isConsumer(ImageConsumer imageConsumer) {
        return this.ics.contains(imageConsumer);
    }

    @Override // java.awt.image.ImageProducer
    public synchronized void removeConsumer(ImageConsumer imageConsumer) {
        this.ics.removeElement(imageConsumer);
    }

    @Override // java.awt.image.ImageProducer
    public void requestTopDownLeftRightResend(ImageConsumer imageConsumer) {
    }

    @Override // java.lang.Runnable
    public void run() {
        RenderContext renderContext = this.f97809rc;
        RenderedImage createRendering = renderContext != null ? this.rdblImage.createRendering(renderContext) : this.rdblImage.createDefaultRendering();
        ColorModel colorModel = createRendering.getColorModel();
        Raster data = createRendering.getData();
        SampleModel sampleModel = data.getSampleModel();
        DataBuffer dataBuffer = data.getDataBuffer();
        if (colorModel == null) {
            colorModel = ColorModel.getRGBdefault();
        }
        data.getMinX();
        data.getMinY();
        int width = data.getWidth();
        int height = data.getHeight();
        Enumeration elements = this.ics.elements();
        while (elements.hasMoreElements()) {
            ImageConsumer imageConsumer = (ImageConsumer) elements.nextElement();
            imageConsumer.setDimensions(width, height);
            imageConsumer.setHints(30);
        }
        int[] iArr = new int[width];
        int[] iArr2 = new int[sampleModel.getNumBands()];
        int i = 0;
        int i2 = 0;
        while (i2 < height) {
            for (int i3 = i; i3 < width; i3++) {
                sampleModel.getPixel(i3, i2, iArr2, dataBuffer);
                iArr[i3] = colorModel.getDataElement(iArr2, i);
            }
            Enumeration elements2 = this.ics.elements();
            while (elements2.hasMoreElements()) {
                ((ImageConsumer) elements2.nextElement()).setPixels(0, i2, width, 1, colorModel, iArr, 0, width);
                iArr2 = iArr2;
                i2 = i2;
                i = i;
            }
            i2++;
        }
        Enumeration elements3 = this.ics.elements();
        while (elements3.hasMoreElements()) {
            ((ImageConsumer) elements3.nextElement()).imageComplete(3);
        }
    }

    public synchronized void setRenderContext(RenderContext renderContext) {
        this.f97809rc = renderContext;
    }

    @Override // java.awt.image.ImageProducer
    public synchronized void startProduction(ImageConsumer imageConsumer) {
        addConsumer(imageConsumer);
        new Thread(this, "RenderableImageProducer Thread").start();
    }
}
