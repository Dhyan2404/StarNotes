package org.apache.commons.compress.compressors.gzip;

import java.util.LinkedHashMap;
import org.apache.commons.compress.compressors.FileNameUtil;

/* loaded from: classes12.dex */
public class GzipUtils {

    /* renamed from: a */
    public static final FileNameUtil f106170a;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(".tgz", ".tar");
        linkedHashMap.put(".taz", ".tar");
        linkedHashMap.put(".svgz", ".svg");
        linkedHashMap.put(".cpgz", ".cpio");
        linkedHashMap.put(".wmz", ".wmf");
        linkedHashMap.put(".emz", ".emf");
        linkedHashMap.put(".gz", "");
        linkedHashMap.put(".z", "");
        linkedHashMap.put("-gz", "");
        linkedHashMap.put("-z", "");
        linkedHashMap.put("_z", "");
        f106170a = new FileNameUtil(linkedHashMap, ".gz");
    }

    public static String getCompressedFilename(String str) {
        return f106170a.getCompressedFilename(str);
    }

    public static String getUncompressedFilename(String str) {
        return f106170a.getUncompressedFilename(str);
    }

    public static boolean isCompressedFilename(String str) {
        return f106170a.isCompressedFilename(str);
    }
}
