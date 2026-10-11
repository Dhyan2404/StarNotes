package sun.awt;

import androidx.core.text.util.LocalePreferences;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.material.timepicker.TimeModel;
import java.awt.GraphicsEnvironment;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.swing.plaf.FontUIResource;
import sun.font.CompositeFont;
import sun.font.FcFontConfiguration;
import sun.font.FontAccess;
import sun.font.FontUtilities;
import sun.font.MFontConfiguration;
import sun.font.NativeFont;
import sun.font.SunFontManager;

/* loaded from: classes16.dex */
public final class X11FontManager extends FcFontManager {
    private static final int ADD_STYLE_NAME_FIELD = 6;
    private static final int AVERAGE_WIDTH_FIELD = 12;
    private static final int CHARSET_ENCODING_FIELD = 14;
    private static final int CHARSET_REGISTRY_FIELD = 13;
    private static final int FAMILY_NAME_FIELD = 2;
    private static final int FOUNDRY_FIELD = 1;
    private static final int PIXEL_SIZE_FIELD = 7;
    private static final int POINT_SIZE_FIELD = 8;
    private static final int RESOLUTION_X_FIELD = 9;
    private static final int RESOLUTION_Y_FIELD = 10;
    private static final int SETWIDTH_NAME_FIELD = 5;
    private static final int SLANT_FIELD = 4;
    private static final int SPACING_FIELD = 11;
    private static final int WEIGHT_NAME_FIELD = 3;
    private static Map<String, String> xFontDirsMap;
    private static Map<String, String> fontNameMap = new HashMap();
    private static Map<String, Vector<String>> xlfdMap = new HashMap();
    private static HashSet<String> fontConfigDirs = null;
    private static HashMap<String, Object> registeredDirs = new HashMap<>();
    private static String[] fontdirs = null;

    public static X11FontManager getInstance() {
        return (X11FontManager) SunFontManager.getInstance();
    }

    private void getPlatformFontPathFromFontConfig() {
        HashSet<String> hashSet;
        if (fontConfigDirs == null) {
            fontConfigDirs = getFontConfiguration().getAWTFontPathSet();
            if (!FontUtilities.debugFonts() || (hashSet = fontConfigDirs) == null) {
                return;
            }
            for (String str : (String[]) hashSet.toArray(new String[0])) {
                FontUtilities.logInfo("awtfontpath : " + str);
            }
        }
    }

    private static String getX11FontName(String str) {
        String replaceAll = str.replaceAll(TimeModel.NUMBER_FORMAT, "*");
        if (NativeFont.fontExists(replaceAll)) {
            return replaceAll;
        }
        return null;
    }

    private boolean isHeadless() {
        GraphicsEnvironment.getLocalGraphicsEnvironment();
        return GraphicsEnvironment.isHeadless();
    }

    private String specificFontIDForName(String str) {
        int[] iArr = new int[14];
        int i = 1;
        int i2 = 1;
        while (i != -1 && i2 < 14) {
            i = str.indexOf(45, i);
            if (i != -1) {
                iArr[i2] = i;
                i++;
                i2++;
            }
        }
        if (i2 == 14) {
            StringBuffer stringBuffer = new StringBuffer(str.substring(iArr[1], iArr[5]));
            stringBuffer.append(str.substring(iArr[12]));
            return stringBuffer.toString().toLowerCase(Locale.ENGLISH);
        }
        if (FontUtilities.debugFonts()) {
            FontUtilities.logSevere("Font Configuration Font ID is malformed:" + str);
        }
        return str;
    }

