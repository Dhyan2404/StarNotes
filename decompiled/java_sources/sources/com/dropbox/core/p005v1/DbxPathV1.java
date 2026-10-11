package com.dropbox.core.p005v1;

import com.dropbox.core.util.StringUtil;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;

/* loaded from: classes4.dex */
public class DbxPathV1 {
    public static void checkArg(String str, String str2) {
        if (str2 == null) {
            throw new IllegalArgumentException(CloudStorageConstants.SINGLE_QUOTES + str + "' should not be null");
        }
        String findError = findError(str2);
        if (findError == null) {
            return;
        }
        throw new IllegalArgumentException(CloudStorageConstants.SINGLE_QUOTES + str + "': bad path: " + findError + ": " + StringUtil.m10140jq(str2));
    }

    public static void checkArgNonRoot(String str, String str2) {
        if (!"/".equals(str2)) {
            checkArg(str, str2);
            return;
        }
        throw new IllegalArgumentException(CloudStorageConstants.SINGLE_QUOTES + str + "' should not be the root path (\"/\")");
    }

    public static String findError(String str) {
        if (!str.startsWith("/")) {
            return "must start with \"/\"";
        }
        if (str.length() != 1 && str.endsWith("/")) {
            return "must not end with \"/\"";
        }
        return null;
    }

    public static String getName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("'path' can't be null");
        }
        if (!str.startsWith("/")) {
            throw new IllegalArgumentException("Not a valid path.  Doesn't start with a \"/\": \"" + str + "\"");
        }
        if (str.length() <= 1 || !str.endsWith("/")) {
            int length = str.length() - 1;
            while (str.charAt(length) != '/') {
                length--;
            }
            return str.substring(length + 1);
        }
        throw new IllegalArgumentException("Not a valid path.  Ends with a \"/\": \"" + str + "\"");
    }

    public static String getParent(String str) {
        if (str == null) {
            throw new IllegalArgumentException("'path' can't be null");
        }
        if (!str.startsWith("/")) {
            throw new IllegalArgumentException("Not a valid path.  Doesn't start with a \"/\": \"" + str + "\"");
        }
        if (str.length() <= 1 || !str.endsWith("/")) {
            int lastIndexOf = str.lastIndexOf("/");
            if (str.length() == 1) {
                return null;
            }
            return lastIndexOf == 0 ? "/" : str.substring(0, lastIndexOf);
        }
        throw new IllegalArgumentException("Not a valid path.  Ends with a \"/\": \"" + str + "\"");
    }

    public static boolean isValid(String str) {
        return findError(str) == null;
    }

    public static String[] split(String str) {
        if (str == null) {
            throw new IllegalArgumentException("'path' can't be null");
        }
        if (!str.startsWith("/")) {
            throw new IllegalArgumentException("Not a valid path.  Doesn't start with a \"/\": \"" + str + "\"");
        }
        if (str.length() <= 1 || !str.endsWith("/")) {
            return str.length() == 1 ? new String[0] : str.substring(1).split("/");
        }
        throw new IllegalArgumentException("Not a valid path.  Ends with a \"/\": \"" + str + "\"");
    }
}
