package sun.java2d;

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Rectangle;
import java.security.AccessController;
import sun.awt.image.SurfaceManager;
import sun.java2d.StateTrackable;
import sun.java2d.loops.Blit;
import sun.java2d.loops.BlitBg;
import sun.java2d.loops.CompositeType;
import sun.security.action.GetPropertyAction;

/* loaded from: classes16.dex */
public abstract class SurfaceDataProxy implements SurfaceManager.FlushableCacheData {
    public static SurfaceDataProxy UNCACHED = null;
    private static boolean cachingAllowed = true;
    private static int defaultThreshold;
    private StateTracker cacheTracker;
    private SurfaceData cachedSD;
    private int numtries;
    private StateTracker srcTracker;
    private int threshold;
    private boolean valid;

    /* loaded from: classes16.dex */
    public static class CountdownTracker implements StateTracker {
        private int countdown;

        public CountdownTracker(int i) {
            this.countdown = i;
        }

        @Override // sun.java2d.StateTracker
        public synchronized boolean isCurrent() {
            int i;
            i = this.countdown - 1;
            this.countdown = i;
            return i >= 0;
        }
    }

    static {
        String str = (String) AccessController.doPrivileged(new GetPropertyAction("sun.java2d.managedimages"));
        int i = 0;
        if (str != null && str.equals("false")) {
            cachingAllowed = false;
            System.out.println("Disabling managed images");
        }
        defaultThreshold = 1;
        String str2 = (String) AccessController.doPrivileged(new GetPropertyAction("sun.java2d.accthreshold"));
        if (str2 != null) {
            try {
                int parseInt = Integer.parseInt(str2);
                if (parseInt >= 0) {
                    defaultThreshold = parseInt;
                    System.out.println("New Default Acceleration Threshold: " + defaultThreshold);
                }
            } catch (NumberFormatException e) {
                System.err.println("Error setting new threshold:" + e);
            }
        }
        UNCACHED = new SurfaceDataProxy(i) { // from class: sun.java2d.SurfaceDataProxy.1
            @Override // sun.java2d.SurfaceDataProxy
            public boolean isAccelerated() {
                return false;
            }

            @Override // sun.java2d.SurfaceDataProxy
            public boolean isSupportedOperation(SurfaceData surfaceData, int i2, CompositeType compositeType, Color color) {
                return false;
            }

            @Override // sun.java2d.SurfaceDataProxy
            public SurfaceData replaceData(SurfaceData surfaceData, int i2, CompositeType compositeType, Color color) {
                return surfaceData;
            }

            @Override // sun.java2d.SurfaceDataProxy
            public SurfaceData validateSurfaceData(SurfaceData surfaceData, SurfaceData surfaceData2, int i2, int i3) {
                throw new InternalError("UNCACHED should never validate SDs");
            }
        };
    }

    public SurfaceDataProxy() {
        this(defaultThreshold);
    }

    public static boolean isCachingAllowed() {
        return cachingAllowed;
    }

    public void displayChanged() {
        flush();
    }

    @Override // sun.awt.image.SurfaceManager.FlushableCacheData
    public boolean flush(boolean z) {
        if (z) {
            invalidate();
        }
        flush();
        return !isValid();
    }

    public StateTracker getRetryTracker(SurfaceData surfaceData) {
        return new CountdownTracker(this.threshold);
    }

    public void invalidate() {
        this.valid = false;
    }

    public boolean isAccelerated() {
        return isValid() && this.srcTracker.isCurrent() && this.cacheTracker.isCurrent();
    }

    public abstract boolean isSupportedOperation(SurfaceData surfaceData, int i, CompositeType compositeType, Color color);

    public boolean isValid() {
        return this.valid;
    }

    public void paletteChanged() {
        this.srcTracker = StateTracker.NEVER_CURRENT;
    }

    public SurfaceData replaceData(SurfaceData surfaceData, int i, CompositeType compositeType, Color color) {
        StateTracker stateTracker;
        if (isSupportedOperation(surfaceData, i, compositeType, color)) {
            if (!this.srcTracker.isCurrent()) {
                synchronized (this) {
                    this.numtries = this.threshold;
                    stateTracker = surfaceData.getStateTracker();
                    this.srcTracker = stateTracker;
                    this.cacheTracker = StateTracker.NEVER_CURRENT;
                }
                if (!stateTracker.isCurrent()) {
                    if (surfaceData.getState() == StateTrackable.State.UNTRACKABLE) {
                        invalidate();
                        flush();
                    }
                    return surfaceData;
                }
            }
            SurfaceData surfaceData2 = this.cachedSD;
            if (!this.cacheTracker.isCurrent()) {
                synchronized (this) {
                    int i2 = this.numtries;
                    if (i2 > 0) {
                        this.numtries = i2 - 1;
                        return surfaceData;
                    }
                    Rectangle bounds = surfaceData.getBounds();
                    int i3 = bounds.width;
                    int i4 = bounds.height;
                    StateTracker stateTracker2 = this.srcTracker;
                    surfaceData2 = validateSurfaceData(surfaceData, surfaceData2, i3, i4);
                    if (surfaceData2 == null) {
                        synchronized (this) {
                            if (stateTracker2 == this.srcTracker) {
                                this.cacheTracker = getRetryTracker(surfaceData);
                                this.cachedSD = null;
                            }
                        }
                        return surfaceData;
                    }
                    updateSurfaceData(surfaceData, surfaceData2, i3, i4);
                    if (!surfaceData2.isValid()) {
                        return surfaceData;
                    }
                    synchronized (this) {
                        if (stateTracker2 == this.srcTracker && stateTracker2.isCurrent()) {
                            this.cacheTracker = surfaceData2.getStateTracker();
                            this.cachedSD = surfaceData2;
                        }
                    }
                }
            }
            if (surfaceData2 != null) {
                return surfaceData2;
            }
        }
        return surfaceData;
    }

    public void updateSurfaceData(SurfaceData surfaceData, SurfaceData surfaceData2, int i, int i2) {
        Blit.getFromCache(surfaceData.getSurfaceType(), CompositeType.SrcNoEa, surfaceData2.getSurfaceType()).Blit(surfaceData, surfaceData2, AlphaComposite.Src, null, 0, 0, 0, 0, i, i2);
        surfaceData2.markDirty();
    }

    public void updateSurfaceDataBg(SurfaceData surfaceData, SurfaceData surfaceData2, int i, int i2, Color color) {
        BlitBg.getFromCache(surfaceData.getSurfaceType(), CompositeType.SrcNoEa, surfaceData2.getSurfaceType()).BlitBg(surfaceData, surfaceData2, AlphaComposite.Src, null, color.getRGB(), 0, 0, 0, 0, i, i2);
        surfaceData2.markDirty();
    }

    public abstract SurfaceData validateSurfaceData(SurfaceData surfaceData, SurfaceData surfaceData2, int i, int i2);

    public SurfaceDataProxy(int i) {
        this.threshold = i;
        StateTracker stateTracker = StateTracker.NEVER_CURRENT;
        this.srcTracker = stateTracker;
        this.cacheTracker = stateTracker;
        this.valid = true;
    }

    public synchronized void flush() {
        SurfaceData surfaceData = this.cachedSD;
        this.cachedSD = null;
        this.cacheTracker = StateTracker.NEVER_CURRENT;
        if (surfaceData != null) {
            surfaceData.flush();
        }
    }
}
