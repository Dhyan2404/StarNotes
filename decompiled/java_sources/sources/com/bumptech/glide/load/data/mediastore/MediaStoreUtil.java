package com.bumptech.glide.load.data.mediastore;

import android.net.Uri;
import com.caverock.androidsvg.SVGParser;

/* loaded from: classes3.dex */
public final class MediaStoreUtil {

    /* renamed from: a */
    public static final int f14518a = 512;

    /* renamed from: b */
    public static final int f14519b = 384;

    /* renamed from: a */
    public static boolean m8685a(Uri uri) {
        return uri.getPathSegments().contains("video");
    }

    public static boolean isMediaStoreImageUri(Uri uri) {
        return isMediaStoreUri(uri) && !m8685a(uri);
    }

    public static boolean isMediaStoreUri(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && SVGParser.f16046r.equals(uri.getAuthority());
    }

    public static boolean isMediaStoreVideoUri(Uri uri) {
        return isMediaStoreUri(uri) && m8685a(uri);
    }

    public static boolean isThumbnailSize(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384;
    }
}
