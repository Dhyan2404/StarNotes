package javax.imageio.event;

import java.util.EventListener;
import javax.imageio.ImageReader;

/* loaded from: classes5.dex */
public interface IIOReadProgressListener extends EventListener {
    void imageComplete(ImageReader imageReader);

    void imageProgress(ImageReader imageReader, float f);

    void imageStarted(ImageReader imageReader, int i);

    void readAborted(ImageReader imageReader);

    void sequenceComplete(ImageReader imageReader);

    void sequenceStarted(ImageReader imageReader, int i);

    void thumbnailComplete(ImageReader imageReader);

    void thumbnailProgress(ImageReader imageReader, float f);

    void thumbnailStarted(ImageReader imageReader, int i, int i2);
}
