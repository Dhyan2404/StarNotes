package sun.awt;

import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
import sun.util.logging.NeoPlatformLogger;

/* loaded from: classes16.dex */
public class SunDisplayChanger {
    private static final NeoPlatformLogger log = NeoPlatformLogger.getLogger("sun.awt.multiscreen.SunDisplayChanger");
    private Map<DisplayChangedListener, Void> listeners = Collections.synchronizedMap(new WeakHashMap(1));

    public void add(DisplayChangedListener displayChangedListener) {
        NeoPlatformLogger neoPlatformLogger = log;
        if (neoPlatformLogger.isLoggable(NeoPlatformLogger.Level.FINE) && displayChangedListener == null) {
            neoPlatformLogger.fine("Assertion (theListener != null) failed");
        }
        if (neoPlatformLogger.isLoggable(NeoPlatformLogger.Level.FINER)) {
            neoPlatformLogger.finer("Adding listener: " + displayChangedListener);
        }
        this.listeners.put(displayChangedListener, null);
    }

    public void notifyListeners() {
        HashSet<DisplayChangedListener> hashSet;
        NeoPlatformLogger neoPlatformLogger = log;
        if (neoPlatformLogger.isLoggable(NeoPlatformLogger.Level.FINEST)) {
            neoPlatformLogger.finest("notifyListeners");
        }
        synchronized (this.listeners) {
            hashSet = new HashSet(this.listeners.keySet());
        }
        for (DisplayChangedListener displayChangedListener : hashSet) {
            try {
                NeoPlatformLogger neoPlatformLogger2 = log;
                if (neoPlatformLogger2.isLoggable(NeoPlatformLogger.Level.FINEST)) {
                    neoPlatformLogger2.finest("displayChanged for listener: " + displayChangedListener);
                }
                displayChangedListener.displayChanged();
            } catch (Exception unused) {
                this.listeners.remove(displayChangedListener);
            }
        }
    }

    public void notifyPaletteChanged() {
        HashSet<DisplayChangedListener> hashSet;
        NeoPlatformLogger neoPlatformLogger = log;
        if (neoPlatformLogger.isLoggable(NeoPlatformLogger.Level.FINEST)) {
            neoPlatformLogger.finest("notifyPaletteChanged");
        }
        synchronized (this.listeners) {
            hashSet = new HashSet(this.listeners.keySet());
        }
        for (DisplayChangedListener displayChangedListener : hashSet) {
            try {
                NeoPlatformLogger neoPlatformLogger2 = log;
                if (neoPlatformLogger2.isLoggable(NeoPlatformLogger.Level.FINEST)) {
                    neoPlatformLogger2.finest("paletteChanged for listener: " + displayChangedListener);
                }
                displayChangedListener.paletteChanged();
            } catch (Exception unused) {
                this.listeners.remove(displayChangedListener);
            }
        }
    }

    public void remove(DisplayChangedListener displayChangedListener) {
        NeoPlatformLogger neoPlatformLogger = log;
        if (neoPlatformLogger.isLoggable(NeoPlatformLogger.Level.FINE) && displayChangedListener == null) {
            neoPlatformLogger.fine("Assertion (theListener != null) failed");
        }
        if (neoPlatformLogger.isLoggable(NeoPlatformLogger.Level.FINER)) {
            neoPlatformLogger.finer("Removing listener: " + displayChangedListener);
        }
        this.listeners.remove(displayChangedListener);
    }
}
