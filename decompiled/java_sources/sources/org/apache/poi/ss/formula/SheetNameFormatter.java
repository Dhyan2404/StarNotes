package org.apache.poi.ss.formula;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.poi.ss.SpreadsheetVersion;
import org.apache.poi.ss.util.CellReference;

/* loaded from: classes13.dex */
public final class SheetNameFormatter {
    private static final Pattern CELL_REF_PATTERN = Pattern.compile("([A-Za-z]+)([0-9]+)");
    private static final char DELIMITER = '\'';

    private SheetNameFormatter() {
    }

    public static void appendAndEscape(Appendable appendable, String str) {
        try {
            if (str == null) {
                appendable.append("#REF");
                return;
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt == '\'') {
                    appendable.append('\'');
                }
                appendable.append(charAt);
            }
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    public static void appendFormat(Appendable appendable, String str) {
        try {
            if (needsDelimiting(str)) {
                appendable.append('\'');
                appendAndEscape(appendable, str);
                appendable.append('\'');
                return;
            }
            appendAndEscape(appendable, str);
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    private static void appendOrREF(Appendable appendable, String str) throws IOException {
        if (str == null) {
            appendable.append("#REF");
        } else {
            appendable.append(str);
        }
    }

    public static boolean cellReferenceIsWithinRange(String str, String str2) {
        return CellReference.cellReferenceIsWithinRange(str, str2, SpreadsheetVersion.EXCEL97);
    }

    public static String format(String str) {
        StringBuilder sb = new StringBuilder((str == null ? 0 : str.length()) + 2);
        appendFormat(sb, str);
        return sb.toString();
    }

    public static boolean isSpecialChar(char c) {
        if (Character.isLetterOrDigit(c)) {
            return false;
        }
        if (c != '\t' && c != '\n' && c != '\r') {
            return (c == '.' || c == '_') ? false : true;
        }
        throw new IllegalStateException("Illegal character (0x" + Integer.toHexString(c) + ") found in sheet name");
    }

    private static boolean nameLooksLikeBooleanLiteral(String str) {
        char charAt = str.charAt(0);
        if (charAt != 'F') {
            if (charAt != 'T') {
                if (charAt != 'f') {
                    if (charAt != 't') {
                        return false;
                    }
                }
            }
            return "TRUE".equalsIgnoreCase(str);
        }
        return "FALSE".equalsIgnoreCase(str);
    }

    public static boolean nameLooksLikePlainCellReference(String str) {
        Matcher matcher = CELL_REF_PATTERN.matcher(str);
        if (matcher.matches()) {
            return cellReferenceIsWithinRange(matcher.group(1), matcher.group(2));
        }
        return false;
    }

    public static boolean needsDelimiting(String str) {
        int length;
        if (str == null || (length = str.length()) < 1) {
            return false;
        }
        if (Character.isDigit(str.charAt(0))) {
            return true;
        }
        for (int i = 0; i < length; i++) {
            if (isSpecialChar(str.charAt(i))) {
                return true;
            }
        }
        return (Character.isLetter(str.charAt(0)) && Character.isDigit(str.charAt(length - 1)) && nameLooksLikePlainCellReference(str)) || nameLooksLikeBooleanLiteral(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0016 A[Catch: Exception -> 0x0044, TryCatch #0 {Exception -> 0x0044, blocks: (B:2:0x0000, B:4:0x0006, B:10:0x0016, B:13:0x0037), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0037 A[Catch: Exception -> 0x0044, TRY_LEAVE, TryCatch #0 {Exception -> 0x0044, blocks: (B:2:0x0000, B:4:0x0006, B:10:0x0016, B:13:0x0037), top: B:1:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void appendFormat(java.lang.Appendable r4, java.lang.String r5, java.lang.String r6) {
        /*
            boolean r0 = needsDelimiting(r5)     // Catch: java.lang.Exception -> L44
            if (r0 != 0) goto Lf
            boolean r0 = needsDelimiting(r6)     // Catch: java.lang.Exception -> L44
            if (r0 == 0) goto Ld
            goto Lf
        Ld:
            r0 = 0
            goto L10
        Lf:
            r0 = 1
        L10:
            r1 = 93
            r2 = 91
            if (r0 == 0) goto L37
            r0 = 39
            r4.append(r0)     // Catch: java.lang.Exception -> L44
            r4.append(r2)     // Catch: java.lang.Exception -> L44
            r3 = 40
            java.lang.String r5 = r5.replace(r2, r3)     // Catch: java.lang.Exception -> L44
            r2 = 41
            java.lang.String r5 = r5.replace(r1, r2)     // Catch: java.lang.Exception -> L44
            appendAndEscape(r4, r5)     // Catch: java.lang.Exception -> L44
            r4.append(r1)     // Catch: java.lang.Exception -> L44
            appendAndEscape(r4, r6)     // Catch: java.lang.Exception -> L44
            r4.append(r0)     // Catch: java.lang.Exception -> L44
            goto L43
        L37:
            r4.append(r2)     // Catch: java.lang.Exception -> L44
            appendOrREF(r4, r5)     // Catch: java.lang.Exception -> L44
            r4.append(r1)     // Catch: java.lang.Exception -> L44
            appendOrREF(r4, r6)     // Catch: java.lang.Exception -> L44
        L43:
            return
        L44:
            r4 = move-exception
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            r5.<init>(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.formula.SheetNameFormatter.appendFormat(java.lang.Appendable, java.lang.String, java.lang.String):void");
    }
}
