package org.apache.poi.util;

import java.awt.Color;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.sl.usermodel.PresetColor;

/* loaded from: classes13.dex */
public class ColorUtils {
    public static Color decode(String str) {
        return decode(str, Color.BLACK);
    }

    public static Color decode(String str, Color color) {
        if (StringUtils.isNullOrEmpty(str)) {
            return color;
        }
        if (str.charAt(0) != '#') {
            PresetColor valueOfOoxmlId = PresetColor.valueOfOoxmlId(str);
            return valueOfOoxmlId == null ? color : valueOfOoxmlId.color;
        }
        try {
            return Color.decode(str);
        } catch (NumberFormatException unused) {
            int indexOf = str.indexOf(32);
            return indexOf > 0 ? Color.decode(str.substring(0, indexOf)) : color;
        } catch (Exception unused2) {
            return color;
        }
    }

    public static String decode(byte[] bArr, String str) {
        if (WordToHtmlUtils.isNull(bArr) || bArr.length < 3) {
            return str;
        }
        return "#" + HexDump.toHex(bArr[0]) + HexDump.toHex(bArr[1]) + HexDump.toHex(bArr[2]);
    }

    public static Color decode(byte[] bArr, Color color) {
        return (WordToHtmlUtils.isNull(bArr) || bArr.length < 3) ? color : new Color((int) bArr[0], (int) bArr[1], (int) bArr[2]);
    }
}
