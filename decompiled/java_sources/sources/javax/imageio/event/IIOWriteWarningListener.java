package javax.imageio.event;

import java.util.EventListener;
import javax.imageio.ImageWriter;

/* loaded from: classes5.dex */
public interface IIOWriteWarningListener extends EventListener {
    void warningOccurred(ImageWriter imageWriter, int i, String str);
}
