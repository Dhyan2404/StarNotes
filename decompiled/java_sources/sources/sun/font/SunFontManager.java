package sun.font;

import com.bumptech.glide.load.engine.GlideException;
import com.onyx.android.sdk.base.utils.FontUtils;
import java.awt.Font;
import java.awt.FontFormatException;
import java.io.File;
import java.io.FilenameFilter;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import java.util.TreeMap;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
import javax.swing.plaf.FontUIResource;
import org.apache.commons.lang3.SystemUtils;
import sun.awt.FontConfiguration;
import sun.awt.util.ThreadGroupUtils;
import sun.font.SunFontManager;
import sun.java2d.FontSupport;
import sun.util.logging.NeoPlatformLogger;

/* loaded from: classes16.dex */
public abstract class SunFontManager implements FontSupport, FontManagerForSGE {
    protected static final int CHANNELPOOLSIZE = 20;
    public static final int FONTFORMAT_COMPOSITE = 3;
    public static final int FONTFORMAT_NATIVE = 4;
    public static final int FONTFORMAT_NONE = -1;
    public static final int FONTFORMAT_TRUETYPE = 0;
    public static final int FONTFORMAT_TTC = 2;
    public static final int FONTFORMAT_TYPE1 = 1;
    private static boolean gAltJAFont;
    private static HashSet<String> installedNames;
    public static String jreFontDirName;
    public static String jreLibDirName;
    static boolean longAddresses;
    public static boolean noType1Font;
    static HashMap<String, FamilyDescription> platformFontMap;
    private static final Object regFamilyLock;
    private static Locale systemLocale;
    private static final FilenameFilter t1Filter;
    private static final FilenameFilter ttFilter;
    private String[] allFamilies;
    private Font[] allFonts;
    private ArrayList<String> badFonts;
    private Hashtable<String, FontFamily> createdByFamilyName;
    private Hashtable<String, Font2D> createdByFullName;
    private String defaultFontFileName;
    private String defaultFontName;
    private PhysicalFont defaultPhysicalFont;
    private FontConfiguration fontConfig;
    protected String fontPath;
    private boolean haveCheckedUnreferencedFontFiles;
    String[] jreOtherFontFiles;
    private Locale lastDefaultLocale;
    private HashMap<String, TrueTypeFont> localeFullNamesToFont;
    private boolean usePlatformFontMetrics;
    private static Font2DHandle FONT_HANDLE_NULL = new Font2DHandle(null);
    private static HashSet<String> missingFontFiles = null;
    private static String[] STR_ARRAY = new String[0];
    protected static int maxSoftRefCnt = 10;
    protected FileFont[] fontFileCache = new FileFont[20];
    private int lastPoolIndex = 0;
    private int maxCompFont = 0;
    private CompositeFont[] compFonts = new CompositeFont[20];
    private ConcurrentHashMap<String, CompositeFont> compositeFonts = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, PhysicalFont> physicalFonts = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, PhysicalFont> registeredFonts = new ConcurrentHashMap<>();
    protected ConcurrentHashMap<String, Font2D> fullNameToFont = new ConcurrentHashMap<>();
    private boolean loaded1dot0Fonts = false;
    boolean loadedAllFonts = false;
    boolean loadedAllFontFiles = false;
    boolean noOtherJREFontFiles = false;
    protected HashSet<String> registeredFontFiles = new HashSet<>();
    private boolean discoveredAllFonts = false;
    private final ConcurrentHashMap<String, FontRegistrationInfo> deferredFontFiles = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, Font2DHandle> initialisedFonts = new ConcurrentHashMap<>();
    private HashMap<String, String> fontToFileMap = null;
    private HashMap<String, String> fontToFamilyNameMap = null;
    private HashMap<String, ArrayList<String>> familyToFontListMap = null;
    private String[] pathDirs = null;
    private ConcurrentHashMap<String, Font2D> fontNameCache = new ConcurrentHashMap<>();
    Thread fileCloser = null;
    Vector<File> tmpFontFiles = null;
    protected int createdFontCount = 0;
    private boolean _usingAlternateComposites = false;
    private boolean gLocalePref = false;
    private boolean gPropPref = false;
    private boolean fontsAreRegistered = false;

    /* loaded from: classes16.dex */
    public static class FamilyDescription {
        public String boldFileName;
        public String boldFullName;
        public String boldItalicFileName;
        public String boldItalicFullName;
        public String familyName;
        public String italicFileName;
        public String italicFullName;
        public String plainFileName;
        public String plainFullName;
    }

    /* loaded from: classes16.dex */
    public static final class FontRegistrationInfo {
        String fontFilePath;
        int fontFormat;
        int fontRank;
        boolean javaRasterizer;
        String[] nativeNames;

        public FontRegistrationInfo(String str, String[] strArr, int i, boolean z, int i2) {
            this.fontFilePath = str;
            this.nativeNames = strArr;
            this.fontFormat = i;
            this.javaRasterizer = z;
            this.fontRank = i2;
        }
    }