    private String switchFontIDForName(String str) {
        int[] iArr = new int[14];
        int i = 1;
        int i2 = 1;
        while (i != -1 && i2 < 14) {
            i = str.indexOf(45, i);
            if (i != -1) {
                iArr[i2] = i;
                i++;
                i2++;
            }
        }
        if (i2 != 14) {
            if (FontUtilities.debugFonts()) {
                FontUtilities.logSevere("Font Configuration Font ID is malformed:" + str);
            }
            return str;
        }
        String substring = str.substring(iArr[3] + 1, iArr[4]);
        String substring2 = str.substring(iArr[1] + 1, iArr[2]);
        String substring3 = str.substring(iArr[12] + 1, iArr[13]);
        String substring4 = str.substring(iArr[13] + 1);
        if (substring.equals("i")) {
            substring = C4921e.f26528e;
        } else if (substring.equals(C4921e.f26528e)) {
            substring = "i";
        }
        if (substring2.equals("itc zapfdingbats") && substring3.equals(LocalePreferences.FirstDayOfWeek.SUNDAY) && substring4.equals("fontspecific")) {
            substring3 = "adobe";
        }
        StringBuffer stringBuffer = new StringBuffer(str.substring(iArr[1], iArr[3] + 1));
        stringBuffer.append(substring);
        stringBuffer.append(str.substring(iArr[4], iArr[5] + 1));
        stringBuffer.append(substring3);
        stringBuffer.append(str.substring(iArr[13]));
        return stringBuffer.toString().toLowerCase(Locale.ENGLISH);
    }

    @Override // sun.font.SunFontManager
    public void addFontToPlatformFontPath(String str) {
        getPlatformFontPathFromFontConfig();
        if (xFontDirsMap != null) {
            String str2 = xFontDirsMap.get(specificFontIDForName(str));
            if (str2 != null) {
                fontConfigDirs.add(str2);
            }
        }
    }

    @Override // sun.awt.FcFontManager, sun.font.SunFontManager
    public FontConfiguration createFontConfiguration() {
        MFontConfiguration mFontConfiguration = new MFontConfiguration(this);
        if (FontUtilities.isLinux && !mFontConfiguration.foundOsSpecificFile()) {
            FcFontConfiguration fcFontConfiguration = new FcFontConfiguration(this);
            if (fcFontConfiguration.init()) {
                return fcFontConfiguration;
            }
        }
        mFontConfiguration.init();
        return mFontConfiguration;
    }

    @Override // sun.font.SunFontManager
    public String getFileNameFromPlatformName(String str) {
        if (str.startsWith("/")) {
            return str;
        }
        String specificFontIDForName = specificFontIDForName(str);
        String fileNameFromPlatformName = super.getFileNameFromPlatformName(str);
        if (fileNameFromPlatformName != null) {
            if (isHeadless() && fileNameFromPlatformName.startsWith("-")) {
                return null;
            }
            if (fileNameFromPlatformName.startsWith("/")) {
                Vector<String> vector = xlfdMap.get(fileNameFromPlatformName);
                if (vector == null) {
                    if (getFontConfiguration().needToSearchForFile(fileNameFromPlatformName)) {
                        fileNameFromPlatformName = null;
                    }
                    if (fileNameFromPlatformName != null) {
                        Vector<String> vector2 = new Vector<>();
                        vector2.add(str);
                        xlfdMap.put(fileNameFromPlatformName, vector2);
                    }
                } else if (!vector.contains(str)) {
                    vector.add(str);
                }
            }
            if (fileNameFromPlatformName != null) {
                fontNameMap.put(specificFontIDForName, fileNameFromPlatformName);
                return fileNameFromPlatformName;
            }
        }
        if (specificFontIDForName != null) {
            fileNameFromPlatformName = fontNameMap.get(specificFontIDForName);
            if (this.fontPath == null && (fileNameFromPlatformName == null || !fileNameFromPlatformName.startsWith("/"))) {
                if (FontUtilities.debugFonts()) {
                    FontUtilities.logWarning("** Registering all font paths because can't find file for " + str);
                }
                String platformFontPath = getPlatformFontPath(SunFontManager.noType1Font);
                this.fontPath = platformFontPath;
                registerFontDirs(platformFontPath);
                if (FontUtilities.debugFonts()) {
                    FontUtilities.logWarning("** Finished registering all font paths");
                }
                fileNameFromPlatformName = fontNameMap.get(specificFontIDForName);
            }
            if (fileNameFromPlatformName == null && !isHeadless()) {
                fileNameFromPlatformName = getX11FontName(str);
            }
            if (fileNameFromPlatformName == null) {
                specificFontIDForName = switchFontIDForName(str);
                fileNameFromPlatformName = fontNameMap.get(specificFontIDForName);
            }
            if (fileNameFromPlatformName != null) {
                fontNameMap.put(specificFontIDForName, fileNameFromPlatformName);
            }
        }
        return fileNameFromPlatformName;
    }

