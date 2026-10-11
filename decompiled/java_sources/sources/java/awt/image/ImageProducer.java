package java.awt.image;

/* loaded from: classes5.dex */
public interface ImageProducer {
    void addConsumer(ImageConsumer imageConsumer);

    boolean isConsumer(ImageConsumer imageConsumer);

    void removeConsumer(ImageConsumer imageConsumer);

    void requestTopDownLeftRightResend(ImageConsumer imageConsumer);

    void startProduction(ImageConsumer imageConsumer);
}
