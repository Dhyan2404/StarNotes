package sun.java2d.pipe.p121hw;

import java.awt.image.VolatileImage;

/* loaded from: classes16.dex */
public interface AccelGraphicsConfig extends BufferedContextProvider {
    void addDeviceEventListener(AccelDeviceEventListener accelDeviceEventListener);

    VolatileImage createCompatibleVolatileImage(int i, int i2, int i3, int i4);

    ContextCapabilities getContextCapabilities();

    void removeDeviceEventListener(AccelDeviceEventListener accelDeviceEventListener);
}
