package sun.font;

import com.google.zxing.common.StringUtils;
import com.onyx.android.sdk.base.data.font.TTFFont;
import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Properties;
import java.util.Scanner;
import sun.awt.FontConfiguration;
import sun.awt.X11FontManager;
import sun.util.logging.NeoPlatformLogger;

/* loaded from: classes16.dex */
public class MFontConfiguration extends FontConfiguration {
    private static HashMap<String, String> encodingMap = new HashMap<>();
    private static FontConfiguration fontConfig = null;
    private static final String fontsDirPrefix = "$JRE_LIB_FONTS";
    private static NeoPlatformLogger logger;

    public MFontConfiguration(SunFontManager sunFontManager) {
        super(sunFontManager);
        if (FontUtilities.debugFonts()) {
            logger = NeoPlatformLogger.getLogger("sun.awt.FontConfiguration");
        }
        initTables();
    }

    private String getVersionString(File file) {
        try {
            return new Scanner(file).findInLine("(\\d)+((\\.)(\\d)+)*");
        } catch (Exception unused) {
            return null;
        }
    }

    private void initTables() {
        encodingMap.put("iso8859-1", "ISO-8859-1");
        encodingMap.put("iso8859-2", "ISO-8859-2");
        encodingMap.put("iso8859-4", "ISO-8859-4");
        encodingMap.put("iso8859-5", "ISO-8859-5");
        encodingMap.put("iso8859-6", "ISO-8859-6");
        encodingMap.put("iso8859-7", "ISO-8859-7");
        encodingMap.put("iso8859-8", "ISO-8859-8");
        encodingMap.put("iso8859-9", "ISO-8859-9");
        encodingMap.put("iso8859-13", "ISO-8859-13");
        encodingMap.put("iso8859-15", "ISO-8859-15");
        encodingMap.put("gb2312.1980-0", "sun.font.X11GB2312");
        if (FontConfiguration.osName == null) {
            encodingMap.put("gbk-0", TTFFont.CHARSET_GBK);
        } else {
            encodingMap.put("gbk-0", "sun.font.X11GBK");
        }
        encodingMap.put("gb18030.2000-0", "sun.font.X11GB18030_0");
        encodingMap.put("gb18030.2000-1", "sun.font.X11GB18030_1");
        encodingMap.put("cns11643-1", "sun.font.X11CNS11643P1");
        encodingMap.put("cns11643-2", "sun.font.X11CNS11643P2");
        encodingMap.put("cns11643-3", "sun.font.X11CNS11643P3");
        encodingMap.put("big5-1", TTFFont.CHARSET_BIG5);
        encodingMap.put("big5-0", TTFFont.CHARSET_BIG5);
        encodingMap.put("hkscs-1", "Big5-HKSCS");
        encodingMap.put("ansi-1251", "windows-1251");
        encodingMap.put("koi8-r", "KOI8-R");
        encodingMap.put("jisx0201.1976-0", "JIS0201");
        encodingMap.put("jisx0208.1983-0", "JIS0208");
        encodingMap.put("jisx0212.1990-0", "JIS0212");
        encodingMap.put("ksc5601.1987-0", "sun.font.X11KSC5601");
        encodingMap.put("ksc5601.1992-3", "sun.font.X11Johab");
        encodingMap.put("tis620.2533-0", "TIS-620");
        encodingMap.put("iso10646-1", "UTF-16BE");
    }

    @Override // sun.awt.FontConfiguration
    public HashSet<String> getAWTFontPathSet() {
        HashSet<String> hashSet = new HashSet<>();
        for (short s : getCoreScripts(0)) {
            String string = FontConfiguration.getString(FontConfiguration.table_awtfontpaths[s]);
            if (string != null) {
                int indexOf = string.indexOf(58);
                int i = 0;
                while (indexOf >= 0) {
                    hashSet.add(string.substring(i, indexOf));
                    i = indexOf + 1;
                    indexOf = string.indexOf(58, i);
                }
                if (i != 0) {
                    string = string.substring(i);
                }
                hashSet.add(string);
            }
        }
        return hashSet;
    }

