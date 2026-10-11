package org.apache.poi.ss.util;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;

/* loaded from: classes13.dex */
public class WorkbookUtil {
    public static String createSafeSheetName(String str) {
        return createSafeSheetName(str, ' ');
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0025. Please report as an issue. */
    public static void validateSheetName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("sheetName must not be null");
        }
        int length = str.length();
        if (length < 1 || length > 31) {
            throw new IllegalArgumentException("sheetName '" + str + "' is invalid - character count MUST be greater than or equal to 1 and less than or equal to 31");
        }
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != '*' && charAt != '/' && charAt != ':' && charAt != '?') {
                switch (charAt) {
                    case '[':
                    case '\\':
                    case ']':
                        break;
                    default:
                }
            }
            throw new IllegalArgumentException("Invalid char (" + charAt + ") found at index (" + i + ") in sheet name '" + str + CloudStorageConstants.SINGLE_QUOTES);
        }
        if (str.charAt(0) == '\'' || str.charAt(length - 1) == '\'') {
            throw new IllegalArgumentException("Invalid sheet name '" + str + "'. Sheet names must not begin or end with (').");
        }
    }

    public static String createSafeSheetName(String str, char c) {
        if (str == null) {
            return "null";
        }
        if (str.length() < 1) {
            return Constants.ELEMNAME_EMPTY_STRING;
        }
        int min = Math.min(31, str.length());
        StringBuilder sb = new StringBuilder(str.substring(0, min));
        for (int i = 0; i < min; i++) {
            char charAt = sb.charAt(i);
            if (charAt != 0 && charAt != 3) {
                if (charAt != '\'') {
                    if (charAt != '*' && charAt != '/' && charAt != ':' && charAt != '?') {
                        switch (charAt) {
                        }
                    }
                } else if (i == 0 || i == min - 1) {
                    sb.setCharAt(i, c);
                }
            }
            sb.setCharAt(i, c);
        }
        return sb.toString();
    }
}
