package org.apache.poi.hssf.usermodel;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;

/* loaded from: classes12.dex */
public class FontDetails {
    private String _fontName;
    private int _height;
    private final Map<Character, Integer> charWidths = new HashMap();

    public FontDetails(String str, int i) {
        this._fontName = str;
        this._height = i;
    }

    public static String buildFontCharactersProperty(String str) {
        return "font." + str + ".characters";
    }

    public static String buildFontHeightProperty(String str) {
        return "font." + str + ".height";
    }

    public static String buildFontWidthsProperty(String str) {
        return "font." + str + ".widths";
    }

    public static FontDetails create(String str, Properties properties) {
        String property = properties.getProperty(buildFontHeightProperty(str));
        String property2 = properties.getProperty(buildFontWidthsProperty(str));
        String property3 = properties.getProperty(buildFontCharactersProperty(str));
        if (property == null || property2 == null || property3 == null) {
            throw new IllegalArgumentException("The supplied FontMetrics doesn't know about the font '" + str + "', so we can't use it. Please add it to your font metrics file (see StaticFontMetrics.getFontDetails");
        }
        FontDetails fontDetails = new FontDetails(str, Integer.parseInt(property));
        String[] split = split(property3, ",", -1);
        String[] split2 = split(property2, ",", -1);
        if (split.length != split2.length) {
            throw new IllegalStateException("Number of characters does not number of widths for font " + str);
        }
        for (int i = 0; i < split2.length; i++) {
            if (split[i].length() != 0) {
                fontDetails.addChar(split[i].charAt(0), Integer.parseInt(split2[i]));
            }
        }
        return fontDetails;
    }

    private static String[] split(String str, String str2, int i) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
        int countTokens = stringTokenizer.countTokens();
        if (i != -1 && countTokens > i) {
            countTokens = i;
        }
        String[] strArr = new String[countTokens];
        int i2 = 0;
        while (true) {
            if (!stringTokenizer.hasMoreTokens()) {
                break;
            }
            if (i == -1 || i2 != countTokens - 1) {
                strArr[i2] = stringTokenizer.nextToken().trim();
                i2++;
            } else {
                StringBuilder sb = new StringBuilder((str.length() * (countTokens - i2)) / countTokens);
                while (stringTokenizer.hasMoreTokens()) {
                    sb.append(stringTokenizer.nextToken());
                    if (stringTokenizer.hasMoreTokens()) {
                        sb.append(str2);
                    }
                }
                strArr[i2] = sb.toString().trim();
            }
        }
        return strArr;
    }

    public void addChar(char c, int i) {
        this.charWidths.put(Character.valueOf(c), Integer.valueOf(i));
    }

    public void addChars(char[] cArr, int[] iArr) {
        for (int i = 0; i < cArr.length; i++) {
            this.charWidths.put(Character.valueOf(cArr[i]), Integer.valueOf(iArr[i]));
        }
    }

    public int getCharWidth(char c) {
        Integer num = this.charWidths.get(Character.valueOf(c));
        if (num != null) {
            return num.intValue();
        }
        if ('W' == c) {
            return 0;
        }
        return getCharWidth('W');
    }

    public String getFontName() {
        return this._fontName;
    }

    public int getHeight() {
        return this._height;
    }

    public int getStringWidth(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            i += getCharWidth(str.charAt(i2));
        }
        return i;
    }
}
