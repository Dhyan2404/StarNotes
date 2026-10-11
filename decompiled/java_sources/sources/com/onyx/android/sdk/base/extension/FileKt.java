package com.onyx.android.sdk.base.extension;

import android.content.Context;
import android.net.Uri;
import androidx.core.content.FileProvider;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import onyx.org.apache.commons.io.IOUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\u001a\u001c\u0010\u0005\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00012\b\b\u0002\u0010\u0007\u001a\u00020\b\u001a\u0012\u0010\t\u001a\u00020\n*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\f¨\u0006\r"}, m61528d2 = {"getFileProviderAuthority", "", "ensureFileExists", "", "Ljava/io/File;", "saveContent", "content", "charset", "Ljava/nio/charset/Charset;", "toProviderUri", "Landroid/net/Uri;", "context", "Landroid/content/Context;", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FileKt {
    public static final boolean ensureFileExists(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return FileUtils.INSTANCE.ensureFileExists(file.getAbsolutePath());
    }

    @NotNull
    public static final String getFileProviderAuthority() {
        return ResManager.INSTANCE.getAppContext().getPackageName() + ".fileprovider";
    }

    public static final boolean saveContent(@NotNull File file, @NotNull String content, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(charset, "charset");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                IOUtils.write(content, (OutputStream) fileOutputStream, charset);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
                return true;
            } finally {
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static /* synthetic */ boolean saveContent$default(File file, String str, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        return saveContent(file, str, charset);
    }

    @NotNull
    public static final Uri toProviderUri(@NotNull File file, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Uri uriForFile = FileProvider.getUriForFile(context, getFileProviderAuthority(), file);
        Intrinsics.checkNotNullExpressionValue(uriForFile, "getUriForFile(...)");
        return uriForFile;
    }
}
