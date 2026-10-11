package sun.font;

/* loaded from: classes16.dex */
public final class FontManagerFactory {
    private static final String DEFAULT_CLASS;
    private static FontManager instance;

    static {
        if (FontUtilities.isWindows) {
            DEFAULT_CLASS = "sun.awt.Win32FontManager";
        } else if (FontUtilities.isMacOSX) {
            DEFAULT_CLASS = "sun.font.CFontManager";
        } else {
            DEFAULT_CLASS = "sun.awt.X11FontManager";
        }
    }

    public static synchronized FontManager getInstance() {
        FontManager fontManager;
        synchronized (FontManagerFactory.class) {
            if (instance == null) {
                AndroidFontManager androidFontManager = new AndroidFontManager();
                instance = androidFontManager;
                androidFontManager.registerDefaultFont();
            }
            fontManager = instance;
        }
        return fontManager;
    }
}
