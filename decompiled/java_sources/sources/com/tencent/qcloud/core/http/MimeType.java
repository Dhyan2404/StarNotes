package com.tencent.qcloud.core.http;

import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.google.android.exoplayer2.util.ColorParser;
import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.poi.openxml4j.opc.ContentTypes;

/* loaded from: classes10.dex */
public final class MimeType {
    private static final Map<String, String> mimeTypes;

    static {
        HashMap hashMap = new HashMap();
        mimeTypes = hashMap;
        hashMap.put(FileExtensionUtils.EXTENSION_TYPE_BIN, "application/octet-stream");
        hashMap.put(FileTypeConstant.BMP, "image/bmp");
        hashMap.put("cgm", "image/cgm");
        hashMap.put("djv", "image/vnd.djvu");
        hashMap.put(FileTypeConstant.DJVU, "image/vnd.djvu");
        hashMap.put("gif", "image/gif");
        hashMap.put(FileTypeConstant.ICO, "image/x-icon");
        hashMap.put("ief", "image/ief");
        hashMap.put("jp2", "image/jp2");
        hashMap.put("jpe", "image/jpeg");
        hashMap.put("jpeg", "image/jpeg");
        hashMap.put("jpg", "image/jpeg");
        hashMap.put(CloudStorageConstants.MAC_TAG, "image/x-macpaint");
        hashMap.put("pbm", "image/x-portable-bitmap");
        hashMap.put("pct", "image/pict");
        hashMap.put("pgm", "image/x-portable-graymap");
        hashMap.put("pic", "image/pict");
        hashMap.put(ContentTypes.EXTENSION_PICT, "image/pict");
        hashMap.put("png", "image/png");
        hashMap.put("pnm", "image/x-portable-anymap");
        hashMap.put("pnt", "image/x-macpaint");
        hashMap.put("pntg", "image/x-macpaint");
        hashMap.put("ppm", "image/x-portable-pixmap");
        hashMap.put("qti", "image/x-quicktime");
        hashMap.put("qtif", "image/x-quicktime");
        hashMap.put("ras", "image/x-cmu-raster");
        hashMap.put(ColorParser.f28273a, "image/x-rgb");
        hashMap.put(FileTypeConstant.SVG, "image/svg+xml");
        hashMap.put(FileTypeConstant.TIF, ContentTypes.IMAGE_TIFF);
        hashMap.put("tiff", ContentTypes.IMAGE_TIFF);
        hashMap.put("wbmp", Downsampler.f15031g);
        hashMap.put("xbm", "image/x-xbitmap");
        hashMap.put("xpm", "image/x-xpixmap");
        hashMap.put("xwd", "image/x-xwindowdump");
    }

    public static String getTypeByFileName(String str) {
        if (str == null) {
            return null;
        }
        String substring = str.lastIndexOf(".") != -1 ? str.substring(str.lastIndexOf(".") + 1, str.length()) : "";
        Map<String, String> map = mimeTypes;
        String str2 = map.get(substring.toLowerCase(Locale.ROOT));
        return str2 == null ? map.get(FileExtensionUtils.EXTENSION_TYPE_BIN) : str2;
    }
}
