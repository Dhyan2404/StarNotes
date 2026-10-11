package java.awt;

import android.view.Window;
import sun.awt.AppContext;

/* loaded from: classes4.dex */
public abstract class GraphicsDevice {
    public static final int TYPE_IMAGE_BUFFER = 2;
    public static final int TYPE_PRINTER = 1;
    public static final int TYPE_RASTER_SCREEN = 0;
    private final Object fsAppContextLock = new Object();
    private AppContext fullScreenAppContext;
    private Window fullScreenWindow;
    private Rectangle windowedModeBounds;

    /* renamed from: java.awt.GraphicsDevice$1 */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C176621 {
        static final /* synthetic */ int[] $SwitchMap$java$awt$GraphicsDevice$WindowTranslucency;

        static {
            int[] iArr = new int[WindowTranslucency.values().length];
            $SwitchMap$java$awt$GraphicsDevice$WindowTranslucency = iArr;
            try {
                iArr[WindowTranslucency.PERPIXEL_TRANSPARENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$awt$GraphicsDevice$WindowTranslucency[WindowTranslucency.TRANSLUCENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$awt$GraphicsDevice$WindowTranslucency[WindowTranslucency.PERPIXEL_TRANSLUCENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public enum WindowTranslucency {
        PERPIXEL_TRANSPARENT,
        TRANSLUCENT,
        PERPIXEL_TRANSLUCENT
    }

    public static boolean isWindowOpacitySupported() {
        return false;
    }

    public static boolean isWindowShapingSupported() {
        return false;
    }

    public int getAvailableAcceleratedMemory() {
        return -1;
    }

    public GraphicsConfiguration getBestConfiguration(GraphicsConfigTemplate graphicsConfigTemplate) {
        return graphicsConfigTemplate.getBestConfiguration(getConfigurations());
    }

    public abstract GraphicsConfiguration[] getConfigurations();

    public abstract GraphicsConfiguration getDefaultConfiguration();

    public DisplayMode getDisplayMode() {
        GraphicsConfiguration defaultConfiguration = getDefaultConfiguration();
        Rectangle bounds = defaultConfiguration.getBounds();
        return new DisplayMode(bounds.width, bounds.height, defaultConfiguration.getColorModel().getPixelSize(), 0);
    }

    public DisplayMode[] getDisplayModes() {
        return new DisplayMode[]{getDisplayMode()};
    }

    public Window getFullScreenWindow() {
        Window window;
        synchronized (this.fsAppContextLock) {
            window = this.fullScreenAppContext == AppContext.getAppContext() ? this.fullScreenWindow : null;
        }
        return window;
    }

    public abstract String getIDstring();

    public GraphicsConfiguration getTranslucencyCapableGC() {
        GraphicsConfiguration defaultConfiguration = getDefaultConfiguration();
        if (defaultConfiguration.isTranslucencyCapable()) {
            return defaultConfiguration;
        }
        GraphicsConfiguration[] configurations = getConfigurations();
        for (int i = 0; i < configurations.length; i++) {
            if (configurations[i].isTranslucencyCapable()) {
                return configurations[i];
            }
        }
        return null;
    }

    public abstract int getType();

    public boolean isDisplayChangeSupported() {
        return false;
    }

    public boolean isFullScreenSupported() {
        return false;
    }

    public boolean isWindowPerpixelTranslucencySupported() {
        return false;
    }

    public boolean isWindowTranslucencySupported(WindowTranslucency windowTranslucency) {
        int i = C176621.$SwitchMap$java$awt$GraphicsDevice$WindowTranslucency[windowTranslucency.ordinal()];
        if (i == 1) {
            return isWindowShapingSupported();
        }
        if (i == 2) {
            return isWindowOpacitySupported();
        }
        if (i != 3) {
            return false;
        }
        return isWindowPerpixelTranslucencySupported();
    }

    public void setDisplayMode(DisplayMode displayMode) {
        throw new UnsupportedOperationException("Cannot change display mode");
    }

    public void setFullScreenWindow(Window window) {
    }
}
