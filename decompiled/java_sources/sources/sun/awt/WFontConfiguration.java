package sun.awt;

import androidx.core.text.util.LocalePreferences;
import com.onyx.android.sdk.base.data.font.TTFFont;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Hashtable;
import org.apache.commons.lang3.SystemUtils;
import sun.font.SunFontManager;

/* loaded from: classes16.dex */
public class WFontConfiguration extends FontConfiguration {
    private static HashMap<String, String> subsetCharsetMap = new HashMap<>();
    private static HashMap<String, String> subsetEncodingMap = new HashMap<>();
    private static String textInputCharset;
    private boolean useCompatibilityFallbacks;

    public WFontConfiguration(SunFontManager sunFontManager) {
        super(sunFontManager);
        this.useCompatibilityFallbacks = "windows-1252".equals(FontConfiguration.encoding);
        initTables(FontConfiguration.encoding);
    }

    private String findFontWithCharset(FontDescriptor[] fontDescriptorArr, String str) {
        String str2 = null;
        for (FontDescriptor fontDescriptor : fontDescriptorArr) {
            String nativeName = fontDescriptor.getNativeName();
            if (nativeName.endsWith(str)) {
                str2 = nativeName;
            }
        }
        return str2;
    }

    private void initTables(String str) {
        subsetCharsetMap.put(Constants.ATTRVAL_ALPHABETIC, "ANSI_CHARSET");
        subsetCharsetMap.put("alphabetic/1252", "ANSI_CHARSET");
        subsetCharsetMap.put("alphabetic/default", "DEFAULT_CHARSET");
        subsetCharsetMap.put("arabic", "ARABIC_CHARSET");
        subsetCharsetMap.put("chinese-ms936", "GB2312_CHARSET");
        subsetCharsetMap.put("chinese-gb18030", "GB2312_CHARSET");
        subsetCharsetMap.put("chinese-ms950", "CHINESEBIG5_CHARSET");
        subsetCharsetMap.put("chinese-hkscs", "CHINESEBIG5_CHARSET");
        subsetCharsetMap.put("cyrillic", "RUSSIAN_CHARSET");
        subsetCharsetMap.put("devanagari", "DEFAULT_CHARSET");
        subsetCharsetMap.put("dingbats", "SYMBOL_CHARSET");
        subsetCharsetMap.put("greek", "GREEK_CHARSET");
        subsetCharsetMap.put(LocalePreferences.CalendarType.HEBREW, "HEBREW_CHARSET");
        subsetCharsetMap.put("japanese", "SHIFTJIS_CHARSET");
        subsetCharsetMap.put("korean", "HANGEUL_CHARSET");
        subsetCharsetMap.put("latin", "ANSI_CHARSET");
        subsetCharsetMap.put("symbol", "SYMBOL_CHARSET");
        subsetCharsetMap.put("thai", "THAI_CHARSET");
        subsetEncodingMap.put(Constants.ATTRVAL_ALPHABETIC, "default");
        subsetEncodingMap.put("alphabetic/1252", "windows-1252");
        subsetEncodingMap.put("alphabetic/default", str);
        subsetEncodingMap.put("arabic", "windows-1256");
        subsetEncodingMap.put("chinese-ms936", TTFFont.CHARSET_GBK);
        subsetEncodingMap.put("chinese-gb18030", TTFFont.CHARSET_GB18030);
        if ("x-MS950-HKSCS".equals(str)) {
            subsetEncodingMap.put("chinese-ms950", "x-MS950-HKSCS");
        } else {
            subsetEncodingMap.put("chinese-ms950", "x-windows-950");
        }
        subsetEncodingMap.put("chinese-hkscs", "sun.awt.HKSCS");
        subsetEncodingMap.put("cyrillic", "windows-1251");
        subsetEncodingMap.put("devanagari", "UTF-16LE");
        subsetEncodingMap.put("dingbats", "sun.awt.windows.WingDings");
        subsetEncodingMap.put("greek", "windows-1253");
        subsetEncodingMap.put(LocalePreferences.CalendarType.HEBREW, "windows-1255");
        subsetEncodingMap.put("japanese", "windows-31j");
        subsetEncodingMap.put("korean", "x-windows-949");
        subsetEncodingMap.put("latin", "windows-1252");
        subsetEncodingMap.put("symbol", "sun.awt.Symbol");
        subsetEncodingMap.put("thai", "x-windows-874");
        if ("windows-1256".equals(str)) {
            textInputCharset = "ARABIC_CHARSET";
            return;
        }
        if (TTFFont.CHARSET_GBK.equals(str)) {
            textInputCharset = "GB2312_CHARSET";
            return;
        }
        if (TTFFont.CHARSET_GB18030.equals(str)) {
            textInputCharset = "GB2312_CHARSET";
            return;
        }
        if ("x-windows-950".equals(str)) {
            textInputCharset = "CHINESEBIG5_CHARSET";
            return;
        }
        if ("x-MS950-HKSCS".equals(str)) {
            textInputCharset = "CHINESEBIG5_CHARSET";
            return;
        }
        if ("windows-1251".equals(str)) {
            textInputCharset = "RUSSIAN_CHARSET";
            return;
        }
        if ("UTF-8".equals(str)) {
            textInputCharset = "DEFAULT_CHARSET";
            return;
        }
        if ("windows-1253".equals(str)) {
            textInputCharset = "GREEK_CHARSET";
            return;
        }
        if ("windows-1255".equals(str)) {
            textInputCharset = "HEBREW_CHARSET";
            return;
        }
        if ("windows-31j".equals(str)) {
            textInputCharset = "SHIFTJIS_CHARSET";
            return;
        }
        if ("x-windows-949".equals(str)) {
            textInputCharset = "HANGEUL_CHARSET";
        } else if ("x-windows-874".equals(str)) {
            textInputCharset = "THAI_CHARSET";
        } else {
            textInputCharset = "DEFAULT_CHARSET";
        }
    }

