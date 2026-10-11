package sun.font;

import com.google.android.material.motion.MotionUtils;
import com.google.zxing.common.StringUtils;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.onyx.common.util.FileUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Properties;
import java.util.Scanner;
import org.apache.commons.lang3.SystemUtils;
import sun.awt.FcFontManager;
import sun.awt.FontConfiguration;
import sun.awt.FontDescriptor;
import sun.font.FontConfigManager;
import sun.util.logging.NeoPlatformLogger;

/* loaded from: classes16.dex */
public class FcFontConfiguration extends FontConfiguration {
    private static final String fileVersion = "1";
    private FontConfigManager.FcCompFont[] fcCompFonts;
    private String fcInfoFileName;

    public FcFontConfiguration(SunFontManager sunFontManager) {
        super(sunFontManager);
        this.fcInfoFileName = null;
        this.fcCompFonts = null;
        init();
    }

    private FontConfigManager.FontConfigFont[] getFcFontList(FontConfigManager.FcCompFont[] fcCompFontArr, String str, int i) {
        if (str.equals("dialog")) {
            str = "sansserif";
        } else if (str.equals("dialoginput")) {
            str = "monospaced";
        }
        for (int i2 = 0; i2 < fcCompFontArr.length; i2++) {
            if (str.equals(fcCompFontArr[i2].jdkName)) {
                FontConfigManager.FcCompFont fcCompFont = fcCompFontArr[i2];
                if (i == fcCompFont.style) {
                    return fcCompFont.allFonts;
                }
            }
        }
        return fcCompFontArr[0].allFonts;
    }

    private File getFcInfoFile() {
        String str;
        if (this.fcInfoFileName == null) {
            try {
                str = InetAddress.getLocalHost().getHostName();
            } catch (UnknownHostException unused) {
                str = "localhost";
            }
            String property = System.getProperty(SystemUtils.f107421b);
            String property2 = System.getProperty("java.version");
            String str2 = File.separator;
            String str3 = property + str2 + ".java" + str2 + FontUtils.FONTS + str2 + property2;
            Locale locale = Locale.getDefault();
            this.fcInfoFileName = str3 + str2 + ("fcinfo-1-" + str + "-" + FontConfiguration.osName + "-" + FontConfiguration.osVersion + "-" + locale.getLanguage() + "-" + locale.getCountry() + ".properties");
        }
        return new File(this.fcInfoFileName);
    }

    private String getVersionString(File file) {
        try {
            Scanner scanner = new Scanner(file);
            try {
                String findInLine = scanner.findInLine("(\\d)+((\\.)(\\d)+)*");
                scanner.close();
                return findInLine;
            } finally {
            }
        } catch (Exception unused) {
            return null;
        }
    }

