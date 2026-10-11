package com.onyx.android.sdk.base.utils;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.onyx.android.sdk.base.common.CommonConstant;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\tJ\u0010\u0010\u000e\u001a\u00020\u000f2\b\u0010\r\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0010\u001a\u00020\u000f2\b\u0010\r\u001a\u0004\u0018\u00010\u0004J\u0012\u0010\u0011\u001a\u00020\u0012*\u00020\t2\u0006\u0010\u0013\u001a\u00020\fJ4\u0010\u0014\u001a\u0004\u0018\u00010\f*\u00020\t2\u0006\u0010\u0015\u001a\u00020\f2\b\b\u0002\u0010\u0016\u001a\u00020\u00042\u0014\b\u0002\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u0018J\n\u0010\u0019\u001a\u00020\u0004*\u00020\tJ\n\u0010\u001a\u001a\u00020\u0004*\u00020\tJ\n\u0010\u000e\u001a\u00020\u000f*\u00020\tJ\f\u0010\u001b\u001a\u00020\u000f*\u0004\u0018\u00010\tJ\f\u0010\u001c\u001a\u00020\u000f*\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/UriUtils;", "", "()V", "FILE_ASSET_URI", "", "PATH_ASSET_URI_PREFIX", "SCHEME_HTTP", "SCHEME_HTTPS", "assetFileUri", "Landroid/net/Uri;", HuaweiYunQueryArgs.FILE_NAME, "copyUri2Cache", "Ljava/io/File;", "uri", "isFileUri", "", "isWebsiteUri", "copyToFile", "", "dst", "copyToFileWithCheck", CouchFieldKey.KEY_DIR, "extension", "fileRepeatCheck", "Lkotlin/Function1;", "getExtensionName", "getMimeType", "isImageContent", "isWebsiteOrFile", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class UriUtils {

    @NotNull
    public static final String FILE_ASSET_URI = "file:///android_asset/";

    @NotNull
    public static final UriUtils INSTANCE = new UriUtils();

    @NotNull
    public static final String PATH_ASSET_URI_PREFIX = "/android_asset/";

    @NotNull
    public static final String SCHEME_HTTP = "http";

    @NotNull
    public static final String SCHEME_HTTPS = "https";

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ File copyToFileWithCheck$default(UriUtils uriUtils, Uri uri, File file, String str, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        if ((i & 4) != 0) {
            function1 = new Function1<File, File>() { // from class: com.onyx.android.sdk.base.utils.UriUtils$copyToFileWithCheck$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final File invoke(@NotNull File it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return it2;
                }
            };
        }
        return uriUtils.copyToFileWithCheck(uri, file, str, function1);
    }

    @NotNull
    public final Uri assetFileUri(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Uri parse = Uri.parse("file:///android_asset/" + fileName);
        Intrinsics.checkNotNullExpressionValue(parse, "parse(...)");
        return parse;
    }

    public final void copyToFile(@NotNull Uri uri, @NotNull File dst) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        FileUtils.INSTANCE.copyInputStreamToFile(ResManager.INSTANCE.getAppContext().getContentResolver().openInputStream(uri), dst);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0037 A[Catch: Exception -> 0x00d5, TryCatch #0 {Exception -> 0x00d5, blocks: (B:3:0x0015, B:6:0x0025, B:8:0x002b, B:13:0x0037, B:15:0x0050, B:16:0x005d, B:17:0x0088, B:19:0x008e, B:24:0x0099, B:26:0x00b7, B:34:0x0063, B:36:0x006f), top: B:2:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e A[Catch: Exception -> 0x00d5, TryCatch #0 {Exception -> 0x00d5, blocks: (B:3:0x0015, B:6:0x0025, B:8:0x002b, B:13:0x0037, B:15:0x0050, B:16:0x005d, B:17:0x0088, B:19:0x008e, B:24:0x0099, B:26:0x00b7, B:34:0x0063, B:36:0x006f), top: B:2:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b7 A[Catch: Exception -> 0x00d5, TRY_LEAVE, TryCatch #0 {Exception -> 0x00d5, blocks: (B:3:0x0015, B:6:0x0025, B:8:0x002b, B:13:0x0037, B:15:0x0050, B:16:0x005d, B:17:0x0088, B:19:0x008e, B:24:0x0099, B:26:0x00b7, B:34:0x0063, B:36:0x006f), top: B:2:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d4 A[RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.File copyToFileWithCheck(@org.jetbrains.annotations.NotNull android.net.Uri r11, @org.jetbrains.annotations.NotNull java.io.File r12, @org.jetbrains.annotations.NotNull java.lang.String r13, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super java.io.File, ? extends java.io.File> r14) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.utils.UriUtils.copyToFileWithCheck(android.net.Uri, java.io.File, java.lang.String, kotlin.jvm.functions.Function1):java.io.File");
    }

    @Nullable
    public final File copyUri2Cache(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        File cacheDir = ResManager.INSTANCE.getAppContext().getCacheDir();
        Intrinsics.checkNotNullExpressionValue(cacheDir, "getCacheDir(...)");
        return copyToFileWithCheck$default(this, uri, cacheDir, null, null, 6, null);
    }

    @NotNull
    public final String getExtensionName(@NotNull Uri uri) {
        String str;
        String extensionFromMimeType;
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Context appContext = ResManager.INSTANCE.getAppContext();
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String scheme = uri.getScheme();
        if (scheme == null) {
            return "";
        }
        switch (scheme.hashCode()) {
            case -368816979:
                if (!scheme.equals(DefaultDataSource.f28026s)) {
                    return "";
                }
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(appContext, uri);
                String extensionFromMimeType2 = singleton.getExtensionFromMimeType(mediaMetadataRetriever.extractMetadata(12));
                return extensionFromMimeType2 == null ? "" : extensionFromMimeType2;
            case 3143036:
                if (!scheme.equals("file")) {
                    return "";
                }
                String uri2 = Uri.fromFile(new File(uri.getPath())).toString();
                Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
                String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(uri2);
                Intrinsics.checkNotNullExpressionValue(fileExtensionFromUrl, "getFileExtensionFromUrl(...)");
                return fileExtensionFromUrl;
            case 3213448:
                str = "http";
                break;
            case 99617003:
                str = "https";
                break;
            case 951530617:
                return (scheme.equals("content") && (extensionFromMimeType = singleton.getExtensionFromMimeType(appContext.getContentResolver().getType(uri))) != null) ? extensionFromMimeType : "";
            default:
                return "";
        }
        scheme.equals(str);
        return "";
    }

    @NotNull
    public final String getMimeType(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(getExtensionName(uri));
        return mimeTypeFromExtension == null ? "" : mimeTypeFromExtension;
    }

    public final boolean isFileUri(@Nullable String uri) {
        return StringUtils.startsWithIgnoreCase(uri, "file:///");
    }

    public final boolean isImageContent(@Nullable Uri uri) {
        if (uri == null) {
            return false;
        }
        return FileExtensionUtils.INSTANCE.isImageFile(getExtensionName(uri));
    }

    public final boolean isWebsiteOrFile(@Nullable String str) {
        return isWebsiteUri(str) || isFileUri(str);
    }

    public final boolean isWebsiteUri(@Nullable String uri) {
        return StringUtils.startsWithIgnoreCase(uri, CommonConstant.SCHEME_HTTP) || StringUtils.startsWithIgnoreCase(uri, CommonConstant.SCHEME_HTTPS);
    }

    public final boolean isFileUri(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        return Intrinsics.areEqual("file", uri.getScheme());
    }
}
