package com.onyx.android.sdk.matisse;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.collection.ArraySet;
import com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.matisse.internal.utils.PhotoMetadataUtils;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes7.dex */
public enum MimeType {
    JPEG("image/jpeg", arraySetOf("jpg", "jpeg")),
    PNG("image/png", arraySetOf("png")),
    GIF("image/gif", arraySetOf("gif")),
    BMP("image/x-ms-bmp", arraySetOf(FileTypeConstant.BMP)),
    WEBP("image/webp", arraySetOf("webp")),
    MPEG(MimeTypes.VIDEO_MPEG, arraySetOf(FileTypeConstant.MPEG, "mpg")),
    MP4("video/mp4", arraySetOf(FileTypeConstant.MP4, "m4v")),
    QUICKTIME("video/quicktime", arraySetOf(FileTypeConstant.MOV)),
    THREEGPP(MimeTypes.VIDEO_H263, arraySetOf("3gp", "3gpp")),
    THREEGPP2("video/3gpp2", arraySetOf("3g2", "3gpp2")),
    MKV(MimeTypes.VIDEO_MATROSKA, arraySetOf("mkv")),
    WEBM(MimeTypes.VIDEO_WEBM, arraySetOf(MatroskaExtractor.f23794h0)),
    TS("video/mp2ts", arraySetOf("ts")),
    AVI("video/avi", arraySetOf(FileTypeConstant.AVI));

    private final Set<String> mExtensions;
    private final String mMimeTypeName;

    MimeType(String str, Set set) {
        this.mMimeTypeName = str;
        this.mExtensions = set;
    }

    private static Set<String> arraySetOf(String... strArr) {
        return new ArraySet(Arrays.asList(strArr));
    }

    public static boolean isGif(String str) {
        if (str == null) {
            return false;
        }
        return str.equals(GIF.toString());
    }

    public static boolean isImage(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("image");
    }

    public static boolean isVideo(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("video");
    }

    /* renamed from: of */
    public static Set<MimeType> m33410of(MimeType mimeType, MimeType... mimeTypeArr) {
        return EnumSet.of(mimeType, mimeTypeArr);
    }

    public static Set<MimeType> ofAll() {
        return EnumSet.allOf(MimeType.class);
    }

    public static Set<MimeType> ofGif() {
        return ofImage(true);
    }

    public static Set<MimeType> ofImage() {
        return EnumSet.of(JPEG, PNG, BMP, WEBP);
    }

    public static Set<MimeType> ofVideo() {
        return EnumSet.of(MPEG, MP4, QUICKTIME, THREEGPP, THREEGPP2, MKV, WEBM, TS, AVI);
    }

    public boolean checkType(ContentResolver contentResolver, Uri uri) {
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        if (uri == null) {
            return false;
        }
        String extensionFromMimeType = singleton.getExtensionFromMimeType(contentResolver.getType(uri));
        String str = null;
        boolean z = false;
        for (String str2 : this.mExtensions) {
            if (str2.equals(extensionFromMimeType)) {
                return true;
            }
            if (!z) {
                str = PhotoMetadataUtils.getPath(contentResolver, uri);
                if (!TextUtils.isEmpty(str)) {
                    str = str.toLowerCase(Locale.US);
                }
                z = true;
            }
            if (str != null && str.endsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mMimeTypeName;
    }

    public static Set<MimeType> ofImage(boolean z) {
        return EnumSet.of(GIF);
    }
}
