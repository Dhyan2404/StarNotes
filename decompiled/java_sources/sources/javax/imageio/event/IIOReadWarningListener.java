package javax.imageio.event;

import java.util.EventListener;
import javax.imageio.ImageReader;

/* loaded from: classes5.dex */
public interface IIOReadWarningListener extends EventListener {
    void warningOccurred(ImageReader imageReader, String str);
}