    @Override // sun.awt.FontConfiguration
    public Charset getDefaultFontCharset(String str) {
        return new WDefaultFontCharset(str);
    }

    @Override // sun.awt.FontConfiguration
    public String getEncoding(String str, String str2) {
        String str3 = subsetEncodingMap.get(str2);
        return str3 == null ? "default" : str3;
    }

    @Override // sun.awt.FontConfiguration
    public String getFaceNameFromComponentFontName(String str) {
        return str;
    }

    @Override // sun.awt.FontConfiguration
    public String getFallbackFamilyName(String str, String str2) {
        String compatibilityFamilyName;
        return (!this.useCompatibilityFallbacks || (compatibilityFamilyName = getCompatibilityFamilyName(str)) == null) ? str2 : compatibilityFamilyName;
    }

    @Override // sun.awt.FontConfiguration
    public String getFileNameFromComponentFontName(String str) {
        return getFileNameFromPlatformName(str);
    }

    public String getTextComponentFontName(String str, int i) {
        FontDescriptor[] fontDescriptors = getFontDescriptors(str, i);
        String findFontWithCharset = findFontWithCharset(fontDescriptors, textInputCharset);
        if (findFontWithCharset == null && !textInputCharset.equals("DEFAULT_CHARSET")) {
            findFontWithCharset = findFontWithCharset(fontDescriptors, "DEFAULT_CHARSET");
        }
        if (findFontWithCharset == null) {
            return fontDescriptors.length > 0 ? fontDescriptors[0].getNativeName() : "Arial,ANSI_CHARSET";
        }
        return findFontWithCharset;
    }

    @Override // sun.awt.FontConfiguration
    public void initReorderMap() {
        if (FontConfiguration.encoding.equalsIgnoreCase("windows-31j")) {
            Hashtable<String, String> hashtable = new Hashtable<>();
            FontConfiguration.localeMap = hashtable;
            hashtable.put("dialoginput.plain.japanese", "MS Mincho");
            FontConfiguration.localeMap.put("dialoginput.bold.japanese", "MS Mincho");
            FontConfiguration.localeMap.put("dialoginput.italic.japanese", "MS Mincho");
            FontConfiguration.localeMap.put("dialoginput.bolditalic.japanese", "MS Mincho");
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        this.reorderMap = hashMap;
        hashMap.put("UTF-8.hi", "devanagari");
        this.reorderMap.put("windows-1255", LocalePreferences.CalendarType.HEBREW);
        this.reorderMap.put("x-windows-874", "thai");
        this.reorderMap.put("windows-31j", "japanese");
        this.reorderMap.put("x-windows-949", "korean");
        this.reorderMap.put(TTFFont.CHARSET_GBK, "chinese-ms936");
        this.reorderMap.put(TTFFont.CHARSET_GB18030, "chinese-gb18030");
        this.reorderMap.put("x-windows-950", "chinese-ms950");
        this.reorderMap.put("x-MS950-HKSCS", split("chinese-ms950,chinese-hkscs"));
    }

    @Override // sun.awt.FontConfiguration
    public String makeAWTFontName(String str, String str2) {
        String str3 = subsetCharsetMap.get(str2);
        if (str3 == null) {
            str3 = "DEFAULT_CHARSET";
        }
        return str + "," + str3;
    }

    @Override // sun.awt.FontConfiguration
    public void setOsNameAndVersion() {
        super.setOsNameAndVersion();
        if (FontConfiguration.osName.startsWith(SystemUtils.f107420a)) {
            int indexOf = FontConfiguration.osName.indexOf(32);
            if (indexOf == -1) {
                FontConfiguration.osName = null;
            } else {
                int i = indexOf + 1;
                int indexOf2 = FontConfiguration.osName.indexOf(32, i);
                if (indexOf2 == -1) {
                    FontConfiguration.osName = FontConfiguration.osName.substring(i);
                } else {
                    FontConfiguration.osName = FontConfiguration.osName.substring(i, indexOf2);
                }
            }
            FontConfiguration.osVersion = null;
        }
    }

    public WFontConfiguration(SunFontManager sunFontManager, boolean z, boolean z2) {
        super(sunFontManager, z, z2);
        this.useCompatibilityFallbacks = "windows-1252".equals(FontConfiguration.encoding);
    }
}