    @Override // sun.awt.FontConfiguration
    public Charset getDefaultFontCharset(String str) {
        return Charset.forName(StringUtils.f38416d);
    }

    @Override // sun.awt.FontConfiguration
    public String getEncoding(String str, String str2) {
        int i = 0;
        int i2 = 13;
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0 || i < 0) {
                break;
            }
            i = str.indexOf("-", i) + 1;
            i2 = i3;
        }
        if (i == -1) {
            return "default";
        }
        String substring = str.substring(i);
        if (substring.indexOf("fontspecific") > 0) {
            if (str.indexOf("dingbats") > 0) {
                return "sun.font.X11Dingbats";
            }
            if (str.indexOf("symbol") > 0) {
                return "sun.awt.Symbol";
            }
        }
        String str3 = encodingMap.get(substring);
        return str3 == null ? "default" : str3;
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
        String fileNameFromPlatformName = getFileNameFromPlatformName(str);
        return (fileNameFromPlatformName == null || fileNameFromPlatformName.charAt(0) != '/' || needToSearchForFile(fileNameFromPlatformName)) ? ((X11FontManager) this.fontManager).getFileNameFromXLFD(str) : fileNameFromPlatformName;
    }

    @Override // sun.awt.FontConfiguration
    public void initReorderMap() {
        HashMap<String, Object> hashMap = new HashMap<>();
        this.reorderMap = hashMap;
        hashMap.put("UTF-8.ja.JP", "japanese-iso10646");
        this.reorderMap.put("UTF-8.ko.KR", "korean-iso10646");
        this.reorderMap.put("UTF-8.zh.TW", "chinese-tw-iso10646");
        this.reorderMap.put("UTF-8.zh.HK", "chinese-tw-iso10646");
        this.reorderMap.put("UTF-8.zh.CN", "chinese-cn-iso10646");
        this.reorderMap.put("x-euc-jp-linux", split("japanese-x0201,japanese-x0208"));
        this.reorderMap.put(StringUtils.GB2312, "chinese-gb18030");
        this.reorderMap.put(TTFFont.CHARSET_BIG5, "chinese-big5");
        this.reorderMap.put("EUC-KR", "korean");
        this.reorderMap.put(TTFFont.CHARSET_GB18030, "chinese-gb18030");
    }

    @Override // sun.awt.FontConfiguration
    public String mapFileName(String str) {
        if (str == null || !str.startsWith(fontsDirPrefix)) {
            return str;
        }
        return SunFontManager.jreFontDirName + str.substring(14);
    }

    @Override // sun.awt.FontConfiguration
    public void setOsNameAndVersion() {
        super.setOsNameAndVersion();
        if (FontConfiguration.osName.equals("Linux")) {
            try {
                File file = new File("/etc/fedora-release");
                if (file.canRead()) {
                    FontConfiguration.osName = "Fedora";
                    FontConfiguration.osVersion = getVersionString(file);
                } else {
                    File file2 = new File("/etc/redhat-release");
                    if (file2.canRead()) {
                        FontConfiguration.osName = "RedHat";
                        FontConfiguration.osVersion = getVersionString(file2);
                    } else {
                        File file3 = new File("/etc/turbolinux-release");
                        if (file3.canRead()) {
                            FontConfiguration.osName = "Turbo";
                            FontConfiguration.osVersion = getVersionString(file3);
                        } else {
                            File file4 = new File("/etc/SuSE-release");
                            if (file4.canRead()) {
                                FontConfiguration.osName = "SuSE";
                                FontConfiguration.osVersion = getVersionString(file4);
                            } else {
                                File file5 = new File("/etc/lsb-release");
                                if (file5.canRead()) {
                                    Properties properties = new Properties();
                                    properties.load(new FileInputStream(file5));
                                    FontConfiguration.osName = properties.getProperty("DISTRIB_ID");
                                    FontConfiguration.osVersion = properties.getProperty("DISTRIB_RELEASE");
                                }
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public MFontConfiguration(SunFontManager sunFontManager, boolean z, boolean z2) {
        super(sunFontManager, z, z2);
        if (FontUtilities.debugFonts()) {
            logger = NeoPlatformLogger.getLogger("sun.awt.FontConfiguration");
        }
        initTables();
    }
}
