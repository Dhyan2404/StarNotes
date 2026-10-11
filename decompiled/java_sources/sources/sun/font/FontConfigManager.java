package sun.font;

import java.util.Locale;
import sun.awt.SunHints;

/* loaded from: classes16.dex */
public class FontConfigManager {
    static boolean fontConfigFailed;
    private FcCompFont[] fontConfigFonts;
    private static final FontConfigInfo fcInfo = new FontConfigInfo();
    private static String[] fontConfigNames = {"sans:regular:roman", "sans:bold:roman", "sans:regular:italic", "sans:bold:italic", "serif:regular:roman", "serif:bold:roman", "serif:regular:italic", "serif:bold:italic", "monospace:regular:roman", "monospace:bold:roman", "monospace:regular:italic", "monospace:bold:italic"};

    /* loaded from: classes16.dex */
    public static class FcCompFont {
        public FontConfigFont[] allFonts;
        public CompositeFont compFont;
        public String fcFamily;
        public String fcName;
        public FontConfigFont firstFont;
        public String jdkName;
        public int style;
    }

    /* loaded from: classes16.dex */
    public static class FontConfigFont {
        public String familyName;
        public String fontFile;
        public String fullName;
        public String styleStr;
    }

    /* loaded from: classes16.dex */
    public static class FontConfigInfo {
        public String[] cacheDirs = new String[4];
        public int fcVersion;
    }

    private static String getFCLocaleStr() {
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        String country = locale.getCountry();
        if (country.isEmpty()) {
            return language;
        }
        return language + "-" + country;
    }

    private static void getFontConfig(String str, FontConfigInfo fontConfigInfo, FcCompFont[] fcCompFontArr, boolean z) {
    }

    public static Object getFontConfigAAHint() {
        return getFontConfigAAHint("sans");
    }

    private static int getFontConfigAASettings(String str, String str2) {
        return 0;
    }

    public static int getFontConfigVersion() {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public sun.font.CompositeFont getFontConfigFont(java.lang.String r8, int r9) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.font.FontConfigManager.getFontConfigFont(java.lang.String, int):sun.font.CompositeFont");
    }

    public FcCompFont[] getFontConfigFonts() {
        return this.fontConfigFonts;
    }

    public FontConfigInfo getFontConfigInfo() {
        initFontConfigFonts(true);
        return fcInfo;
    }

    public synchronized void initFontConfigFonts(boolean z) {
        FcCompFont[] fcCompFontArr = this.fontConfigFonts;
        if (fcCompFontArr == null || (z && fcCompFontArr[0].allFonts == null)) {
            if (!FontUtilities.isWindows && !fontConfigFailed) {
                long nanoTime = FontUtilities.isLogging() ? System.nanoTime() : 0L;
                int length = fontConfigNames.length;
                FcCompFont[] fcCompFontArr2 = new FcCompFont[length];
                for (int i = 0; i < length; i++) {
                    FcCompFont fcCompFont = new FcCompFont();
                    fcCompFontArr2[i] = fcCompFont;
                    String str = fontConfigNames[i];
                    fcCompFont.fcName = str;
                    int indexOf = str.indexOf(58);
                    FcCompFont fcCompFont2 = fcCompFontArr2[i];
                    fcCompFont2.fcFamily = fcCompFont2.fcName.substring(0, indexOf);
                    FcCompFont fcCompFont3 = fcCompFontArr2[i];
                    fcCompFont3.jdkName = FontUtilities.mapFcName(fcCompFont3.fcFamily);
                    fcCompFontArr2[i].style = i % 4;
                }
                getFontConfig(getFCLocaleStr(), fcInfo, fcCompFontArr2, z);
                FontConfigFont fontConfigFont = null;
                for (int i2 = 0; i2 < length; i2++) {
                    FontConfigFont fontConfigFont2 = fcCompFontArr2[i2].firstFont;
                    if (fontConfigFont2 == null) {
                        if (FontUtilities.isLogging()) {
                            FontUtilities.logInfo("Fontconfig returned no font for " + fcCompFontArr2[i2].fcName);
                        }
                        fontConfigFailed = true;
                    } else if (fontConfigFont == null) {
                        fontConfigFont = fontConfigFont2;
                    }
                }
                if (fontConfigFont == null) {
                    if (FontUtilities.isLogging()) {
                        FontUtilities.logInfo("Fontconfig returned no fonts at all.");
                    }
                    fontConfigFailed = true;
                    return;
                }
                if (fontConfigFailed) {
                    for (int i3 = 0; i3 < length; i3++) {
                        FcCompFont fcCompFont4 = fcCompFontArr2[i3];
                        if (fcCompFont4.firstFont == null) {
                            fcCompFont4.firstFont = fontConfigFont;
                        }
                    }
                }
                this.fontConfigFonts = fcCompFontArr2;
                if (FontUtilities.isLogging()) {
                    FontUtilities.logInfo("Time spent accessing fontconfig=" + ((System.nanoTime() - nanoTime) / 1000000) + "ms.");
                    int i4 = 0;
                    while (true) {
                        FcCompFont[] fcCompFontArr3 = this.fontConfigFonts;
                        if (i4 >= fcCompFontArr3.length) {
                            break;
                        }
                        FcCompFont fcCompFont5 = fcCompFontArr3[i4];
                        FontUtilities.logInfo("FC font " + fcCompFont5.fcName + " maps to family " + fcCompFont5.firstFont.familyName + " in file " + fcCompFont5.firstFont.fontFile);
                        if (fcCompFont5.allFonts != null) {
                            int i5 = 0;
                            while (true) {
                                FontConfigFont[] fontConfigFontArr = fcCompFont5.allFonts;
                                if (i5 < fontConfigFontArr.length) {
                                    FontConfigFont fontConfigFont3 = fontConfigFontArr[i5];
                                    FontUtilities.logInfo("Family=" + fontConfigFont3.familyName + " Style=" + fontConfigFont3.styleStr + " Fullname=" + fontConfigFont3.fullName + " File=" + fontConfigFont3.fontFile);
                                    i5++;
                                }
                            }
                        }
                        i4++;
                    }
                }
            }
        }
    }

