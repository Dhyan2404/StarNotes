package org.apache.commons.compress.compressors.bzip2;

import java.util.LinkedHashMap;
import org.apache.commons.compress.compressors.FileNameUtil;

/* loaded from: classes12.dex */
public abstract class BZip2Utils {

    /* renamed from: a */
    public static final FileNameUtil f106070a;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(".tar.bz2", ".tar");
        linkedHashMap.put(".tbz2", ".tar");
        linkedHashMap.put(".tbz", ".tar");
        linkedHashMap.put(".bz2", "");
        linkedHashMap.put(".bz", "");
        f106070a = new FileNameUtil(linkedHashMap, ".bz2");
    }

    public static String getCompressedFilename(String str) {
        return f106070a.getCompressedFilename(str);
    }

    public static String getUncompressedFilename(String str) {
        return f106070a.getUncompressedFilename(str);
    }

    public static boolean isCompressedFilename(String str) {
        return f106070a.isCompressedFilename(str);
    }
}
