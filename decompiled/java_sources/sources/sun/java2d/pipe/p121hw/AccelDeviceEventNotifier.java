package sun.java2d.pipe.p121hw;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes16.dex */
public class AccelDeviceEventNotifier {
    public static final int DEVICE_DISPOSED = 1;
    public static final int DEVICE_RESET = 0;
    private static AccelDeviceEventNotifier theInstance;
    private final Map<AccelDeviceEventListener, Integer> listeners = Collections.synchronizedMap(new HashMap(1));

    private AccelDeviceEventNotifier() {
    }

    private final void add(AccelDeviceEventListener accelDeviceEventListener, int i) {
        this.listeners.put(accelDeviceEventListener, Integer.valueOf(i));
    }

    public static final void addListener(AccelDeviceEventListener accelDeviceEventListener, int i) {
        getInstance(true).add(accelDeviceEventListener, i);
    }

    public static final void eventOccured(int i, int i2) {
        AccelDeviceEventNotifier accelDeviceEventNotifier = getInstance(false);
        if (accelDeviceEventNotifier != null) {
            accelDeviceEventNotifier.notifyListeners(i2, i);
        }
    }

    private static synchronized AccelDeviceEventNotifier getInstance(boolean z) {
        AccelDeviceEventNotifier accelDeviceEventNotifier;
        synchronized (AccelDeviceEventNotifier.class) {
            if (theInstance == null && z) {
                theInstance = new AccelDeviceEventNotifier();
            }
            accelDeviceEventNotifier = theInstance;
        }
        return accelDeviceEventNotifier;
    }

    private final void notifyListeners(int i, int i2) {
        HashMap hashMap;
        synchronized (this.listeners) {
            hashMap = new HashMap(this.listeners);
        }
        for (AccelDeviceEventListener accelDeviceEventListener : hashMap.keySet()) {
            Integer num = (Integer) hashMap.get(accelDeviceEventListener);
            if (num == null || num.intValue() == i2) {
                if (i == 0) {
                    accelDeviceEventListener.onDeviceReset();
                } else if (i == 1) {
                    accelDeviceEventListener.onDeviceDispose();
                }
            }
        }
    }

    private final void remove(AccelDeviceEventListener accelDeviceEventListener) {
        this.listeners.remove(accelDeviceEventListener);
    }

    public static final void removeListener(AccelDeviceEventListener accelDeviceEventListener) {
        getInstance(true).remove(accelDeviceEventListener);
    }
}