    public FcCompFont[] loadFontConfig() {
        initFontConfigFonts(true);
        return this.fontConfigFonts;
    }

    public void populateFontConfig(FcCompFont[] fcCompFontArr) {
        this.fontConfigFonts = fcCompFontArr;
    }

    public PhysicalFont registerFromFcInfo(FcCompFont fcCompFont) {
        int i;
        int i2;
        SunFontManager sunFontManager = SunFontManager.getInstance();
        String str = fcCompFont.firstFont.fontFile;
        int length = str.length() - 4;
        if (length <= 0) {
            return null;
        }
        String lowerCase = str.substring(length).toLowerCase();
        boolean equals = lowerCase.equals(".ttc");
        PhysicalFont registeredFontFile = sunFontManager.getRegisteredFontFile(str);
        if (registeredFontFile != null) {
            if (!equals) {
                return registeredFontFile;
            }
            Font2D findFont2D = sunFontManager.findFont2D(fcCompFont.firstFont.familyName, fcCompFont.style, 0);
            if (findFont2D instanceof PhysicalFont) {
                return (PhysicalFont) findFont2D;
            }
            return null;
        }
        PhysicalFont findJREDeferredFont = sunFontManager.findJREDeferredFont(fcCompFont.firstFont.familyName, fcCompFont.style);
        if (findJREDeferredFont == null && sunFontManager.isDeferredFont(str) && (findJREDeferredFont = sunFontManager.initialiseDeferredFont(fcCompFont.firstFont.fontFile)) != null) {
            if (!equals) {
                return findJREDeferredFont;
            }
            Font2D findFont2D2 = sunFontManager.findFont2D(fcCompFont.firstFont.familyName, fcCompFont.style, 0);
            if (findFont2D2 instanceof PhysicalFont) {
                return (PhysicalFont) findFont2D2;
            }
            return null;
        }
        if (findJREDeferredFont != null) {
            return findJREDeferredFont;
        }
        if (lowerCase.equals(".ttf") || equals) {
            i = 3;
            i2 = 0;
        } else if (lowerCase.equals(".pfa") || lowerCase.equals(".pfb")) {
            i = 4;
            i2 = 1;
        } else {
            i2 = -1;
            i = 6;
        }
        return sunFontManager.registerFontFile(fcCompFont.firstFont.fontFile, null, i2, true, i);
    }

    public static Object getFontConfigAAHint(String str) {
        int fontConfigAASettings;
        if (!FontUtilities.isWindows && (fontConfigAASettings = getFontConfigAASettings(getFCLocaleStr(), str)) >= 0) {
            return SunHints.Value.get(2, fontConfigAASettings);
        }
        return null;
    }
}
