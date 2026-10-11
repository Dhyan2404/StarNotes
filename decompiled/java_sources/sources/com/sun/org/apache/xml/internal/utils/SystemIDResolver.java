package com.sun.org.apache.xml.internal.utils;

import com.sun.org.apache.xml.internal.utils.URI;
import java.io.File;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class SystemIDResolver {
    private static String getAbsolutePathFromRelativePath(String str) {
        return new File(str).getAbsolutePath();
    }

    public static String getAbsoluteURI(String str) {
        int indexOf;
        if (isAbsoluteURI(str)) {
            if (!str.startsWith("file:")) {
                return str;
            }
            String substring = str.substring(5);
            if (substring != null && substring.startsWith("/")) {
                if ((substring.startsWith("///") || !substring.startsWith("//")) && (indexOf = str.indexOf(58, 5)) > 0) {
                    int i = indexOf - 1;
                    String substring2 = str.substring(i);
                    try {
                        if (!isAbsolutePath(substring2)) {
                            str = str.substring(0, i) + getAbsolutePathFromRelativePath(substring2);
                        }
                    } catch (SecurityException unused) {
                        return str;
                    }
                }
                return replaceChars(str);
            }
            return getAbsoluteURIFromRelative(str.substring(5));
        }
        return getAbsoluteURIFromRelative(str);
    }

    public static String getAbsoluteURIFromRelative(String str) {
        String absolutePathFromRelativePath;
        String str2;
        if (str == null || str.length() == 0) {
            return "";
        }
        if (isAbsolutePath(str)) {
            absolutePathFromRelativePath = str;
        } else {
            try {
                absolutePathFromRelativePath = getAbsolutePathFromRelativePath(str);
            } catch (SecurityException unused) {
                return "file:" + str;
            }
        }
        if (absolutePathFromRelativePath == null) {
            str2 = "file:" + str;
        } else if (absolutePathFromRelativePath.startsWith(File.separator)) {
            str2 = "file://" + absolutePathFromRelativePath;
        } else {
            str2 = "file:///" + absolutePathFromRelativePath;
        }
        return replaceChars(str2);
    }

    public static boolean isAbsolutePath(String str) {
        if (str == null) {
            return false;
        }
        return new File(str).isAbsolute();
    }

    public static boolean isAbsoluteURI(String str) {
        if (isWindowsAbsolutePath(str)) {
            return false;
        }
        int indexOf = str.indexOf(35);
        int indexOf2 = str.indexOf(63);
        int indexOf3 = str.indexOf(47);
        int indexOf4 = str.indexOf(58);
        int length = str.length() - 1;
        if (indexOf <= 0) {
            indexOf = length;
        }
        if (indexOf2 <= 0 || indexOf2 >= indexOf) {
            indexOf2 = indexOf;
        }
        if (indexOf3 <= 0 || indexOf3 >= indexOf2) {
            indexOf3 = indexOf2;
        }
        return indexOf4 > 0 && indexOf4 < indexOf3;
    }

    private static boolean isWindowsAbsolutePath(String str) {
        return isAbsolutePath(str) && str.length() > 2 && str.charAt(1) == ':' && Character.isLetter(str.charAt(0)) && (str.charAt(2) == '\\' || str.charAt(2) == '/');
    }

    private static String replaceChars(String str) {
        StringBuffer stringBuffer = new StringBuffer(str);
        int length = stringBuffer.length();
        int i = 0;
        while (i < length) {
            char charAt = stringBuffer.charAt(i);
            if (charAt == ' ') {
                stringBuffer.setCharAt(i, '%');
                stringBuffer.insert(i + 1, "20");
                length += 2;
                i += 2;
            } else if (charAt == '\\') {
                stringBuffer.setCharAt(i, '/');
            }
            i++;
        }
        return stringBuffer.toString();
    }

    public static String getAbsoluteURI(String str, String str2) throws TransformerException {
        if (str2 == null) {
            return getAbsoluteURI(str);
        }
        try {
            return replaceChars(new URI(new URI(getAbsoluteURI(str2)), str).toString());
        } catch (URI.MalformedURIException e) {
            throw new TransformerException(e);
        }
    }
}