    public String getFileNameFromXLFD(String str) {
        String specificFontIDForName = specificFontIDForName(str);
        if (specificFontIDForName == null) {
            return null;
        }
        String str2 = fontNameMap.get(specificFontIDForName);
        if (str2 == null) {
            str2 = fontNameMap.get(switchFontIDForName(str));
        }
        return str2 == null ? getDefaultFontFile() : str2;
    }

    @Override // sun.font.SunFontManager
    public FontUIResource getFontConfigFUIR(String str, int i, int i2) {
        CompositeFont fontConfigFont = getFontConfigManager().getFontConfigFont(str, i);
        if (fontConfigFont == null) {
            return new FontUIResource(str, i, i2);
        }
        FontUIResource fontUIResource = new FontUIResource(fontConfigFont.getFamilyName(null), i, i2);
        FontAccess.getFontAccess().setFont2D(fontUIResource, fontConfigFont.handle);
        FontAccess.getFontAccess().setCreatedFont(fontUIResource);
        return fontUIResource;
    }

    @Override // sun.awt.FcFontManager, sun.font.SunFontManager
    public synchronized String getFontPath(boolean z) {
        isHeadless();
        return getFontPathNative(z, true);
    }

    @Override // sun.font.SunFontManager
    public String[] getNativeNames(String str, String str2) {
        Vector<String> vector = xlfdMap.get(str);
        if (vector != null) {
            return (String[]) vector.toArray(new String[vector.size()]);
        }
        if (str2 == null) {
            return null;
        }
        return new String[]{str2};
    }

    @Override // sun.font.SunFontManager
    public void loadFonts() {
        super.loadFonts();
        xFontDirsMap = null;
        xlfdMap = new HashMap(1);
        fontNameMap = new HashMap(1);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:35|(2:37|(3:39|40|27)(1:41))|42|(1:44)|45|46|(1:48)|49|50|(1:52)|(5:58|(1:60)|61|(1:63)|64)|65|(2:67|68)(2:69|27)) */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0139, code lost:
    
        r8 = r15 + java.io.File.separator + r8;
     */
    @Override // sun.font.SunFontManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void registerFontDir(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.awt.X11FontManager.registerFontDir(java.lang.String):void");
    }

    @Override // sun.font.SunFontManager
    public void registerFontDirs(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, File.pathSeparator);
        while (stringTokenizer.hasMoreTokens()) {
            try {
                String nextToken = stringTokenizer.nextToken();
                if (nextToken != null && !registeredDirs.containsKey(nextToken)) {
                    registeredDirs.put(nextToken, null);
                    registerFontDir(nextToken);
                }
            } catch (NoSuchElementException unused) {
                return;
            }
        }
    }

    @Override // sun.font.SunFontManager
    public void registerPlatformFontsUsedByFontConfiguration() {
        getPlatformFontPathFromFontConfig();
        if (fontConfigDirs == null) {
            return;
        }
        if (FontUtilities.isLinux) {
            fontConfigDirs.add(SunFontManager.jreLibDirName + File.separator + "oblique-fonts");
        }
        fontdirs = (String[]) fontConfigDirs.toArray(new String[0]);
    }

    @Override // sun.awt.FcFontManager, sun.font.SunFontManager
    public FontConfiguration createFontConfiguration(boolean z, boolean z2) {
        return new MFontConfiguration(this, z, z2);
    }
}