    private void readFcInfo() {
        File fcInfoFile = getFcInfoFile();
        if (!fcInfoFile.exists()) {
            if (FontUtilities.debugFonts()) {
                warning("fontconfig info file " + fcInfoFile.toString() + " does not exist");
                return;
            }
            return;
        }
        Properties properties = new Properties();
        try {
            FileInputStream fileInputStream = new FileInputStream(fcInfoFile);
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
                String str = (String) properties.get("version");
                if (str == null || !str.equals("1")) {
                    if (FontUtilities.debugFonts()) {
                        warning("fontconfig info file version mismatch (found: " + str + ", expected: 1" + MotionUtils.f31762d);
                        return;
                    }
                    return;
                }
                String str2 = (String) properties.get("fcversion");
                if (str2 != null) {
                    try {
                        int parseInt = Integer.parseInt(str2);
                        if (parseInt != 0 && parseInt != FontConfigManager.getFontConfigVersion()) {
                            if (FontUtilities.debugFonts()) {
                                warning("new, different fontconfig detected");
                                return;
                            }
                            return;
                        }
                    } catch (Exception unused) {
                        if (FontUtilities.debugFonts()) {
                            warning("Exception parsing version " + str2);
                            return;
                        }
                        return;
                    }
                }
                long lastModified = fcInfoFile.lastModified();
                for (int i = 0; i < 4; i++) {
                    String str3 = (String) properties.get("cachedir." + i);
                    if (str3 == null) {
                        break;
                    }
                    File file = new File(str3);
                    if (file.exists() && file.lastModified() > lastModified) {
                        if (FontUtilities.debugFonts()) {
                            warning("out of date cache directories detected");
                            return;
                        }
                        return;
                    }
                }
                String[] strArr = {"sansserif", "serif", "monospaced"};
                String[] strArr2 = {"sans", "serif", "monospace"};
                FontConfigManager.FcCompFont[] fcCompFontArr = new FontConfigManager.FcCompFont[12];
                for (int i2 = 0; i2 < 3; i2++) {
                    for (int i3 = 0; i3 < 4; i3++) {
                        int i4 = (i2 * 4) + i3;
                        try {
                            fcCompFontArr[i4] = new FontConfigManager.FcCompFont();
                            String str4 = strArr[i2] + "." + i3;
                            FontConfigManager.FcCompFont fcCompFont = fcCompFontArr[i4];
                            fcCompFont.jdkName = strArr[i2];
                            fcCompFont.fcFamily = strArr2[i2];
                            fcCompFont.style = i3;
                            int parseInt2 = Integer.parseInt((String) properties.get(str4 + ".length"));
                            if (parseInt2 <= 0) {
                                if (FontUtilities.debugFonts()) {
                                    warning("bad non-positive .length entry in fontconfig file " + fcInfoFile.toString());
                                    return;
                                }
                                return;
                            }
                            fcCompFontArr[i4].allFonts = new FontConfigManager.FontConfigFont[parseInt2];
                            for (int i5 = 0; i5 < parseInt2; i5++) {
                                fcCompFontArr[i4].allFonts[i5] = new FontConfigManager.FontConfigFont();
                                fcCompFontArr[i4].allFonts[i5].fullName = (String) properties.get(str4 + "." + i5 + ".fullName");
                                String str5 = str4 + "." + i5 + ".file";
                                String str6 = (String) properties.get(str5);
                                if (str6 == null) {
                                    if (FontUtilities.debugFonts()) {
                                        warning("missing file value for key " + str5 + " in fontconfig file " + fcInfoFile.toString());
                                        return;
                                    }
                                    return;
                                }
                                fcCompFontArr[i4].allFonts[i5].fontFile = str6;
                            }
                            FontConfigManager.FcCompFont fcCompFont2 = fcCompFontArr[i4];
                            fcCompFont2.firstFont = fcCompFont2.allFonts[0];
                        } catch (Throwable th) {
                            if (FontUtilities.debugFonts()) {
                                warning(th.toString());
                            }
                        }
                    }
                }
                this.fcCompFonts = fcCompFontArr;
                if (FontUtilities.debugFonts()) {
                    FontUtilities.logInfo("successfully parsed the fontconfig file at " + fcInfoFile.toString());
                }
            } finally {
            }
        } catch (IOException e) {
            if (FontUtilities.debugFonts()) {
                warning("IOException (" + e.getCause() + ") reading from " + fcInfoFile.toString());
            }
        }
    }

    private static void warning(String str) {
        NeoPlatformLogger.getLogger("sun.awt.FontConfiguration").warning(str);
    }

    private void writeFcInfo() {
        Properties properties = new Properties();
        properties.setProperty("version", "1");
        FontConfigManager.FontConfigInfo fontConfigInfo = ((FcFontManager) this.fontManager).getFontConfigManager().getFontConfigInfo();
        properties.setProperty("fcversion", Integer.toString(fontConfigInfo.fcVersion));
        if (fontConfigInfo.cacheDirs != null) {
            int i = 0;
            while (true) {
                String[] strArr = fontConfigInfo.cacheDirs;
                if (i >= strArr.length) {
                    break;
                }
                if (strArr[i] != null) {
                    properties.setProperty("cachedir." + i, fontConfigInfo.cacheDirs[i]);
                }
                i++;
            }
        }
        int i2 = 0;
        while (true) {
            FontConfigManager.FcCompFont[] fcCompFontArr = this.fcCompFonts;
            if (i2 >= fcCompFontArr.length) {
                try {
                    break;
                } catch (Exception unused) {
                    if (FontUtilities.debugFonts()) {
                        warning("IOException writing to " + getFcInfoFile());
                        return;
                    }
                    return;
                }
            }
            FontConfigManager.FcCompFont fcCompFont = fcCompFontArr[i2];
            String str = fcCompFont.jdkName + "." + fcCompFont.style;
            properties.setProperty(str + ".length", Integer.toString(fcCompFont.allFonts.length));
            for (int i3 = 0; i3 < fcCompFont.allFonts.length; i3++) {
                properties.setProperty(str + "." + i3 + ".file", fcCompFont.allFonts[i3].fontFile);
                if (fcCompFont.allFonts[i3].fullName != null) {
                    properties.setProperty(str + "." + i3 + ".fullName", fcCompFont.allFonts[i3].fullName);
                }
            }
            i2++;
        }
        File fcInfoFile = getFcInfoFile();
        File parentFile = fcInfoFile.getParentFile();
        parentFile.mkdirs();
        File createTempFile = FileUtils.createTempFile(parentFile.getAbsolutePath(), "fcinfo", null);
        FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
        properties.store(fileOutputStream, "JDK Font Configuration Generated File: *Do Not Edit*");
        fileOutputStream.close();
        if (createTempFile.renameTo(fcInfoFile) || !FontUtilities.debugFonts()) {
            return;
        }
        System.out.println("rename failed");
        warning("Failed renaming file to " + getFcInfoFile());
    }

    @Override // sun.awt.FontConfiguration
    public FontDescriptor[] buildFontDescriptors(int i, int i2) {
        String[] componentFaceNames = get2DCompositeFontInfo()[(i * 4) + i2].getComponentFaceNames();
        FontDescriptor[] fontDescriptorArr = new FontDescriptor[componentFaceNames.length];
        for (int i3 = 0; i3 < componentFaceNames.length; i3++) {
            fontDescriptorArr[i3] = new FontDescriptor(componentFaceNames[i3], StandardCharsets.ISO_8859_1.newEncoder(), new int[0]);
        }
        return fontDescriptorArr;
    }

    @Override // sun.awt.FontConfiguration
    public CompositeFontDescriptor[] get2DCompositeFontInfo() {
        FontConfigManager.FcCompFont[] loadFontConfig = ((FcFontManager) this.fontManager).getFontConfigManager().loadFontConfig();
        CompositeFontDescriptor[] compositeFontDescriptorArr = new CompositeFontDescriptor[20];
        for (int i = 0; i < 5; i++) {
            String str = FontConfiguration.publicFontNames[i];
            for (int i2 = 0; i2 < 4; i2++) {
                String str2 = str + "." + FontConfiguration.styleNames[i2];
                FontConfigManager.FontConfigFont[] fcFontList = getFcFontList(loadFontConfig, FontConfiguration.fontNames[i], i2);
                int length = fcFontList.length;
                String[] strArr = FontConfiguration.installedFallbackFontFiles;
                if (strArr != null) {
                    length += strArr.length;
                }
                String[] strArr2 = new String[length];
                String[] strArr3 = new String[length];
                for (int i3 = 0; i3 < fcFontList.length; i3++) {
                    strArr2[i3] = fcFontList[i3].fontFile;
                    strArr3[i3] = fcFontList[i3].fullName;
                }
                String[] strArr4 = FontConfiguration.installedFallbackFontFiles;
                if (strArr4 != null) {
                    System.arraycopy(strArr4, 0, strArr2, fcFontList.length, strArr4.length);
                }
                compositeFontDescriptorArr[(i * 4) + i2] = new CompositeFontDescriptor(str2, 1, strArr3, strArr2, null, null);
            }
        }
        return compositeFontDescriptorArr;
    }

    @Override // sun.awt.FontConfiguration
    public Charset getDefaultFontCharset(String str) {
        return Charset.forName(StringUtils.f38416d);
    }

    @Override // sun.awt.FontConfiguration
    public String getEncoding(String str, String str2) {
        return "default";
    }

    @Override // sun.awt.FontConfiguration
    public String getExtraFontPath() {
        return null;
    }

    @Override // sun.awt.FontConfiguration
    public String getFaceNameFromComponentFontName(String str) {
        return null;
    }

    @Override // sun.awt.FontConfiguration
    public String getFallbackFamilyName(String str, String str2) {
        String compatibilityFamilyName = getCompatibilityFamilyName(str);
        return compatibilityFamilyName != null ? compatibilityFamilyName : str2;
    }

    @Override // sun.awt.FontConfiguration
    public String getFileNameFromComponentFontName(String str) {
        return null;
    }

    @Override // sun.awt.FontConfiguration
    public String getFileNameFromPlatformName(String str) {
        return null;
    }

    @Override // sun.awt.FontConfiguration
    public int getNumberCoreFonts() {
        return 1;
    }

    @Override // sun.awt.FontConfiguration
    public String[] getPlatformFontNames() {
        HashSet hashSet = new HashSet();
        for (FontConfigManager.FcCompFont fcCompFont : ((FcFontManager) this.fontManager).getFontConfigManager().loadFontConfig()) {
            int i = 0;
            while (true) {
                FontConfigManager.FontConfigFont[] fontConfigFontArr = fcCompFont.allFonts;
                if (i < fontConfigFontArr.length) {
                    hashSet.add(fontConfigFontArr[i].fontFile);
                    i++;
                }
            }
        }
        return (String[]) hashSet.toArray(new String[0]);
    }

    @Override // sun.awt.FontConfiguration
    public synchronized boolean init() {
        if (this.fcCompFonts != null) {
            return true;
        }
        setFontConfiguration();
        readFcInfo();
        FontConfigManager fontConfigManager = ((FcFontManager) this.fontManager).getFontConfigManager();
        FontConfigManager.FcCompFont[] fcCompFontArr = this.fcCompFonts;
        if (fcCompFontArr == null) {
            FontConfigManager.FcCompFont[] loadFontConfig = fontConfigManager.loadFontConfig();
            this.fcCompFonts = loadFontConfig;
            if (loadFontConfig != null) {
                try {
                    writeFcInfo();
                } catch (Exception e) {
                    if (FontUtilities.debugFonts()) {
                        warning("Exception writing fcInfo " + e);
                    }
                }
            } else if (FontUtilities.debugFonts()) {
                warning("Failed to get info from libfontconfig");
            }
        } else {
            fontConfigManager.populateFontConfig(fcCompFontArr);
        }
        if (this.fcCompFonts == null) {
            return false;
        }
        String property = System.getProperty(SystemUtils.f107424e);
        if (property == null) {
            throw new Error("java.home property not set");
        }
        getInstalledFallbackFonts(property + File.separator + "lib");
        return true;
    }

    @Override // sun.awt.FontConfiguration
    public void initReorderMap() {
        this.reorderMap = new HashMap<>();
    }

    @Override // sun.awt.FontConfiguration
    public boolean needToSearchForFile(String str) {
        return false;
    }

    @Override // sun.awt.FontConfiguration
    public void setOsNameAndVersion() {
        super.setOsNameAndVersion();
        if (FontConfiguration.osName.equals("Linux")) {
            try {
                File file = new File("/etc/lsb-release");
                if (file.canRead()) {
                    Properties properties = new Properties();
                    properties.load(new FileInputStream(file));
                    FontConfiguration.osName = properties.getProperty("DISTRIB_ID");
                    FontConfiguration.osVersion = properties.getProperty("DISTRIB_RELEASE");
                } else {
                    File file2 = new File("/etc/redhat-release");
                    if (file2.canRead()) {
                        FontConfiguration.osName = "RedHat";
                        FontConfiguration.osVersion = getVersionString(file2);
                    } else {
                        File file3 = new File("/etc/SuSE-release");
                        if (file3.canRead()) {
                            FontConfiguration.osName = "SuSE";
                            FontConfiguration.osVersion = getVersionString(file3);
                        } else {
                            File file4 = new File("/etc/turbolinux-release");
                            if (file4.canRead()) {
                                FontConfiguration.osName = "Turbo";
                                FontConfiguration.osVersion = getVersionString(file4);
                            } else {
                                File file5 = new File("/etc/fedora-release");
                                if (file5.canRead()) {
                                    FontConfiguration.osName = "Fedora";
                                    FontConfiguration.osVersion = getVersionString(file5);
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
                if (FontUtilities.debugFonts()) {
                    warning("Exception identifying Linux distro.");
                }
            }
        }
    }

    public FcFontConfiguration(SunFontManager sunFontManager, boolean z, boolean z2) {
        super(sunFontManager, z, z2);
        this.fcInfoFileName = null;
        this.fcCompFonts = null;
        init();
    }
}
