package javax.imageio.event;

import java.util.EventListener;
import javax.imageio.ImageWriter;

/* loaded from: classes5.dex */
public interface IIOWriteProgressListener extends EventListener {
    void imageComplete(ImageWriter imageWriter);

    void imageProgress(ImageWriter imageWriter, float f);

    void imageStarted(ImageWriter imageWriter, int i);

    void thumbnailComplete(ImageWriter imageWriter);

    void thumbnailProgress(ImageWriter imageWriter, float f);

    void thumbnailStarted(ImageWriter imageWriter, int i, int i2);

    void writeAborted(ImageWriter imageWriter);
}
