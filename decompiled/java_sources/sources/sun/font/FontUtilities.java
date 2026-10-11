package sun.font;

import java.awt.Font;
import java.lang.ref.SoftReference;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.concurrent.ConcurrentHashMap;
import javax.swing.plaf.FontUIResource;
import org.apache.commons.lang3.SystemUtils;
import org.xmlresolver.logging.AbstractLogger;
import sun.util.logging.NeoPlatformLogger;

/* loaded from: classes16.dex */
public final class FontUtilities {
    public static final int MAX_LAYOUT_CHARCODE = 8303;
    public static final int MIN_LAYOUT_CHARCODE = 768;
    private static volatile SoftReference<ConcurrentHashMap<PhysicalFont, CompositeFont>> compMapRef;
    private static boolean debugFonts;
    public static boolean isLinux;
    public static boolean isMacOSX;
    public static boolean isMacOSX14;
    public static boolean isWindows;
    private static NeoPlatformLogger logger;
    private static boolean logging;
    private static final String[][] nameMap;
    public static boolean useJDKScaler;

    static {
        AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: sun.font.FontUtilities.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                String property = System.getProperty("os.name", "unknownOS");
                FontUtilities.isLinux = property.startsWith("Linux");
                boolean contains = property.contains("OS X");
                FontUtilities.isMacOSX = contains;
                if (contains) {
                    FontUtilities.isMacOSX14 = true;
                    String property2 = System.getProperty("os.version", "");
                    if (property2.startsWith("10.")) {
                        String substring = property2.substring(3);
                        int indexOf = substring.indexOf(46);
                        if (indexOf != -1) {
                            substring = substring.substring(0, indexOf);
                        }
                        try {
                            FontUtilities.isMacOSX14 = Integer.parseInt(substring) >= 14;
                        } catch (NumberFormatException unused) {
                        }
                    }
                }
                String property3 = System.getProperty("sun.java2d.font.scaler");
                if (property3 != null) {
                    FontUtilities.useJDKScaler = "jdk".equals(property3);
                } else {
                    FontUtilities.useJDKScaler = false;
                }
                FontUtilities.isWindows = property.startsWith(SystemUtils.f107420a);
                String property4 = System.getProperty("sun.java2d.debugfonts");
                if (property4 == null || property4.equals("false")) {
                    return null;
                }
                boolean unused2 = FontUtilities.debugFonts = true;
                NeoPlatformLogger unused3 = FontUtilities.logger = NeoPlatformLogger.getLogger("sun.java2d");
                if (property4.equals(AbstractLogger.WARNING)) {
                    FontUtilities.logger.setLevel(NeoPlatformLogger.Level.WARNING);
                } else if (property4.equals("severe")) {
                    FontUtilities.logger.setLevel(NeoPlatformLogger.Level.SEVERE);
                }
                boolean unused4 = FontUtilities.logging = FontUtilities.logger.isEnabled();
                return null;
            }
        });
        compMapRef = new SoftReference<>(null);
        nameMap = new String[][]{new String[]{"sans", "sansserif"}, new String[]{"sans-serif", "sansserif"}, new String[]{"serif", "serif"}, new String[]{"monospace", "monospaced"}};
    }

    public static boolean debugFonts() {
        return debugFonts;
    }

    public static boolean fontSupportsDefaultEncoding(Font font) {
        return getFont2D(font) instanceof CompositeFont;
    }

    public static FontUIResource getCompositeFontUIResource(Font font) {
        Font2D findFont2D;
        FontUIResource fontUIResource = new FontUIResource(font);
        Font2D font2D = getFont2D(font);
        if ((font2D instanceof PhysicalFont) && (findFont2D = FontManagerFactory.getInstance().findFont2D("dialog", font.getStyle(), 0)) != null && (findFont2D instanceof CompositeFont)) {
            CompositeFont compositeFont = (CompositeFont) findFont2D;
            PhysicalFont physicalFont = (PhysicalFont) font2D;
            ConcurrentHashMap<PhysicalFont, CompositeFont> concurrentHashMap = compMapRef.get();
            if (concurrentHashMap == null) {
                concurrentHashMap = new ConcurrentHashMap<>();
                compMapRef = new SoftReference<>(concurrentHashMap);
            }
            CompositeFont compositeFont2 = concurrentHashMap.get(physicalFont);
            if (compositeFont2 == null) {
                compositeFont2 = new CompositeFont(physicalFont, compositeFont);
                concurrentHashMap.put(physicalFont, compositeFont2);
            }
            FontAccess.getFontAccess().setFont2D(fontUIResource, compositeFont2.handle);
            FontAccess.getFontAccess().setCreatedFont(fontUIResource);
        }
        return fontUIResource;
    }

    public static Font2D getFont2D(Font font) {
        return FontAccess.getFontAccess().getFont2D(font);
    }

    public static FontUIResource getFontConfigFUIR(String str, int i, int i2) {
        String mapFcName = mapFcName(str);
        if (mapFcName == null) {
            mapFcName = "sansserif";
        }
        FontManager fontManagerFactory = FontManagerFactory.getInstance();
        return fontManagerFactory instanceof SunFontManager ? ((SunFontManager) fontManagerFactory).getFontConfigFUIR(mapFcName, i, i2) : new FontUIResource(mapFcName, i, i2);
    }

    public static NeoPlatformLogger getLogger() {
        return logger;
    }

    public static boolean isComplexCharCode(int i) {
        if (i >= 768 && i <= 8303) {
            if (i <= 879) {
                return true;
            }
            if (i < 1424) {
                return false;
            }
            if (i <= 1791) {
                return true;
            }
            if (i < 2304) {
                return false;
            }
            if (i <= 3711) {
                return true;
            }
            if (i < 3840) {
                return false;
            }
            if (i <= 4095 || i < 4256) {
                return true;
            }
            if (i < 4352) {
                return false;
            }
            if (i < 4607) {
                return true;
            }
            if (i < 6016) {
                return false;
            }
            if (i <= 6143) {
                return true;
            }
            if (i < 8204) {
                return false;
            }
            if (i <= 8205) {
                return true;
            }
            if (i >= 8234 && i <= 8238) {
                return true;
            }
            if (i >= 8298 && i <= 8303) {
                return true;
            }
        }
        return false;
    }

    public static boolean isComplexScript(char[] cArr, int i, int i2) {
        while (i < i2) {
            char c = cArr[i];
            if (c >= 768 && isComplexCharCode(c)) {
                return true;
            }
            i++;
        }
        return false;
    }

    public static boolean isComplexText(char[] cArr, int i, int i2) {
        while (i < i2) {
            char c = cArr[i];
            if (c >= 768 && isNonSimpleChar(c)) {
                return true;
            }
            i++;
        }
        return false;
    }

    public static boolean isLogging() {
        return logging;
    }

    public static boolean isNonSimpleChar(char c) {
        return isComplexCharCode(c) || (c >= 55296 && c <= 57343);
    }

    public static void logInfo(String str) {
        getLogger().info(str);
    }

    public static void logSevere(String str) {
        getLogger().severe(str);
    }

    public static void logWarning(String str) {
        getLogger().warning(str);
    }

    public static String mapFcName(String str) {
        int i = 0;
        while (true) {
            String[][] strArr = nameMap;
            if (i >= strArr.length) {
                return null;
            }
            if (str.equals(strArr[i][0])) {
                return strArr[i][1];
            }
            i++;
        }
    }

    public static boolean textLayoutIsCompatible(Font font) {
        Font2D font2D = getFont2D(font);
        if (!(font2D instanceof TrueTypeFont)) {
            return false;
        }
        TrueTypeFont trueTypeFont = (TrueTypeFont) font2D;
        return trueTypeFont.getDirectoryEntry(TrueTypeFont.GSUBTag) == null || trueTypeFont.getDirectoryEntry(TrueTypeFont.GPOSTag) != null;
    }
}
