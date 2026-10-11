package org.apache.poi.hwpf.converter;

import org.apache.poi.hwpf.converter.FontReplacer;

/* loaded from: classes12.dex */
public class DefaultFontReplacer implements FontReplacer {
    private static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    private static boolean isNotEmpty(String str) {
        return !isEmpty(str);
    }

    private static String substringBeforeLast(String str, String str2) {
        int lastIndexOf;
        return (isEmpty(str) || isEmpty(str2) || (lastIndexOf = str.lastIndexOf(str2)) == -1) ? str : str.substring(0, lastIndexOf);
    }

    @Override // org.apache.poi.hwpf.converter.FontReplacer
    public FontReplacer.Triplet update(FontReplacer.Triplet triplet) {
        if (isNotEmpty(triplet.fontName)) {
            String str = triplet.fontName;
            if (str.endsWith(" Regular")) {
                str = substringBeforeLast(str, " Regular");
            }
            if (str.endsWith(" Полужирный")) {
                str = substringBeforeLast(str, " Полужирный") + " Bold";
            }
            if (str.endsWith(" Полужирный Курсив")) {
                str = substringBeforeLast(str, " Полужирный Курсив") + " Bold Italic";
            }
            if (str.endsWith(" Курсив")) {
                str = substringBeforeLast(str, " Курсив") + " Italic";
            }
            triplet.fontName = str;
        }
        if (isNotEmpty(triplet.fontName)) {
            if ("Times Regular".equals(triplet.fontName) || "Times-Regular".equals(triplet.fontName) || "Times Roman".equals(triplet.fontName)) {
                triplet.fontName = "Times";
                triplet.bold = false;
                triplet.italic = false;
            }
            if ("Times Bold".equals(triplet.fontName) || "Times-Bold".equals(triplet.fontName)) {
                triplet.fontName = "Times";
                triplet.bold = true;
                triplet.italic = false;
            }
            if ("Times Italic".equals(triplet.fontName) || "Times-Italic".equals(triplet.fontName)) {
                triplet.fontName = "Times";
                triplet.bold = false;
                triplet.italic = true;
            }
            if ("Times Bold Italic".equals(triplet.fontName) || "Times-BoldItalic".equals(triplet.fontName)) {
                triplet.fontName = "Times";
                triplet.bold = true;
                triplet.italic = true;
            }
        }
        return triplet;
    }
}