    /* loaded from: classes16.dex */
    public static class T1Filter implements FilenameFilter {
        private T1Filter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            int length;
            if (!SunFontManager.noType1Font && str.length() - 4 > 0) {
                return str.startsWith(".pfa", length) || str.startsWith(".pfb", length) || str.startsWith(".PFA", length) || str.startsWith(".PFB", length);
            }
            return false;
        }
    }

    /* loaded from: classes16.dex */
    public static class TTFilter implements FilenameFilter {
        private TTFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            int length = str.length() - 4;
            if (length <= 0) {
                return false;
            }
            return str.startsWith(".ttf", length) || str.startsWith(".TTF", length) || str.startsWith(".ttc", length) || str.startsWith(".TTC", length) || str.startsWith(".otf", length) || str.startsWith(".OTF", length);
        }
    }

    /* loaded from: classes16.dex */
    public static class TTorT1Filter implements FilenameFilter {
        private TTorT1Filter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            int length = str.length() - 4;
            if (length <= 0) {
                return false;
            }
            if (str.startsWith(".ttf", length) || str.startsWith(".TTF", length) || str.startsWith(".ttc", length) || str.startsWith(".TTC", length) || str.startsWith(".otf", length) || str.startsWith(".OTF", length)) {
                return true;
            }
            if (SunFontManager.noType1Font) {
                return false;
            }
            return str.startsWith(".pfa", length) || str.startsWith(".pfb", length) || str.startsWith(".PFA", length) || str.startsWith(".PFB", length);
        }
    }

    static {
        ttFilter = new TTFilter();
        t1Filter = new T1Filter();
        AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: sun.font.SunFontManager.1
            @Override // java.security.PrivilegedAction
            public Void run() {
                FontManagerNativeLibrary.load();
                SunFontManager.initIDs();
                int i = StrikeCache.nativeAddressSize;
                if (i == 4) {
                    SunFontManager.longAddresses = false;
                } else if (i == 8) {
                    SunFontManager.longAddresses = true;
                } else {
                    throw new RuntimeException("Unexpected address size");
                }
                SunFontManager.noType1Font = true;
                StringBuilder sb = new StringBuilder();
                sb.append(System.getProperty(SystemUtils.f107424e, ""));
                String str = File.separator;
                sb.append(str);
                sb.append("lib");
                SunFontManager.jreLibDirName = sb.toString();
                SunFontManager.jreFontDirName = SunFontManager.jreLibDirName + str + FontUtils.FONTS;
                SunFontManager.maxSoftRefCnt = Integer.getInteger("sun.java2d.font.maxSoftRefs", 10).intValue();
                return null;
            }
        });
        gAltJAFont = false;
        installedNames = null;
        regFamilyLock = new Object();
        systemLocale = null;
    }

    public SunFontManager() {
        this.usePlatformFontMetrics = false;
        AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: sun.font.SunFontManager.2
            /* JADX WARN: Removed duplicated region for block: B:60:0x0106  */
            /* JADX WARN: Removed duplicated region for block: B:62:0x0146  */
            /* JADX WARN: Removed duplicated region for block: B:73:0x01b6  */
            @Override // java.security.PrivilegedAction
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Void run() {
                /*
                    Method dump skipped, instructions count: 456
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: sun.font.SunFontManager.C205292.run():java.lang.Void");
            }
        });
        if (((Boolean) AccessController.doPrivileged(new PrivilegedAction<Boolean>() { // from class: sun.font.SunFontManager.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public Boolean run() {
                return Boolean.valueOf("true".equals(System.getProperty("java2d.font.usePlatformFont")) || System.getenv("JAVA2D_USEPLATFORMFONT") != null);
            }
        })).booleanValue()) {
            this.usePlatformFontMetrics = true;
            System.out.println("Enabling platform font metrics for win32. This is an unsupported option.");
            System.out.println("This yields incorrect composite font metrics as reported by 1.1.x releases.");
            System.out.println("It is appropriate only for use by applications which do not use any Java 2");
            System.out.println("functionality. This property will be removed in a later release.");
        }
    }

    private void addCompositeToFontList(CompositeFont compositeFont, int i) {
        if (FontUtilities.isLogging()) {
            FontUtilities.logInfo("Add to Family " + compositeFont.familyName + ", Font " + compositeFont.fullName + " rank=" + i);
        }
        compositeFont.setRank(i);
        this.compositeFonts.put(compositeFont.fullName, compositeFont);
        this.fullNameToFont.put(compositeFont.fullName.toLowerCase(Locale.ENGLISH), compositeFont);
        FontFamily family = FontFamily.getFamily(compositeFont.familyName);
        if (family == null) {
            family = new FontFamily(compositeFont.familyName, true, i);
        }
        family.setFont(compositeFont, compositeFont.style);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void addDirFonts(java.lang.String r16, java.io.File r17, java.io.FilenameFilter r18, int r19, boolean r20, int r21, boolean r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.font.SunFontManager.addDirFonts(java.lang.String, java.io.File, java.io.FilenameFilter, int, boolean, int, boolean, boolean):void");
    }

    private synchronized void checkForUnreferencedFontFiles() {
        if (this.haveCheckedUnreferencedFontFiles) {
            return;
        }
        this.haveCheckedUnreferencedFontFiles = true;
        if (FontUtilities.isWindows) {
            ArrayList arrayList = new ArrayList();
            Iterator<String> it2 = this.fontToFileMap.values().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().toLowerCase());
            }
            HashMap<String, String> hashMap = null;
            HashMap<String, ArrayList<String>> hashMap2 = null;
            HashMap<String, String> hashMap3 = null;
            for (String str : getFontFilesFromPath(false)) {
                if (!arrayList.contains(str)) {
                    if (FontUtilities.isLogging()) {
                        FontUtilities.logInfo("Found non-registry file : " + str);
                    }
                    PhysicalFont registerFontFile = registerFontFile(getPathName(str));
                    if (registerFontFile != null) {
                        if (hashMap == null) {
                            hashMap = new HashMap<>(this.fontToFileMap);
                            hashMap3 = new HashMap<>(this.fontToFamilyNameMap);
                            hashMap2 = new HashMap<>(this.familyToFontListMap);
                        }
                        String fontName = registerFontFile.getFontName(null);
                        String familyName = registerFontFile.getFamilyName(null);
                        String lowerCase = familyName.toLowerCase();
                        hashMap3.put(fontName, familyName);
                        hashMap.put(fontName, str);
                        ArrayList<String> arrayList2 = hashMap2.get(lowerCase);
                        ArrayList<String> arrayList3 = arrayList2 == null ? new ArrayList<>() : new ArrayList<>(arrayList2);
                        arrayList3.add(fontName);
                        hashMap2.put(lowerCase, arrayList3);
                    }
                }
            }
            if (hashMap != null) {
                this.fontToFileMap = hashMap;
                this.familyToFontListMap = hashMap2;
                this.fontToFamilyNameMap = hashMap3;
            }
        }
    }

    private static String dotStyleStr(int i) {
        return i != 1 ? i != 2 ? i != 3 ? ".plain" : ".bolditalic" : ".italic" : ".bold";
    }

    private PhysicalFont findDeferredFont(String str, int i) {
        PhysicalFont findJREDeferredFont = findJREDeferredFont(str, i);
        return findJREDeferredFont != null ? findJREDeferredFont : findOtherDeferredFont(str, i);
    }

    private Font2D findFont2DAllLocales(String str, int i) {
        TrueTypeFont trueTypeFont;
        FontFamily family;
        if (FontUtilities.isLogging()) {
            FontUtilities.logInfo("Searching localised font names for:" + str);
        }
        if (this.localeFullNamesToFont == null) {
            loadLocaleNames();
        }
        FontFamily localeFamily = FontFamily.getLocaleFamily(str.toLowerCase());
        if (localeFamily != null) {
            Font2D font = localeFamily.getFont(i);
            if (font == null) {
                font = localeFamily.getClosestStyle(i);
            }
            if (font != null) {
                return font;
            }
        }
        synchronized (this) {
            trueTypeFont = this.localeFullNamesToFont.get(str);
        }
        if (trueTypeFont != null && trueTypeFont.style != i && i != 0 && (family = FontFamily.getFamily(trueTypeFont.getFamilyName(null))) != null) {
            Font2D font2 = family.getFont(i);
            if (font2 != null) {
                return font2;
            }
            Font2D closestStyle = family.getClosestStyle(i);
            if (closestStyle != null) {
                if (closestStyle.canDoStyle(i)) {
                    return closestStyle;
                }
                return null;
            }
        }
        return trueTypeFont;
    }

    private Font2D findFontFromPlatform(String str, int i) {
        ArrayList<String> arrayList;
        String str2;
        String lowerCase;
        if (getFullNameToFileMap().size() == 0) {
            return null;
        }
        String str3 = this.fontToFamilyNameMap.get(str);
        if (str3 != null) {
            str2 = this.fontToFileMap.get(str);
            arrayList = this.familyToFontListMap.get(str3.toLowerCase(Locale.ENGLISH));
        } else {
            arrayList = this.familyToFontListMap.get(str);
            if (arrayList != null && arrayList.size() > 0 && (lowerCase = arrayList.get(0).toLowerCase(Locale.ENGLISH)) != null) {
                str3 = this.fontToFamilyNameMap.get(lowerCase);
            }
            str2 = null;
        }
        if (arrayList == null || str3 == null) {
            return null;
        }
        String[] strArr = (String[]) arrayList.toArray(STR_ARRAY);
        if (strArr.length == 0) {
            return null;
        }
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (this.fontToFileMap.get(strArr[i2].toLowerCase(Locale.ENGLISH)) == null) {
                if (FontUtilities.isLogging()) {
                    FontUtilities.logInfo("Platform lookup : No file for font " + strArr[i2] + " in family " + str3);
                }
                return null;
            }
        }
        PhysicalFont registerFontFile = str2 != null ? registerFontFile(getPathName(str2), null, 0, false, 3) : null;
        for (String str4 : strArr) {
            String str5 = this.fontToFileMap.get(str4.toLowerCase(Locale.ENGLISH));
            if (str2 == null || !str2.equals(str5)) {
                registerFontFile(getPathName(str5), null, 0, false, 3);
            }
        }
        FontFamily family = FontFamily.getFamily(str3);
        if (registerFontFile != null) {
            i |= registerFontFile.style;
        }
        if (family == null) {
            return null;
        }
        Font2D font = family.getFont(i);
        return font == null ? family.getClosestStyle(i) : font;
    }

    private PhysicalFont findOtherDeferredFont(String str, int i) {
        Iterator<String> it2 = this.deferredFontFiles.keySet().iterator();
        while (it2.hasNext()) {
            PhysicalFont initialiseDeferredFont = initialiseDeferredFont(it2.next());
            if (initialiseDeferredFont != null && (initialiseDeferredFont.getFontName(null).equalsIgnoreCase(str) || initialiseDeferredFont.getFamilyName(null).equalsIgnoreCase(str))) {
                if (initialiseDeferredFont.style == i) {
                    return initialiseDeferredFont;
                }
            }
        }
        return null;
    }

    private static boolean fontSupportsEncoding(Font font, String str) {
        return FontUtilities.getFont2D(font).supportsEncoding(str);
    }

    private String[] getFontFilesFromPath(boolean z) {
        final FilenameFilter tTorT1Filter = z ? ttFilter : new TTorT1Filter();
        return (String[]) AccessController.doPrivileged(new PrivilegedAction<String[]>() { // from class: sun.font.SunFontManager.4
            @Override // java.security.PrivilegedAction
            public String[] run() {
                if (SunFontManager.this.pathDirs.length == 1) {
                    String[] list = new File(SunFontManager.this.pathDirs[0]).list(tTorT1Filter);
                    if (list == null) {
                        return new String[0];
                    }
                    for (int i = 0; i < list.length; i++) {
                        list[i] = list[i].toLowerCase();
                    }
                    return list;
                }
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < SunFontManager.this.pathDirs.length; i2++) {
                    String[] list2 = new File(SunFontManager.this.pathDirs[i2]).list(tTorT1Filter);
                    if (list2 != null) {
                        for (String str : list2) {
                            arrayList.add(str.toLowerCase());
                        }
                    }
                }
                return (String[]) arrayList.toArray(SunFontManager.STR_ARRAY);
            }
        });
    }

    private synchronized HashMap<String, String> getFullNameToFileMap() {
        if (this.fontToFileMap == null) {
            this.pathDirs = getPlatformFontDirs(noType1Font);
            this.fontToFileMap = new HashMap<>(100);
            this.fontToFamilyNameMap = new HashMap<>(100);
            HashMap<String, ArrayList<String>> hashMap = new HashMap<>(50);
            this.familyToFontListMap = hashMap;
            populateFontFileNameMap(this.fontToFileMap, this.fontToFamilyNameMap, hashMap, Locale.ENGLISH);
            if (FontUtilities.isWindows) {
                resolveWindowsFonts();
            }
            if (FontUtilities.isLogging()) {
                logPlatformFontInfo();
            }
        }
        return this.fontToFileMap;
    }

    private static HashSet<String> getInstalledNames() {
        if (installedNames == null) {
            Locale systemStartupLocale = getSystemStartupLocale();
            SunFontManager sunFontManager = getInstance();
            String[] installedFontFamilyNames = sunFontManager.getInstalledFontFamilyNames(systemStartupLocale);
            Font[] allInstalledFonts = sunFontManager.getAllInstalledFonts();
            HashSet<String> hashSet = new HashSet<>();
            for (String str : installedFontFamilyNames) {
                hashSet.add(str.toLowerCase(systemStartupLocale));
            }
            for (Font font : allInstalledFonts) {
                hashSet.add(font.getFontName(systemStartupLocale).toLowerCase(systemStartupLocale));
            }
            installedNames = hashSet;
        }
        return installedNames;
    }

    public static SunFontManager getInstance() {
        return (SunFontManager) FontManagerFactory.getInstance();
    }

    public static final String getJDKFontDir() {
        return jreFontDirName;
    }

    private String getPathName(final String str) {
        if (new File(str).isAbsolute()) {
            return str;
        }
        if (this.pathDirs.length != 1) {
            String str2 = (String) AccessController.doPrivileged(new PrivilegedAction<String>() { // from class: sun.font.SunFontManager.6
                @Override // java.security.PrivilegedAction
                public String run() {
                    for (int i = 0; i < SunFontManager.this.pathDirs.length; i++) {
                        File file = new File(SunFontManager.this.pathDirs[i] + File.separator + str);
                        if (file.exists()) {
                            return file.getAbsolutePath();
                        }
                    }
                    return null;
                }
            });
            return str2 != null ? str2 : str;
        }
        return this.pathDirs[0] + File.separator + str;
    }

    private static Locale getSystemStartupLocale() {
        if (systemLocale == null) {
            systemLocale = (Locale) AccessController.doPrivileged(new PrivilegedAction<Locale>() { // from class: sun.font.SunFontManager.12
                @Override // java.security.PrivilegedAction
                public Locale run() {
                    String property = System.getProperty("file.encoding", "");
                    String property2 = System.getProperty("sun.jnu.encoding");
                    if (property2 != null && !property2.equals(property)) {
                        return Locale.ROOT;
                    }
                    return new Locale(System.getProperty("user.language", "en"), System.getProperty("user.country", ""), System.getProperty("user.variant", ""));
                }
            });
        }
        return systemLocale;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCompositeFonts(FontConfiguration fontConfiguration, ConcurrentHashMap<String, Font2D> concurrentHashMap) {
        String[] strArr;
        if (FontUtilities.isLogging()) {
            FontUtilities.logInfo("Initialising composite fonts");
        }
        int numberCoreFonts = fontConfiguration.getNumberCoreFonts();
        String[] platformFontNames = fontConfiguration.getPlatformFontNames();
        for (int i = 0; i < platformFontNames.length; i++) {
            String str = platformFontNames[i];
            String fileNameFromPlatformName = getFileNameFromPlatformName(str);
            if (fileNameFromPlatformName == null || fileNameFromPlatformName.equals(str)) {
                strArr = null;
            } else {
                if (i < numberCoreFonts) {
                    addFontToPlatformFontPath(str);
                }
                strArr = getNativeNames(fileNameFromPlatformName, str);
                str = fileNameFromPlatformName;
            }
            registerFontFile(str, strArr, 2, true);
        }
        registerPlatformFontsUsedByFontConfiguration();
        for (CompositeFontDescriptor compositeFontDescriptor : fontConfiguration.get2DCompositeFontInfo()) {
            String[] componentFileNames = compositeFontDescriptor.getComponentFileNames();
            String[] componentFaceNames = compositeFontDescriptor.getComponentFaceNames();
            if (missingFontFiles != null) {
                for (int i2 = 0; i2 < componentFileNames.length; i2++) {
                    if (missingFontFiles.contains(componentFileNames[i2])) {
                        componentFileNames[i2] = getDefaultFontFile();
                        componentFaceNames[i2] = getDefaultFontFaceName();
                    }
                }
            }
            if (concurrentHashMap != null) {
                registerCompositeFont(compositeFontDescriptor.getFaceName(), componentFileNames, componentFaceNames, compositeFontDescriptor.getCoreComponentCount(), compositeFontDescriptor.getExclusionRanges(), compositeFontDescriptor.getExclusionRangeLimits(), true, concurrentHashMap);
            } else {
                registerCompositeFont(compositeFontDescriptor.getFaceName(), componentFileNames, componentFaceNames, compositeFontDescriptor.getCoreComponentCount(), compositeFontDescriptor.getExclusionRanges(), compositeFontDescriptor.getExclusionRangeLimits(), true);
            }
            if (FontUtilities.debugFonts()) {
                FontUtilities.logInfo("registered " + compositeFontDescriptor.getFaceName());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void initIDs() {
    }

    private boolean isNameForRegisteredFile(String str) {
        String fileNameForFontName = getFileNameForFontName(str);
        if (fileNameForFontName == null) {
            return false;
        }
        return this.registeredFontFiles.contains(fileNameForFontName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void lambda$createFont2D$0(Runnable runnable) {
        Thread thread = new Thread(ThreadGroupUtils.getRootThreadGroup(), runnable, "FileCloser", 0L);
        this.fileCloser = thread;
        thread.setContextClassLoader(null);
        Runtime.getRuntime().addShutdownHook(this.fileCloser);
        return null;
    }

    private synchronized void loadLocaleNames() {
        if (this.localeFullNamesToFont != null) {
            return;
        }
        this.localeFullNamesToFont = new HashMap<>();
        for (Font2D font2D : getRegisteredFonts()) {
            if (font2D instanceof TrueTypeFont) {
                TrueTypeFont trueTypeFont = (TrueTypeFont) font2D;
                for (String str : trueTypeFont.getAllFullNames()) {
                    this.localeFullNamesToFont.put(str, trueTypeFont);
                }
                FontFamily family = FontFamily.getFamily(trueTypeFont.familyName);
                if (family != null) {
                    FontFamily.addLocaleNames(family, trueTypeFont.getAllFamilyNames());
                }
            }
        }
    }

    private void logPlatformFontInfo() {
        NeoPlatformLogger logger = FontUtilities.getLogger();
        for (int i = 0; i < this.pathDirs.length; i++) {
            logger.info("fontdir=" + this.pathDirs[i]);
        }
        for (String str : this.fontToFileMap.keySet()) {
            logger.info("font=" + str + " file=" + this.fontToFileMap.get(str));
        }
        for (String str2 : this.fontToFamilyNameMap.keySet()) {
            logger.info("font=" + str2 + " family=" + this.fontToFamilyNameMap.get(str2));
        }
        for (String str3 : this.familyToFontListMap.keySet()) {
            logger.info("family=" + str3 + " fonts=" + this.familyToFontListMap.get(str3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerFontsOnPath(String str, boolean z, int i, boolean z2, boolean z3) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, File.pathSeparator);
        while (stringTokenizer.hasMoreTokens()) {
            try {
                registerFontsInDir(stringTokenizer.nextToken(), z, i, z2, z3);
            } catch (NoSuchElementException unused) {
                return;
            }
        }
    }

    private void removeFromCache(Font2D font2D) {
        if (font2D == null) {
            return;
        }
        String[] strArr = (String[]) this.fontNameCache.keySet().toArray(STR_ARRAY);
        for (int i = 0; i < strArr.length; i++) {
            if (this.fontNameCache.get(strArr[i]) == font2D) {
                this.fontNameCache.remove(strArr[i]);
            }
        }
    }

    private void resolveFontFiles(HashSet<String> hashSet, ArrayList<String> arrayList) {
        Locale locale = Locale.getDefault();
        Iterator<String> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            try {
                String pathName = getPathName(next);
                if (FontUtilities.isLogging()) {
                    FontUtilities.logInfo("Trying to resolve file " + pathName);
                }
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    TrueTypeFont trueTypeFont = new TrueTypeFont(pathName, null, i, false);
                    String lowerCase = trueTypeFont.getFontName(locale).toLowerCase();
                    if (arrayList.contains(lowerCase)) {
                        this.fontToFileMap.put(lowerCase, next);
                        arrayList.remove(lowerCase);
                        if (FontUtilities.isLogging()) {
                            FontUtilities.logInfo("Resolved absent registry entry for " + lowerCase + " located in " + pathName);
                        }
                    }
                    if (i2 >= trueTypeFont.getFontCount()) {
                        break;
                    } else {
                        i = i2;
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void resolveWindowsFonts() {
        ArrayList<String> arrayList;
        ArrayList arrayList2 = null;
        for (String str : this.fontToFamilyNameMap.keySet()) {
            if (this.fontToFileMap.get(str) == null) {
                if (str.indexOf(GlideException.C1935a.f14609h) > 0) {
                    String replaceFirst = str.replaceFirst(GlideException.C1935a.f14609h, " ");
                    String str2 = this.fontToFileMap.get(replaceFirst);
                    if (str2 != null && !this.fontToFamilyNameMap.containsKey(replaceFirst)) {
                        this.fontToFileMap.remove(replaceFirst);
                        this.fontToFileMap.put(str, str2);
                    }
                } else if (str.equals("marlett")) {
                    this.fontToFileMap.put(str, "marlett.ttf");
                } else if (str.equals("david")) {
                    String str3 = this.fontToFileMap.get("david regular");
                    if (str3 != null) {
                        this.fontToFileMap.remove("david regular");
                        this.fontToFileMap.put("david", str3);
                    }
                } else {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(str);
                }
            }
        }
        if (arrayList2 != null) {
            HashSet hashSet = new HashSet();
            HashMap hashMap = (HashMap) this.fontToFileMap.clone();
            Iterator<String> it2 = this.fontToFamilyNameMap.keySet().iterator();
            while (it2.hasNext()) {
                hashMap.remove(it2.next());
            }
            for (String str4 : hashMap.keySet()) {
                hashSet.add(hashMap.get(str4));
                this.fontToFileMap.remove(str4);
            }
            resolveFontFiles(hashSet, arrayList2);
            if (arrayList2.size() > 0) {
                ArrayList arrayList3 = new ArrayList();
                Iterator<String> it3 = this.fontToFileMap.values().iterator();
                while (it3.hasNext()) {
                    arrayList3.add(it3.next().toLowerCase());
                }
                for (String str5 : getFontFilesFromPath(true)) {
                    if (!arrayList3.contains(str5)) {
                        hashSet.add(str5);
                    }
                }
                resolveFontFiles(hashSet, arrayList2);
            }
            if (arrayList2.size() > 0) {
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    String str6 = (String) arrayList2.get(i);
                    String str7 = this.fontToFamilyNameMap.get(str6);
                    if (str7 != null && (arrayList = this.familyToFontListMap.get(str7)) != null && arrayList.size() <= 1) {
                        this.familyToFontListMap.remove(str7);
                    }
                    this.fontToFamilyNameMap.remove(str6);
                    if (FontUtilities.isLogging()) {
                        FontUtilities.logInfo("No file for font:" + str6);
                    }
                }
            }
        }
    }

    public void addFontToPlatformFontPath(String str) {
    }

    public void addNativeFontFamilyNames(TreeMap<String, String> treeMap, Locale locale) {
    }

    public PhysicalFont addToFontList(PhysicalFont physicalFont, int i) {
        String str = physicalFont.fullName;
        String str2 = physicalFont.familyName;
        if (str == null || str.isEmpty() || this.compositeFonts.containsKey(str)) {
            return null;
        }
        physicalFont.setRank(i);
        if (!this.physicalFonts.containsKey(str)) {
            if (FontUtilities.isLogging()) {
                FontUtilities.logInfo("Add to Family " + str2 + ", Font " + str + " rank=" + i);
            }
            this.physicalFonts.put(str, physicalFont);
            FontFamily family = FontFamily.getFamily(str2);
            if (family == null) {
                new FontFamily(str2, false, i).setFont(physicalFont, physicalFont.style);
            } else {
                family.setFont(physicalFont, physicalFont.style);
            }
            this.fullNameToFont.put(str.toLowerCase(Locale.ENGLISH), physicalFont);
            return physicalFont;
        }
        PhysicalFont physicalFont2 = this.physicalFonts.get(str);
        if (physicalFont2 == null) {
            return null;
        }
        if (physicalFont2.getRank() < i) {
            return physicalFont2;
        }
        if (physicalFont2.mapper != null && i > 2) {
            return physicalFont2;
        }
        if (physicalFont2.getRank() == i && (!(physicalFont2 instanceof TrueTypeFont) || !(physicalFont instanceof TrueTypeFont) || ((TrueTypeFont) physicalFont2).fileSize >= ((TrueTypeFont) physicalFont).fileSize)) {
            return physicalFont2;
        }
        if (physicalFont2.platName.startsWith(jreFontDirName)) {
            if (FontUtilities.isLogging()) {
                FontUtilities.logWarning("Unexpected attempt to replace a JRE  font " + str + " from " + physicalFont2.platName + " with " + physicalFont.platName);
            }
            return physicalFont2;
        }
        if (FontUtilities.isLogging()) {
            FontUtilities.logInfo("Replace in Family " + str2 + ",Font " + str + " new rank=" + i + " from " + physicalFont2.platName + " with " + physicalFont.platName);
        }
        replaceFont(physicalFont2, physicalFont);
        this.physicalFonts.put(str, physicalFont);
        this.fullNameToFont.put(str.toLowerCase(Locale.ENGLISH), physicalFont);
        FontFamily family2 = FontFamily.getFamily(str2);
        if (family2 == null) {
            new FontFamily(str2, false, i).setFont(physicalFont, physicalFont.style);
        } else {
            family2.setFont(physicalFont, physicalFont.style);
        }
        return physicalFont;
    }

    public void addToMissingFontFileList(String str) {
        if (missingFontFiles == null) {
            missingFontFiles = new HashSet<>();
        }
        missingFontFiles.add(str);
    }

    public void addToPool(FileFont fileFont) {
        synchronized (this.fontFileCache) {
            int i = -1;
            for (int i2 = 0; i2 < 20; i2++) {
                try {
                    FileFont fileFont2 = this.fontFileCache[i2];
                    if (fileFont2 == fileFont) {
                        return;
                    }
                    if (fileFont2 == null && i < 0) {
                        i = i2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (i >= 0) {
                this.fontFileCache[i] = fileFont;
                return;
            }
            FileFont[] fileFontArr = this.fontFileCache;
            int i3 = this.lastPoolIndex;
            FileFont fileFont3 = fileFontArr[i3];
            fileFontArr[i3] = fileFont;
            this.lastPoolIndex = (i3 + 1) % 20;
            if (fileFont3 != null) {
                fileFont3.close();
            }
        }
    }

    public void createCompositeFonts(ConcurrentHashMap<String, Font2D> concurrentHashMap, boolean z, boolean z2) {
        initCompositeFonts(createFontConfiguration(z, z2), concurrentHashMap);
    }

    public Font2D createFont2D(File file, int i, boolean z, CreatedFontTracker createdFontTracker) throws FontFormatException {
        Font2D[] createFont2D = createFont2D(file, i, false, z, createdFontTracker);
        if (createFont2D == null || createFont2D.length == 0) {
            return null;
        }
        return createFont2D[0];
    }

    public abstract FontConfiguration createFontConfiguration();

    public abstract FontConfiguration createFontConfiguration(boolean z, boolean z2);

    public synchronized void deRegisterBadFont(Font2D font2D) {
        if (font2D instanceof PhysicalFont) {
            if (FontUtilities.isLogging()) {
                FontUtilities.logSevere("Deregister bad font: " + font2D);
            }
            replaceFont((PhysicalFont) font2D, getDefaultPhysicalFont());
        }
    }

    public Font2D findFont2D(String str, int i, int i2) {
        PhysicalFont findDeferredFont;
        PhysicalFont findJREDeferredFont;
        if (str == null) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        String str2 = lowerCase + dotStyleStr(i);
        Font2D font2D = this.fontNameCache.get(str2);
        if (font2D != null) {
            return font2D;
        }
        if (FontUtilities.isLogging()) {
            FontUtilities.logInfo("Search for font: " + str);
        }
        if (FontUtilities.isWindows) {
            if (lowerCase.equals("ms sans serif")) {
                str = "sansserif";
            } else if (lowerCase.equals("ms serif")) {
                str = "serif";
            }
        }
        if (lowerCase.equals("default")) {
            str = "dialog";
        }
        FontFamily family = FontFamily.getFamily(str);
        if (family != null) {
            Font2D fontWithExactStyleMatch = family.getFontWithExactStyleMatch(i);
            if (fontWithExactStyleMatch == null) {
                fontWithExactStyleMatch = findDeferredFont(str, i);
            }
            if (fontWithExactStyleMatch == null) {
                fontWithExactStyleMatch = findFontFromPlatform(lowerCase, i);
            }
            if (fontWithExactStyleMatch == null) {
                fontWithExactStyleMatch = family.getFont(i);
            }
            if (fontWithExactStyleMatch == null) {
                fontWithExactStyleMatch = family.getClosestStyle(i);
            }
            if (fontWithExactStyleMatch != null) {
                this.fontNameCache.put(str2, fontWithExactStyleMatch);
                return fontWithExactStyleMatch;
            }
        }
        Font2D font2D2 = this.fullNameToFont.get(lowerCase);
        if (font2D2 != null) {
            if (font2D2.style == i || i == 0) {
                this.fontNameCache.put(str2, font2D2);
                return font2D2;
            }
            FontFamily family2 = FontFamily.getFamily(font2D2.getFamilyName(null));
            if (family2 != null) {
                Font2D font = family2.getFont(font2D2.style | i);
                if (font != null) {
                    this.fontNameCache.put(str2, font);
                    return font;
                }
                Font2D closestStyle = family2.getClosestStyle(font2D2.style | i);
                if (closestStyle != null && closestStyle.canDoStyle(font2D2.style | i)) {
                    this.fontNameCache.put(str2, closestStyle);
                    return closestStyle;
                }
            }
        }
        if (FontUtilities.isWindows) {
            Font2D findFontFromPlatformMap = findFontFromPlatformMap(lowerCase, i);
            if (FontUtilities.isLogging()) {
                FontUtilities.logInfo("findFontFromPlatformMap returned " + findFontFromPlatformMap);
            }
            if (findFontFromPlatformMap != null) {
                this.fontNameCache.put(str2, findFontFromPlatformMap);
                return findFontFromPlatformMap;
            }
            if (this.deferredFontFiles.size() > 0 && (findJREDeferredFont = findJREDeferredFont(lowerCase, i)) != null) {
                this.fontNameCache.put(str2, findJREDeferredFont);
                return findJREDeferredFont;
            }
            Font2D findFontFromPlatform = findFontFromPlatform(lowerCase, i);
            if (findFontFromPlatform != null) {
                if (FontUtilities.isLogging()) {
                    FontUtilities.logInfo("Found font via platform API for request:\"" + str + "\":, style=" + i + " found font: " + findFontFromPlatform);
                }
                this.fontNameCache.put(str2, findFontFromPlatform);
                return findFontFromPlatform;
            }
        }
        if (this.deferredFontFiles.size() > 0 && (findDeferredFont = findDeferredFont(str, i)) != null) {
            this.fontNameCache.put(str2, findDeferredFont);
            return findDeferredFont;
        }
        if (this.fontsAreRegistered) {
            Hashtable<String, FontFamily> hashtable = this.createdByFamilyName;
            Hashtable<String, Font2D> hashtable2 = this.createdByFullName;
            FontFamily fontFamily = hashtable.get(lowerCase);
            if (fontFamily != null) {
                Font2D fontWithExactStyleMatch2 = fontFamily.getFontWithExactStyleMatch(i);
                if (fontWithExactStyleMatch2 == null) {
                    fontWithExactStyleMatch2 = fontFamily.getFont(i);
                }
                if (fontWithExactStyleMatch2 == null) {
                    fontWithExactStyleMatch2 = fontFamily.getClosestStyle(i);
                }
                if (fontWithExactStyleMatch2 != null) {
                    if (this.fontsAreRegistered) {
                        this.fontNameCache.put(str2, fontWithExactStyleMatch2);
                    }
                    return fontWithExactStyleMatch2;
                }
            }
            Font2D font2D3 = hashtable2.get(lowerCase);
            if (font2D3 != null) {
                if (this.fontsAreRegistered) {
                    this.fontNameCache.put(str2, font2D3);
                }
                return font2D3;
            }
        }
        if (!this.loadedAllFonts) {
            if (FontUtilities.isLogging()) {
                FontUtilities.logInfo("Load fonts looking for:" + str);
            }
            loadFonts();
            this.loadedAllFonts = true;
            return findFont2D(str, i, i2);
        }
        if (!this.loadedAllFontFiles) {
            if (FontUtilities.isLogging()) {
                FontUtilities.logInfo("Load font files looking for:" + str);
            }
            loadFontFiles();
            this.loadedAllFontFiles = true;
            return findFont2D(str, i, i2);
        }
        Font2D findFont2DAllLocales = findFont2DAllLocales(str, i);
        if (findFont2DAllLocales != null) {
            this.fontNameCache.put(str2, findFont2DAllLocales);
            return findFont2DAllLocales;
        }
        if (FontUtilities.isWindows) {
            String fallbackFamilyName = getFontConfiguration().getFallbackFamilyName(str, null);
            if (fallbackFamilyName != null) {
                Font2D findFont2D = findFont2D(fallbackFamilyName, i, i2);
                this.fontNameCache.put(str2, findFont2D);
                return findFont2D;
            }
        } else {
            if (lowerCase.equals("timesroman")) {
                Font2D findFont2D2 = findFont2D("serif", i, i2);
                this.fontNameCache.put(str2, findFont2D2);
                return findFont2D2;
            }
            if (lowerCase.equals("helvetica")) {
                Font2D findFont2D3 = findFont2D("sansserif", i, i2);
                this.fontNameCache.put(str2, findFont2D3);
                return findFont2D3;
            }
            if (lowerCase.equals("courier")) {
                Font2D findFont2D4 = findFont2D("monospaced", i, i2);
                this.fontNameCache.put(str2, findFont2D4);
                return findFont2D4;
            }
        }
        if (FontUtilities.isLogging()) {
            FontUtilities.logInfo("No font found for:" + str);
        }
        if (i2 == 1) {
            return getDefaultPhysicalFont();
        }
        if (i2 != 2) {
            return null;
        }
        return getDefaultLogicalFont(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x009c, code lost:
    
        if (r10 == null) goto L60;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public sun.font.Font2D findFontFromPlatformMap(java.lang.String r13, int r14) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.font.SunFontManager.findFontFromPlatformMap(java.lang.String, int):sun.font.Font2D");
    }

    public PhysicalFont findJREDeferredFont(String str, int i) {
        if (this.noOtherJREFontFiles) {
            return null;
        }
        synchronized (jreFontDirName) {
            if (this.jreOtherFontFiles == null) {
                HashSet hashSet = new HashSet();
                for (String str2 : this.deferredFontFiles.keySet()) {
                    String parent = new File(str2).getParent();
                    if (parent != null && parent.equals(jreFontDirName)) {
                        hashSet.add(str2);
                    }
                }
                String[] strArr = (String[]) hashSet.toArray(STR_ARRAY);
                this.jreOtherFontFiles = strArr;
                if (strArr.length == 0) {
                    this.noOtherJREFontFiles = true;
                }
            }
            int i2 = 0;
            while (true) {
                String[] strArr2 = this.jreOtherFontFiles;
                if (i2 >= strArr2.length) {
                    return null;
                }
                String str3 = strArr2[i2];
                if (str3 != null) {
                    strArr2[i2] = null;
                    PhysicalFont initialiseDeferredFont = initialiseDeferredFont(str3);
                    if (initialiseDeferredFont != null && ((initialiseDeferredFont.getFontName(null).equalsIgnoreCase(str) || initialiseDeferredFont.getFamilyName(null).equalsIgnoreCase(str)) && initialiseDeferredFont.style == i)) {
                        return initialiseDeferredFont;
                    }
                }
                i2++;
            }
        }
    }

    public Font[] getAllInstalledFonts() {
        String[] strArr;
        if (this.allFonts == null) {
            loadFonts();
            TreeMap treeMap = new TreeMap();
            Font2D[] registeredFonts = getRegisteredFonts();
            int i = 0;
            while (true) {
                strArr = null;
                if (i >= registeredFonts.length) {
                    break;
                }
                Font2D font2D = registeredFonts[i];
                if (!(font2D instanceof NativeFont)) {
                    treeMap.put(font2D.getFontName(null), registeredFonts[i]);
                }
                i++;
            }
            String[] fontNamesFromPlatform = getFontNamesFromPlatform();
            if (fontNamesFromPlatform != null) {
                for (int i2 = 0; i2 < fontNamesFromPlatform.length; i2++) {
                    if (!isNameForRegisteredFile(fontNamesFromPlatform[i2])) {
                        treeMap.put(fontNamesFromPlatform[i2], null);
                    }
                }
            }
            if (treeMap.size() > 0) {
                strArr = new String[treeMap.size()];
                Object[] array = treeMap.keySet().toArray();
                for (int i3 = 0; i3 < array.length; i3++) {
                    strArr[i3] = (String) array[i3];
                }
            }
            Font[] fontArr = new Font[strArr.length];
            for (int i4 = 0; i4 < strArr.length; i4++) {
                fontArr[i4] = new Font(strArr[i4], 0, 1);
                Font2D font2D2 = (Font2D) treeMap.get(strArr[i4]);
                if (font2D2 != null) {
                    FontAccess.getFontAccess().setFont2D(fontArr[i4], font2D2.handle);
                }
            }
            this.allFonts = fontArr;
        }
        Font[] fontArr2 = this.allFonts;
        Font[] fontArr3 = new Font[fontArr2.length];
        System.arraycopy(fontArr2, 0, fontArr3, 0, fontArr2.length);
        return fontArr3;
    }

    public TreeMap<String, String> getCreatedFontFamilyNames() {
        TreeMap<String, String> treeMap;
        if (!this.fontsAreRegistered) {
            return null;
        }
        Hashtable<String, FontFamily> hashtable = this.createdByFamilyName;
        Locale systemStartupLocale = getSystemStartupLocale();
        synchronized (hashtable) {
            treeMap = new TreeMap<>();
            for (FontFamily fontFamily : hashtable.values()) {
                Font2D font = fontFamily.getFont(0);
                if (font == null) {
                    font = fontFamily.getClosestStyle(0);
                }
                String familyName = font.getFamilyName(systemStartupLocale);
                treeMap.put(familyName.toLowerCase(systemStartupLocale), familyName);
            }
        }
        return treeMap;
    }

    public Font[] getCreatedFonts() {
        Font[] fontArr;
        if (!this.fontsAreRegistered) {
            return null;
        }
        Hashtable<String, Font2D> hashtable = this.createdByFullName;
        Locale systemStartupLocale = getSystemStartupLocale();
        synchronized (hashtable) {
            fontArr = new Font[hashtable.size()];
            Iterator<Font2D> it2 = hashtable.values().iterator();
            int i = 0;
            while (it2.hasNext()) {
                fontArr[i] = new Font(it2.next().getFontName(systemStartupLocale), 0, 1);
                i++;
            }
        }
        return fontArr;
    }

    public synchronized String getDefaultFontFaceName() {
        return this.defaultFontName;
    }

    public synchronized String getDefaultFontFile() {
        return this.defaultFontFileName;
    }

    public Font2D getDefaultLogicalFont(int i) {
        return findFont2D("dialog", i, 0);
    }

    public PhysicalFont getDefaultPhysicalFont() {
        if (this.defaultPhysicalFont == null) {
            String defaultFontFaceName = getDefaultFontFaceName();
            Font2D findFont2D = findFont2D(defaultFontFaceName, 0, 0);
            if (findFont2D != null) {
                if (findFont2D instanceof PhysicalFont) {
                    this.defaultPhysicalFont = (PhysicalFont) findFont2D;
                } else if (FontUtilities.isLogging()) {
                    FontUtilities.logWarning("Font returned by findFont2D for default font name " + defaultFontFaceName + " is not a physical font: " + findFont2D.getFontName(null));
                }
            }
            if (this.defaultPhysicalFont == null) {
                if (this.physicalFonts.isEmpty()) {
                    throw new Error("Probable fatal error: No physical fonts found.");
                }
                this.defaultPhysicalFont = this.physicalFonts.get(0);
            }
        }
        return this.defaultPhysicalFont;
    }

    public abstract String[] getDefaultPlatformFont();

    public TrueTypeFont getEUDCFont() {
        return null;
    }

    public boolean getFamilyNamesFromPlatform(TreeMap<String, String> treeMap, Locale locale) {
        if (getFullNameToFileMap().size() == 0) {
            return false;
        }
        checkForUnreferencedFontFiles();
        for (String str : this.fontToFamilyNameMap.values()) {
            treeMap.put(str.toLowerCase(locale), str);
        }
        return true;
    }

    public String getFileNameForFontName(String str) {
        return this.fontToFileMap.get(str.toLowerCase(Locale.ENGLISH));
    }

    public String getFileNameFromPlatformName(String str) {
        return this.fontConfig.getFileNameFromPlatformName(str);
    }

    public FontUIResource getFontConfigFUIR(String str, int i, int i2) {
        return new FontUIResource(str, i, i2);
    }

    @Override // sun.java2d.FontSupport
    public FontConfiguration getFontConfiguration() {
        return this.fontConfig;
    }

    public String[] getFontNamesFromPlatform() {
        if (getFullNameToFileMap().size() == 0) {
            return null;
        }
        checkForUnreferencedFontFiles();
        ArrayList arrayList = new ArrayList();
        Iterator<ArrayList<String>> it2 = this.familyToFontListMap.values().iterator();
        while (it2.hasNext()) {
            Iterator<String> it3 = it2.next().iterator();
            while (it3.hasNext()) {
                arrayList.add(it3.next());
            }
        }
        return (String[]) arrayList.toArray(STR_ARRAY);
    }

    public abstract String getFontPath(boolean z);

    public synchronized String getFullNameByFileName(String str) {
        PhysicalFont[] physicalFonts = getPhysicalFonts();
        for (int i = 0; i < physicalFonts.length; i++) {
            if (physicalFonts[i].platName.equals(str)) {
                return physicalFonts[i].getFontName(null);
            }
        }
        return null;
    }

    public String[] getInstalledFontFamilyNames(Locale locale) {
        Locale locale2;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        if (this.allFamilies != null && (locale2 = this.lastDefaultLocale) != null && locale.equals(locale2)) {
            String[] strArr = this.allFamilies;
            String[] strArr2 = new String[strArr.length];
            System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
            return strArr2;
        }
        TreeMap<String, String> treeMap = new TreeMap<>();
        treeMap.put("Serif".toLowerCase(), "Serif");
        treeMap.put(Font.SANS_SERIF.toLowerCase(), Font.SANS_SERIF);
        treeMap.put(Font.MONOSPACED.toLowerCase(), Font.MONOSPACED);
        treeMap.put(Font.DIALOG.toLowerCase(), Font.DIALOG);
        treeMap.put(Font.DIALOG_INPUT.toLowerCase(), Font.DIALOG_INPUT);
        if (locale.equals(getSystemStartupLocale()) && getFamilyNamesFromPlatform(treeMap, locale)) {
            getJREFontFamilyNames(treeMap, locale);
        } else {
            loadFontFiles();
            for (PhysicalFont physicalFont : getPhysicalFonts()) {
                if (!(physicalFont instanceof NativeFont)) {
                    String familyName = physicalFont.getFamilyName(locale);
                    treeMap.put(familyName.toLowerCase(locale), familyName);
                }
            }
        }
        addNativeFontFamilyNames(treeMap, locale);
        int size = treeMap.size();
        String[] strArr3 = new String[size];
        Object[] array = treeMap.keySet().toArray();
        for (int i = 0; i < array.length; i++) {
            strArr3[i] = treeMap.get(array[i]);
        }
        if (locale.equals(Locale.getDefault())) {
            this.lastDefaultLocale = locale;
            String[] strArr4 = new String[size];
            this.allFamilies = strArr4;
            System.arraycopy(strArr3, 0, strArr4, 0, strArr4.length);
        }
        return strArr3;
    }

    public void getJREFontFamilyNames(TreeMap<String, String> treeMap, Locale locale) {
        registerDeferredJREFonts(jreFontDirName);
        for (PhysicalFont physicalFont : getPhysicalFonts()) {
            if (!(physicalFont instanceof NativeFont)) {
                String familyName = physicalFont.getFamilyName(locale);
                treeMap.put(familyName.toLowerCase(locale), familyName);
            }
        }
    }

    public String[] getNativeNames(String str, String str2) {
        return null;
    }

    public Font2DHandle getNewComposite(String str, int i, Font2DHandle font2DHandle) {
        Font2D font2D = font2DHandle.font2D;
        if (!(font2D instanceof CompositeFont)) {
            return font2DHandle;
        }
        CompositeFont compositeFont = (CompositeFont) font2D;
        Font2D slotFont = compositeFont.getSlotFont(0);
        if (str == null) {
            str = slotFont.getFamilyName(null);
        }
        if (i == -1) {
            i = compositeFont.getStyle();
        }
        Font2D findFont2D = findFont2D(str, i, 0);
        if (findFont2D instanceof PhysicalFont) {
            slotFont = findFont2D;
        }
        PhysicalFont physicalFont = (PhysicalFont) slotFont;
        CompositeFont compositeFont2 = (CompositeFont) findFont2D("dialog", i, 0);
        return compositeFont2 == null ? font2DHandle : new Font2DHandle(new CompositeFont(physicalFont, compositeFont2));
    }

    public int getNumFonts() {
        return this.physicalFonts.size() + this.maxCompFont;
    }

    public PhysicalFont[] getPhysicalFonts() {
        return (PhysicalFont[]) this.physicalFonts.values().toArray(new PhysicalFont[0]);
    }

    public String[] getPlatformFontDirs(boolean z) {
        String[] strArr = this.pathDirs;
        if (strArr != null) {
            return strArr;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(getPlatformFontPath(z), File.pathSeparator);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            try {
                arrayList.add(stringTokenizer.nextToken());
            } catch (NoSuchElementException unused) {
            }
        }
        String[] strArr2 = (String[]) arrayList.toArray(new String[0]);
        this.pathDirs = strArr2;
        return strArr2;
    }

    public String getPlatformFontPath(boolean z) {
        if (this.fontPath == null) {
            this.fontPath = getFontPath(z);
        }
        return this.fontPath;
    }

    public PhysicalFont getRegisteredFontFile(String str) {
        return this.registeredFonts.get(str);
    }

    public Font2D[] getRegisteredFonts() {
        PhysicalFont[] physicalFonts = getPhysicalFonts();
        int i = this.maxCompFont;
        Font2D[] font2DArr = new Font2D[physicalFonts.length + i];
        System.arraycopy(this.compFonts, 0, font2DArr, 0, i);
        System.arraycopy(physicalFonts, 0, font2DArr, i, physicalFonts.length);
        return font2DArr;
    }

    public FilenameFilter getTrueTypeFilter() {
        return ttFilter;
    }

    public FilenameFilter getType1Filter() {
        return t1Filter;
    }

    public boolean gotFontsFromPlatform() {
        return getFullNameToFileMap().size() != 0;
    }

    public synchronized PhysicalFont initialiseDeferredFont(String str) {
        PhysicalFont physicalFont = null;
        if (str == null) {
            return null;
        }
        if (FontUtilities.isLogging()) {
            FontUtilities.logInfo("Opening deferred font file " + str);
        }
        FontRegistrationInfo fontRegistrationInfo = this.deferredFontFiles.get(str);
        if (fontRegistrationInfo != null) {
            this.deferredFontFiles.remove(str);
            physicalFont = registerFontFile(fontRegistrationInfo.fontFilePath, fontRegistrationInfo.nativeNames, fontRegistrationInfo.fontFormat, fontRegistrationInfo.javaRasterizer, fontRegistrationInfo.fontRank);
            if (physicalFont != null) {
                this.initialisedFonts.put(str, physicalFont.handle);
            } else {
                this.initialisedFonts.put(str, FONT_HANDLE_NULL);
            }
        } else {
            Font2DHandle font2DHandle = this.initialisedFonts.get(str);
            if (font2DHandle == null) {
                this.initialisedFonts.put(str, FONT_HANDLE_NULL);
            } else {
                physicalFont = (PhysicalFont) font2DHandle.font2D;
            }
        }
        return physicalFont;
    }

    public synchronized void initialiseDeferredFonts() {
        Iterator<String> it2 = this.deferredFontFiles.keySet().iterator();
        while (it2.hasNext()) {
            initialiseDeferredFont(it2.next());
        }
    }

    public boolean isDeferredFont(String str) {
        return this.deferredFontFiles.containsKey(str);
    }

    public boolean isRegisteredFontFile(String str) {
        return this.registeredFonts.containsKey(str);
    }

    public void loadFontFiles() {
        loadFonts();
        if (this.loadedAllFontFiles) {
            return;
        }
        synchronized (this) {
            if (FontUtilities.debugFonts()) {
                Thread.dumpStack();
                FontUtilities.logInfo("loadAllFontFiles() called");
            }
            AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: sun.font.SunFontManager.10
                @Override // java.security.PrivilegedAction
                public Void run() {
                    SunFontManager sunFontManager = SunFontManager.this;
                    if (sunFontManager.fontPath == null) {
                        sunFontManager.fontPath = sunFontManager.getPlatformFontPath(SunFontManager.noType1Font);
                    }
                    SunFontManager sunFontManager2 = SunFontManager.this;
                    String str = sunFontManager2.fontPath;
                    if (str != null) {
                        sunFontManager2.registerFontsOnPath(str, false, 6, false, true);
                    }
                    SunFontManager.this.loadedAllFontFiles = true;
                    return null;
                }
            });
        }
    }

    public void loadFonts() {
        if (this.discoveredAllFonts) {
            return;
        }
        synchronized (this) {
            if (FontUtilities.debugFonts()) {
                Thread.dumpStack();
                FontUtilities.logInfo("SunGraphicsEnvironment.loadFonts() called");
            }
            initialiseDeferredFonts();
            AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: sun.font.SunFontManager.9
                @Override // java.security.PrivilegedAction
                public Void run() {
                    SunFontManager sunFontManager = SunFontManager.this;
                    if (sunFontManager.fontPath == null) {
                        sunFontManager.fontPath = sunFontManager.getPlatformFontPath(SunFontManager.noType1Font);
                        SunFontManager sunFontManager2 = SunFontManager.this;
                        sunFontManager2.registerFontDirs(sunFontManager2.fontPath);
                    }
                    SunFontManager sunFontManager3 = SunFontManager.this;
                    if (sunFontManager3.fontPath != null && !sunFontManager3.gotFontsFromPlatform()) {
                        SunFontManager sunFontManager4 = SunFontManager.this;
                        sunFontManager4.registerFontsOnPath(sunFontManager4.fontPath, false, 6, false, true);
                        SunFontManager.this.loadedAllFontFiles = true;
                    }
                    SunFontManager sunFontManager5 = SunFontManager.this;
                    sunFontManager5.registerOtherFontFiles(sunFontManager5.registeredFontFiles);
                    SunFontManager.this.discoveredAllFonts = true;
                    return null;
                }
            });
        }
    }

    public void populateFontFileNameMap(HashMap<String, String> hashMap, HashMap<String, String> hashMap2, HashMap<String, ArrayList<String>> hashMap3, Locale locale) {
    }

    public HashMap<String, FamilyDescription> populateHardcodedFileNameMap() {
        return new HashMap<>(0);
    }

    @Override // sun.font.FontManager
    public synchronized void preferLocaleFonts() {
        if (FontUtilities.isLogging()) {
            FontUtilities.logInfo("Entered preferLocaleFonts().");
        }
        if (FontConfiguration.willReorderForStartupLocale()) {
            if (this.gLocalePref) {
                return;
            }
            this.gLocalePref = true;
            createCompositeFonts(this.fontNameCache, true, this.gPropPref);
            this._usingAlternateComposites = true;
        }
    }

    @Override // sun.font.FontManager
    public synchronized void preferProportionalFonts() {
        if (FontUtilities.isLogging()) {
            FontUtilities.logInfo("Entered preferProportionalFonts().");
        }
        if (FontConfiguration.hasMonoToPropMap()) {
            if (this.gPropPref) {
                return;
            }
            this.gPropPref = true;
            createCompositeFonts(this.fontNameCache, this.gLocalePref, true);
            this._usingAlternateComposites = true;
        }
    }

    public void register1dot0Fonts() {
        AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: sun.font.SunFontManager.11
            @Override // java.security.PrivilegedAction
            public Void run() {
                SunFontManager.this.registerFontsInDir("/usr/openwin/lib/X11/fonts/Type1", true, 4, false, false);
                return null;
            }
        });
    }

    public void registerCompositeFont(String str, String[] strArr, String[] strArr2, int i, int[] iArr, int[] iArr2, boolean z) {
        CompositeFont compositeFont = new CompositeFont(str, strArr, strArr2, i, iArr, iArr2, z, this);
        addCompositeToFontList(compositeFont, 2);
        synchronized (this.compFonts) {
            CompositeFont[] compositeFontArr = this.compFonts;
            int i2 = this.maxCompFont;
            this.maxCompFont = i2 + 1;
            compositeFontArr[i2] = compositeFont;
        }
    }

    public void registerDeferredFont(String str, String str2, String[] strArr, int i, boolean z, int i2) {
        this.deferredFontFiles.put(str, new FontRegistrationInfo(str2, strArr, i, z, i2));
    }

    public synchronized void registerDeferredJREFonts(String str) {
        for (FontRegistrationInfo fontRegistrationInfo : this.deferredFontFiles.values()) {
            String str2 = fontRegistrationInfo.fontFilePath;
            if (str2 != null && str2.startsWith(str)) {
                initialiseDeferredFont(fontRegistrationInfo.fontFilePath);
            }
        }
    }

    public boolean registerFont(Font font) {
        if (font == null) {
            return false;
        }
        synchronized (regFamilyLock) {
            if (this.createdByFamilyName == null) {
                this.createdByFamilyName = new Hashtable<>();
                this.createdByFullName = new Hashtable<>();
            }
        }
        if (!FontAccess.getFontAccess().isCreatedFont(font)) {
            return false;
        }
        HashSet<String> installedNames2 = getInstalledNames();
        Locale systemStartupLocale = getSystemStartupLocale();
        String lowerCase = font.getFamily(systemStartupLocale).toLowerCase();
        String lowerCase2 = font.getFontName(systemStartupLocale).toLowerCase();
        if (installedNames2.contains(lowerCase) || installedNames2.contains(lowerCase2)) {
            return false;
        }
        Hashtable<String, FontFamily> hashtable = this.createdByFamilyName;
        Hashtable<String, Font2D> hashtable2 = this.createdByFullName;
        this.fontsAreRegistered = true;
        Font2D font2D = FontUtilities.getFont2D(font);
        int style = font2D.getStyle();
        FontFamily fontFamily = hashtable.get(lowerCase);
        if (fontFamily == null) {
            fontFamily = new FontFamily(font.getFamily(systemStartupLocale));
            hashtable.put(lowerCase, fontFamily);
        }
        if (this.fontsAreRegistered) {
            removeFromCache(fontFamily.getFont(0));
            removeFromCache(fontFamily.getFont(1));
            removeFromCache(fontFamily.getFont(2));
            removeFromCache(fontFamily.getFont(3));
            removeFromCache(hashtable2.get(lowerCase2));
        }
        fontFamily.setFont(font2D, style);
        hashtable2.put(lowerCase2, font2D);
        return true;
    }

    public void registerFontDir(String str) {
    }

    public void registerFontDirs(String str) {
    }

    public PhysicalFont registerFontFile(String str, String[] strArr, int i, boolean z, int i2) {
        PhysicalFont physicalFont = this.registeredFonts.get(str);
        if (physicalFont != null) {
            return physicalFont;
        }
        int i3 = 0;
        PhysicalFont physicalFont2 = null;
        try {
            if (i == 0) {
                while (true) {
                    int i4 = i3 + 1;
                    AndroidFont2D androidFont2D = new AndroidFont2D(str, strArr, i3, z);
                    PhysicalFont addToFontList = addToFontList(androidFont2D, i2);
                    if (physicalFont2 == null) {
                        physicalFont2 = addToFontList;
                    }
                    if (i4 >= androidFont2D.getFontCount()) {
                        break;
                    }
                    i3 = i4;
                }
            } else if (i == 1) {
                physicalFont2 = addToFontList(new Type1Font(str, strArr), i2);
            } else if (i == 4) {
                physicalFont2 = addToFontList(new NativeFont(str, false), i2);
            }
            if (FontUtilities.isLogging()) {
                FontUtilities.logInfo("Registered file " + str + " as font " + physicalFont2 + " rank=" + i2);
            }
        } catch (FontFormatException e) {
            if (FontUtilities.isLogging()) {
                FontUtilities.logInfo("Unusable font: " + str + " " + e.toString());
            }
        }
        if (physicalFont2 != null && i != 4) {
            this.registeredFonts.put(str, physicalFont2);
        }
        return physicalFont2;
    }

    public void registerFonts(String[] strArr, String[][] strArr2, int i, int i2, boolean z, int i3, boolean z2) {
        for (int i4 = 0; i4 < i; i4++) {
            if (z2) {
                String str = strArr[i4];
                registerDeferredFont(str, str, strArr2[i4], i2, z, i3);
            } else {
                registerFontFile(strArr[i4], strArr2[i4], i2, z, i3);
            }
        }
    }

    public void registerFontsInDir(String str) {
        registerFontsInDir(str, true, 2, true, false);
    }

    public void registerOtherFontFiles(HashSet<String> hashSet) {
        if (getFullNameToFileMap().size() == 0) {
            return;
        }
        Iterator<String> it2 = this.fontToFileMap.values().iterator();
        while (it2.hasNext()) {
            registerFontFile(it2.next());
        }
    }

    public void registerPlatformFontsUsedByFontConfiguration() {
    }

    public synchronized void replaceFont(PhysicalFont physicalFont, PhysicalFont physicalFont2) {
        if (physicalFont.handle.font2D != physicalFont) {
            return;
        }
        if (physicalFont == physicalFont2) {
            if (FontUtilities.isLogging()) {
                FontUtilities.logSevere("Can't replace bad font with itself " + physicalFont);
            }
            PhysicalFont[] physicalFonts = getPhysicalFonts();
            int i = 0;
            while (true) {
                if (i >= physicalFonts.length) {
                    break;
                }
                PhysicalFont physicalFont3 = physicalFonts[i];
                if (physicalFont3 != physicalFont2) {
                    physicalFont2 = physicalFont3;
                    break;
                }
                i++;
            }
            if (physicalFont == physicalFont2) {
                if (FontUtilities.isLogging()) {
                    FontUtilities.logSevere("This is bad. No good physicalFonts found.");
                }
                return;
            }
        }
        physicalFont.handle.font2D = physicalFont2;
        this.physicalFonts.remove(physicalFont.fullName);
        this.fullNameToFont.remove(physicalFont.fullName.toLowerCase(Locale.ENGLISH));
        FontFamily.remove(physicalFont);
        HashMap<String, TrueTypeFont> hashMap = this.localeFullNamesToFont;
        if (hashMap != null) {
            Map.Entry[] entryArr = (Map.Entry[]) hashMap.entrySet().toArray(new Map.Entry[0]);
            for (int i2 = 0; i2 < entryArr.length; i2++) {
                if (entryArr[i2].getValue() == physicalFont) {
                    try {
                        entryArr[i2].setValue(physicalFont2);
                    } catch (Exception unused) {
                        this.localeFullNamesToFont.remove(entryArr[i2].getKey());
                    }
                }
            }
        }
        for (int i3 = 0; i3 < this.maxCompFont; i3++) {
            if (physicalFont2.getRank() > 2) {
                this.compFonts[i3].replaceComponentFont(physicalFont, physicalFont2);
            }
        }
    }

    public boolean useAbsoluteFontFileNames() {
        return true;
    }

    public synchronized void useAlternateFontforJALocales() {
        if (FontUtilities.isLogging()) {
            FontUtilities.logInfo("Entered useAlternateFontforJALocales().");
        }
        if (FontUtilities.isWindows) {
            gAltJAFont = true;
        }
    }

    public boolean usePlatformFontMetrics() {
        return this.usePlatformFontMetrics;
    }

    public boolean usingAlternateCompositeFonts() {
        return this._usingAlternateComposites;
    }

    public boolean usingAlternateFontforJALocales() {
        return gAltJAFont;
    }

    public void registerFontsInDir(String str, boolean z, int i, boolean z2, boolean z3) {
        int i2 = i;
        File file = new File(str);
        addDirFonts(str, file, ttFilter, 0, z, i2 == 6 ? 3 : i2, z2, z3);
        FilenameFilter filenameFilter = t1Filter;
        if (i2 == 6) {
            i2 = 4;
        }
        addDirFonts(str, file, filenameFilter, 1, z, i2, z2, z3);
    }

    public Font2D[] createFont2D(final File file, int i, boolean z, boolean z2, final CreatedFontTracker createdFontTracker) throws FontFormatException {
        int i2;
        int i3;
        boolean z3;
        ArrayList arrayList = new ArrayList();
        String path = file.getPath();
        synchronized (this) {
            int i4 = this.createdFontCount;
            i2 = 1;
            if (i4 < maxSoftRefCnt) {
                this.createdFontCount = i4 + 1;
                i3 = 0;
                z3 = false;
            } else {
                i3 = 10;
                z3 = true;
            }
        }
        try {
            if (i == 0) {
                AndroidFont2D androidFont2D = new AndroidFont2D(path, null, 0, true);
                androidFont2D.setUseWeakRefs(z3, i3);
                arrayList.add(androidFont2D);
                if (z) {
                    int fontCount = androidFont2D.getFontCount();
                    int i5 = 1;
                    while (i5 < fontCount) {
                        int i6 = i5 + 1;
                        AndroidFont2D androidFont2D2 = new AndroidFont2D(path, null, i5, true);
                        androidFont2D2.setUseWeakRefs(z3, i3);
                        arrayList.add(androidFont2D2);
                        i5 = i6;
                    }
                    i2 = fontCount;
                }
            } else if (i == 1) {
                Type1Font type1Font = new Type1Font(path, null, z2);
                type1Font.setUseWeakRefs(z3, i3);
                arrayList.add(type1Font);
            } else {
                throw new FontFormatException("Unrecognised Font Format");
            }
            if (z2) {
                FileFont.setFileToRemove(arrayList, file, i2, createdFontTracker);
                synchronized (FontManager.class) {
                    if (this.tmpFontFiles == null) {
                        this.tmpFontFiles = new Vector<>();
                    }
                    this.tmpFontFiles.add(file);
                    if (this.fileCloser == null) {
                        final Runnable runnable = new Runnable() { // from class: sun.font.SunFontManager.8
                            @Override // java.lang.Runnable
                            public void run() {
                                AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: sun.font.SunFontManager.8.1
                                    @Override // java.security.PrivilegedAction
                                    public Void run() {
                                        for (int i7 = 0; i7 < 20; i7++) {
                                            FileFont fileFont = SunFontManager.this.fontFileCache[i7];
                                            if (fileFont != null) {
                                                try {
                                                    fileFont.close();
                                                } catch (Exception unused) {
                                                }
                                            }
                                        }
                                        Vector<File> vector = SunFontManager.this.tmpFontFiles;
                                        if (vector == null) {
                                            return null;
                                        }
                                        for (File file2 : (File[]) SunFontManager.this.tmpFontFiles.toArray(new File[vector.size()])) {
                                            try {
                                                file2.delete();
                                            } catch (Exception unused2) {
                                            }
                                        }
                                        return null;
                                    }
                                });
                            }
                        };
                        AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sunia.HTREnginev2.w5n
                            @Override // java.security.PrivilegedAction
                            public final Object run() {
                                Void lambda$createFont2D$0;
                                lambda$createFont2D$0 = SunFontManager.this.lambda$createFont2D$0(runnable);
                                return lambda$createFont2D$0;
                            }
                        });
                    }
                }
            }
            return (Font2D[]) arrayList.toArray(new Font2D[0]);
        } catch (FontFormatException e) {
            if (z2) {
                AccessController.doPrivileged(new PrivilegedAction<Void>() { // from class: sun.font.SunFontManager.7
                    @Override // java.security.PrivilegedAction
                    public Void run() {
                        CreatedFontTracker createdFontTracker2 = createdFontTracker;
                        if (createdFontTracker2 != null) {
                            createdFontTracker2.subBytes((int) file.length());
                        }
                        file.delete();
                        return null;
                    }
                });
            }
            throw e;
        }
    }

    public static void registerCompositeFont(String str, String[] strArr, String[] strArr2, int i, int[] iArr, int[] iArr2, boolean z, ConcurrentHashMap<String, Font2D> concurrentHashMap) {
        CompositeFont compositeFont = new CompositeFont(str, strArr, strArr2, i, iArr, iArr2, z, getInstance());
        Locale locale = Locale.ENGLISH;
        Font2D font2D = concurrentHashMap.get(str.toLowerCase(locale));
        if (font2D instanceof CompositeFont) {
            font2D.handle.font2D = compositeFont;
        }
        concurrentHashMap.put(str.toLowerCase(locale), compositeFont);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0031 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private sun.font.PhysicalFont registerFontFile(java.lang.String r11) {
        /*
            r10 = this;
            java.io.File r0 = new java.io.File
            r0.<init>(r11)
            boolean r0 = r0.isAbsolute()
            r1 = 0
            if (r0 == 0) goto L3b
            java.util.concurrent.ConcurrentHashMap<java.lang.String, sun.font.PhysicalFont> r0 = r10.registeredFonts
            boolean r0 = r0.containsKey(r11)
            if (r0 != 0) goto L3b
            java.io.FilenameFilter r0 = sun.font.SunFontManager.ttFilter
            boolean r0 = r0.accept(r1, r11)
            r2 = -1
            if (r0 == 0) goto L21
            r0 = 0
            r3 = 3
        L1f:
            r7 = r0
            goto L2e
        L21:
            java.io.FilenameFilter r0 = sun.font.SunFontManager.t1Filter
            boolean r0 = r0.accept(r1, r11)
            if (r0 == 0) goto L2c
            r0 = 1
            r3 = 4
            goto L1f
        L2c:
            r3 = 6
            r7 = r2
        L2e:
            r9 = r3
            if (r7 != r2) goto L32
            return r1
        L32:
            r6 = 0
            r8 = 0
            r4 = r10
            r5 = r11
            sun.font.PhysicalFont r10 = r4.registerFontFile(r5, r6, r7, r8, r9)
            return r10
        L3b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.font.SunFontManager.registerFontFile(java.lang.String):sun.font.PhysicalFont");
    }

    public void registerFontFile(String str, String[] strArr, int i, boolean z) {
        int i2;
        if (this.registeredFontFiles.contains(str)) {
            return;
        }
        if (ttFilter.accept(null, str)) {
            i2 = 0;
        } else {
            i2 = t1Filter.accept(null, str) ? 1 : 4;
        }
        this.registeredFontFiles.add(str);
        if (z) {
            registerDeferredFont(str, str, strArr, i2, false, i);
        } else {
            registerFontFile(str, strArr, i2, false, i);
        }
    }
}
