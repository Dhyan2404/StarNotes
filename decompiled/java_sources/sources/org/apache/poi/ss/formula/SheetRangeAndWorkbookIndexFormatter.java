package org.apache.poi.ss.formula;

import org.apache.logging.log4j.util.Chars;

/* loaded from: classes13.dex */
public class SheetRangeAndWorkbookIndexFormatter {
    private SheetRangeAndWorkbookIndexFormatter() {
    }

    private static boolean anySheetNameNeedsEscaping(String str, String str2) {
        return SheetNameFormatter.needsDelimiting(str) | SheetNameFormatter.needsDelimiting(str2);
    }

    public static String format(StringBuilder sb, int i, String str, String str2) {
        return anySheetNameNeedsEscaping(str, str2) ? formatWithDelimiting(sb, i, str, str2) : formatWithoutDelimiting(sb, i, str, str2);
    }

    private static String formatWithDelimiting(StringBuilder sb, int i, String str, String str2) {
        sb.append(Chars.QUOTE);
        if (i >= 0) {
            sb.append('[');
            sb.append(i);
            sb.append(']');
        }
        SheetNameFormatter.appendAndEscape(sb, str);
        if (str2 != null) {
            sb.append(':');
            SheetNameFormatter.appendAndEscape(sb, str2);
        }
        sb.append(Chars.QUOTE);
        return sb.toString();
    }

    private static String formatWithoutDelimiting(StringBuilder sb, int i, String str, String str2) {
        if (i >= 0) {
            sb.append('[');
            sb.append(i);
            sb.append(']');
        }
        sb.append(str);
        if (str2 != null) {
            sb.append(':');
            sb.append(str2);
        }
        return sb.toString();
    }
}
