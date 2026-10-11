package com.onyx.android.sdk.base.extension;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.onyx.android.sdk.base.utils.UriUtils;
import java.nio.file.Path;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.io.path.PathsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import onyx.org.apache.commons.io.FilenameUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0007\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\b\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\u0002¨\u0006\f"}, m61528d2 = {"getDefaultName", "", "Landroid/net/Uri;", "context", "Landroid/content/Context;", "getFileExtension", "getFileName", "getFileNameFromPath", "getFileSize", "", "isValidURI", "", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nUri.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uri.kt\ncom/onyx/android/sdk/base/extension/UriKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1#2:124\n*E\n"})
/* loaded from: classes7.dex */
public final class UriKt {
    @NotNull
    public static final String getDefaultName(@NotNull Uri uri, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        return System.currentTimeMillis() + '.' + MimeTypeMap.getSingleton().getExtensionFromMimeType(context.getContentResolver().getType(uri));
    }

    @Nullable
    public static final String getFileExtension(@NotNull final Uri uri, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        return (String) AnyKt.getOrElseNull(MimeTypeMap.getSingleton().getExtensionFromMimeType(context.getContentResolver().getType(uri)), new Function0<String>() { // from class: com.onyx.android.sdk.base.extension.UriKt$getFileExtension$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final String invoke() {
                return FilenameUtils.getExtension(uri.getLastPathSegment());
            }
        });
    }

    @NotNull
    public static final String getFileName(@NotNull final Uri uri, @NotNull final Context context) {
        String str;
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        String scheme = uri.getScheme();
        if (scheme != null) {
            int hashCode = scheme.hashCode();
            if (hashCode != 3143036) {
                if (hashCode == 951530617 && scheme.equals("content")) {
                    Cursor query = context.getContentResolver().query(uri, null, null, null, null, null);
                    if (query != null) {
                        Cursor cursor = query;
                        try {
                            Cursor cursor2 = cursor;
                            cursor2.moveToFirst();
                            Integer valueOf = Integer.valueOf(cursor2.getColumnIndex("_display_name"));
                            if (!(valueOf.intValue() >= 0)) {
                                valueOf = null;
                            }
                            str = valueOf != null ? cursor2.getString(valueOf.intValue()) : null;
                            CloseableKt.closeFinally(cursor, null);
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(cursor, th);
                                throw th2;
                            }
                        }
                    } else {
                        str = null;
                    }
                    if (StringKt.isNotBlank(str)) {
                        return str;
                    }
                    String fileNameFromPath = getFileNameFromPath(uri);
                    return (String) AnyKt.getOrElse(StringKt.isNotBlank(fileNameFromPath) ? fileNameFromPath : null, new Function0<String>() { // from class: com.onyx.android.sdk.base.extension.UriKt$getFileName$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        @NotNull
                        public final String invoke() {
                            return UriKt.getDefaultName(uri, context);
                        }
                    });
                }
            } else if (scheme.equals("file")) {
                String name = androidx.core.net.UriKt.toFile(uri).getName();
                Intrinsics.checkNotNull(name);
                return name;
            }
        }
        return getDefaultName(uri, context);
    }

    @NotNull
    public static final String getFileNameFromPath(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        String path = uri.getPath();
        if (path == null) {
            path = "";
        }
        Path path2 = java.nio.file.Paths.get(path, new String[0]);
        Intrinsics.checkNotNullExpressionValue(path2, "get(path)");
        String name = PathsKt.getName(path2);
        if (!StringKt.isNotBlank(name)) {
            return name;
        }
        String extensionName = UriUtils.INSTANCE.getExtensionName(uri);
        if (StringKt.safelyEqualsIgnoreCase(FilenameUtils.getExtension(name), extensionName)) {
            return name;
        }
        return name + '.' + extensionName;
    }

    public static final long getFileSize(@NotNull Uri uri, @NotNull Context context) {
        Cursor query;
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        String scheme = uri.getScheme();
        if (scheme == null) {
            return 0L;
        }
        int hashCode = scheme.hashCode();
        if (hashCode == 3143036) {
            if (scheme.equals("file")) {
                return androidx.core.net.UriKt.toFile(uri).length();
            }
            return 0L;
        }
        if (hashCode != 951530617 || !scheme.equals("content") || (query = context.getContentResolver().query(uri, null, null, null, null, null)) == null) {
            return 0L;
        }
        query.moveToFirst();
        long j = query.getLong(query.getColumnIndex("_size"));
        query.close();
        return j;
    }

    public static final boolean isValidURI(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        String scheme = uri.getScheme();
        return !(scheme == null || scheme.length() == 0);
    }
}
