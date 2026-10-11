package sun.java2d;

import java.awt.AWTError;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.GraphicsConfiguration;
import java.awt.GraphicsDevice;
import java.awt.GraphicsEnvironment;
import java.awt.Insets;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.Toolkit;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.security.AccessController;
import java.util.Arrays;
import java.util.Locale;
import java.util.TreeMap;
import sun.awt.DisplayChangedListener;
import sun.awt.SunDisplayChanger;
import sun.font.FontManagerFactory;
import sun.font.FontManagerForSGE;
import sun.java2d.pipe.Region;
import sun.security.action.GetPropertyAction;

/* loaded from: classes16.dex */
public abstract class SunGraphicsEnvironment extends GraphicsEnvironment implements DisplayChangedListener {
    private static final double debugScale;
    private static final boolean uiScaleEnabled;
    private final Font defaultFont = new Font(Font.DIALOG, 0, 12);
    protected SunDisplayChanger displayChanger = new SunDisplayChanger();
    protected GraphicsDevice[] screens;

    static {
        boolean equals = "true".equals(AccessController.doPrivileged(new GetPropertyAction("sun.java2d.uiScale.enabled", "true")));
        uiScaleEnabled = equals;
        debugScale = equals ? getScaleFactor("sun.java2d.uiScale") : -1.0d;
    }

    public static Point convertToDeviceSpace(double d, double d2) {
        AffineTransform defaultTransform = getGraphicsConfigurationAtPoint(GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice().getDefaultConfiguration(), d, d2).getDefaultTransform();
        return new Point(Region.clipRound(d * defaultTransform.getScaleX()), Region.clipRound(d2 * defaultTransform.getScaleY()));
    }

    public static double getDebugScale() {
        return debugScale;
    }

    public static FontManagerForSGE getFontManagerForSGE() {
        return (FontManagerForSGE) FontManagerFactory.getInstance();
    }

    public static GraphicsConfiguration getGraphicsConfigurationAtPoint(GraphicsConfiguration graphicsConfiguration, double d, double d2) {
        if (graphicsConfiguration.getBounds().contains(d, d2)) {
            return graphicsConfiguration;
        }
        for (GraphicsDevice graphicsDevice : GraphicsEnvironment.getLocalGraphicsEnvironment().getScreenDevices()) {
            GraphicsConfiguration defaultConfiguration = graphicsDevice.getDefaultConfiguration();
            if (defaultConfiguration.getBounds().contains(d, d2)) {
                return defaultConfiguration;
            }
        }
        return graphicsConfiguration;
    }

    public static double getScaleFactor(String str) {
        double d;
        double parseDouble;
        String str2 = (String) AccessController.doPrivileged(new GetPropertyAction(str, "-1"));
        if (str2 == null) {
            return -1.0d;
        }
        if (!str2.equals("-1")) {
            try {
                d = 1.0d;
                if (str2.endsWith("x")) {
                    str2 = str2.substring(0, str2.length() - 1);
                } else if (str2.endsWith("dpi")) {
                    str2 = str2.substring(0, str2.length() - 3);
                    d = 96.0d;
                } else if (str2.endsWith("%")) {
                    str2 = str2.substring(0, str2.length() - 1);
                    d = 100.0d;
                }
                parseDouble = Double.parseDouble(str2);
                if (parseDouble <= 0.0d) {
                    return -1.0d;
                }
            } catch (NumberFormatException unused) {
                return -1.0d;
            }
        }
        return parseDouble / d;
    }

    public static Rectangle getUsableBounds(GraphicsDevice graphicsDevice) {
        GraphicsConfiguration defaultConfiguration = graphicsDevice.getDefaultConfiguration();
        Insets screenInsets = Toolkit.getDefaultToolkit().getScreenInsets(defaultConfiguration);
        Rectangle bounds = defaultConfiguration.getBounds();
        int i = bounds.f97732x;
        int i2 = screenInsets.left;
        bounds.f97732x = i + i2;
        int i3 = bounds.f97733y;
        int i4 = screenInsets.top;
        bounds.f97733y = i3 + i4;
        bounds.width -= i2 + screenInsets.right;
        bounds.height -= i4 + screenInsets.bottom;
        return bounds;
    }

    public static boolean isUIScaleEnabled() {
        return uiScaleEnabled;
    }

    @Deprecated
    public static void useAlternateFontforJALocales() {
        getFontManagerForSGE().useAlternateFontforJALocales();
    }

    public void addDisplayChangedListener(DisplayChangedListener displayChangedListener) {
        this.displayChanger.add(displayChangedListener);
    }

