package org.apache.commons.compress.utils;

import java.io.File;
import java.nio.file.Path;

/* loaded from: classes12.dex */
public class FileNameUtils {
    /* renamed from: a */
    public static String m67161a(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf < 0 ? str : str.substring(0, lastIndexOf);
    }

    /* renamed from: b */
    public static String m67162b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf < 0 ? "" : str.substring(lastIndexOf + 1);
    }

    public static String getBaseName(Path path) {
        if (path == null) {
            return null;
        }
        return m67161a(path.getFileName().toString());
    }

    public static String getExtension(Path path) {
        if (path == null) {
            return null;
        }
        return m67162b(path.getFileName().toString());
    }

    public static String getBaseName(String str) {
        if (str == null) {
            return null;
        }
        return m67161a(new File(str).getName());
    }

    public static String getExtension(String str) {
        if (str == null) {
            return null;
        }
        return m67162b(new File(str).getName());
    }
}