    @Override // java.awt.GraphicsEnvironment
    public Graphics2D createGraphics(BufferedImage bufferedImage) {
        if (bufferedImage != null) {
            return new SunGraphics2D(SurfaceData.getPrimarySurfaceData(bufferedImage), Color.white, Color.black, this.defaultFont);
        }
        throw new NullPointerException("BufferedImage cannot be null");
    }

    @Override // sun.awt.DisplayChangedListener
    public void displayChanged() {
        for (Object obj : getScreenDevices()) {
            if (obj instanceof DisplayChangedListener) {
                ((DisplayChangedListener) obj).displayChanged();
            }
        }
        this.displayChanger.notifyListeners();
    }

    @Override // java.awt.GraphicsEnvironment
    public Font[] getAllFonts() {
        FontManagerForSGE fontManagerForSGE = getFontManagerForSGE();
        Font[] allInstalledFonts = fontManagerForSGE.getAllInstalledFonts();
        Font[] createdFonts = fontManagerForSGE.getCreatedFonts();
        if (createdFonts == null || createdFonts.length == 0) {
            return allInstalledFonts;
        }
        Font[] fontArr = (Font[]) Arrays.copyOf(allInstalledFonts, allInstalledFonts.length + createdFonts.length);
        System.arraycopy(createdFonts, 0, fontArr, allInstalledFonts.length, createdFonts.length);
        return fontArr;
    }

    @Override // java.awt.GraphicsEnvironment
    public String[] getAvailableFontFamilyNames(Locale locale) {
        FontManagerForSGE fontManagerForSGE = getFontManagerForSGE();
        String[] installedFontFamilyNames = fontManagerForSGE.getInstalledFontFamilyNames(locale);
        TreeMap<String, String> createdFontFamilyNames = fontManagerForSGE.getCreatedFontFamilyNames();
        if (createdFontFamilyNames == null || createdFontFamilyNames.size() == 0) {
            return installedFontFamilyNames;
        }
        for (int i = 0; i < installedFontFamilyNames.length; i++) {
            createdFontFamilyNames.put(installedFontFamilyNames[i].toLowerCase(locale), installedFontFamilyNames[i]);
        }
        String[] strArr = new String[createdFontFamilyNames.size()];
        Object[] array = createdFontFamilyNames.keySet().toArray();
        for (int i2 = 0; i2 < array.length; i2++) {
            strArr[i2] = createdFontFamilyNames.get(array[i2]);
        }
        return strArr;
    }

    @Override // java.awt.GraphicsEnvironment
    public GraphicsDevice getDefaultScreenDevice() {
        GraphicsDevice[] screenDevices = getScreenDevices();
        if (screenDevices.length != 0) {
            return screenDevices[0];
        }
        throw new AWTError("no screen devices");
    }

    public abstract int getNumScreens();

    @Override // java.awt.GraphicsEnvironment
    public synchronized GraphicsDevice[] getScreenDevices() {
        GraphicsDevice[] graphicsDeviceArr;
        graphicsDeviceArr = this.screens;
        if (graphicsDeviceArr == null) {
            int numScreens = getNumScreens();
            GraphicsDevice[] graphicsDeviceArr2 = new GraphicsDevice[numScreens];
            for (int i = 0; i < numScreens; i++) {
                graphicsDeviceArr2[i] = makeScreenDevice(i);
            }
            this.screens = graphicsDeviceArr2;
            graphicsDeviceArr = graphicsDeviceArr2;
        }
        return graphicsDeviceArr;
    }

    public abstract boolean isDisplayLocal();

    public abstract GraphicsDevice makeScreenDevice(int i);

    @Override // sun.awt.DisplayChangedListener
    public void paletteChanged() {
        this.displayChanger.notifyPaletteChanged();
    }

    public void removeDisplayChangedListener(DisplayChangedListener displayChangedListener) {
        this.displayChanger.remove(displayChangedListener);
    }

    public static Rectangle convertToDeviceSpace(Rectangle rectangle) {
        return convertToDeviceSpace(getGraphicsConfigurationAtPoint(GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice().getDefaultConfiguration(), rectangle.f97732x, rectangle.f97733y), rectangle);
    }

    @Override // java.awt.GraphicsEnvironment
    public String[] getAvailableFontFamilyNames() {
        return getAvailableFontFamilyNames(Locale.getDefault());
    }

    public static Rectangle convertToDeviceSpace(GraphicsConfiguration graphicsConfiguration, Rectangle rectangle) {
        AffineTransform defaultTransform = graphicsConfiguration.getDefaultTransform();
        return new Rectangle(Region.clipRound(rectangle.f97732x * defaultTransform.getScaleX()), Region.clipRound(rectangle.f97733y * defaultTransform.getScaleY()), Region.clipRound(rectangle.width * defaultTransform.getScaleX()), Region.clipRound(rectangle.height * defaultTransform.getScaleY()));
    }
}
