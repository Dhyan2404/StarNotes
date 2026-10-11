package com.onyx.android.sdk.universal.editor.extension;

import android.os.Build;
import android.os.Environment;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.neopdf.export.PdfCreateArgs;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.FileAttribute;
import java.util.Arrays;
import java.util.Date;
import kotlin.Metadata;
import kotlin.io.path.PathsKt__PathUtilsKt;
import kotlin.jvm.internal.Intrinsics;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\u0004J \u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u0004J \u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u0012\u001a\u00020\u0004J\u0010\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\r\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;", "", "()V", "DEFAULT_PDF_CREATOR", "", "DEFAULT_PDF_SAVE_QUALITY", "", "SAVE_PDF_EVERY_PAGE_COUNT", "getExportAuthor", "getExportDir", "appName", "getExportExtraInfoName", "getExportName", "title", "pageIndex", "extension", "desc", "getExportRelativeDir", "getExportRootDir", "getPdfExportCreateArgs", "Lcom/onyx/android/sdk/neopdf/export/PdfCreateArgs;", "getUserExportCacheDir", Constant.TAG_USER_ID, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteExporter {

    @NotNull
    public static final String DEFAULT_PDF_CREATOR = "ONYX";
    public static final int DEFAULT_PDF_SAVE_QUALITY = 50;

    @NotNull
    public static final NoteExporter INSTANCE = new NoteExporter();
    public static final int SAVE_PDF_EVERY_PAGE_COUNT = 10;

    public static /* synthetic */ String getExportName$default(NoteExporter noteExporter, String str, int i, String str2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str2 = "png";
        }
        return noteExporter.getExportName(str, i, str2);
    }

    public static /* synthetic */ PdfCreateArgs getPdfExportCreateArgs$default(NoteExporter noteExporter, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return noteExporter.getPdfExportCreateArgs(str);
    }

    @NotNull
    public final String getExportAuthor() {
        String accountName = AccountDataBundle.INSTANCE.getAccountName();
        if (!(accountName == null || accountName.length() == 0)) {
            return accountName;
        }
        String str = Build.DEVICE;
        Intrinsics.checkNotNull(str);
        return str;
    }

    @NotNull
    public final String getExportDir(@NotNull String appName) {
        Intrinsics.checkNotNullParameter(appName, "appName");
        return Environment.getExternalStorageDirectory().getAbsolutePath() + getExportRelativeDir(appName);
    }

    @NotNull
    public final String getExportExtraInfoName() {
        return "extraInfo";
    }

    @NotNull
    public final String getExportName(@NotNull String title, int pageIndex, @NotNull String extension) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(extension, "extension");
        return getExportName(title, String.valueOf(pageIndex + 1), extension);
    }

    @NotNull
    public final String getExportRelativeDir(@NotNull String appName) {
        Intrinsics.checkNotNullParameter(appName, "appName");
        return "/Documents/" + appName + "/export";
    }

    @NotNull
    public final String getExportRootDir() {
        return Environment.getExternalStorageDirectory().getAbsolutePath() + "/Documents";
    }

    @NotNull
    public final PdfCreateArgs getPdfExportCreateArgs(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new PdfCreateArgs(getExportAuthor(), title, "ONYX");
    }

    @NotNull
    public final String getUserExportCacheDir(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        File externalFilesDir = ResManager.INSTANCE.getAppContext().getExternalFilesDir(null);
        String absolutePath = externalFilesDir != null ? externalFilesDir.getAbsolutePath() : null;
        Intrinsics.checkNotNull(absolutePath);
        DateTimeUtil dateTimeUtil = DateTimeUtil.INSTANCE;
        Path path = Paths.get(absolutePath, (String[]) Arrays.copyOf(new String[]{SyncConstant.EXPORT_DIR_NAME, userId, dateTimeUtil.formatDate(new Date(), dateTimeUtil.getDATE_FORMAT_YYYYMMDD_HH_MM_SS())}, 3));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        PathsKt__PathUtilsKt.createParentDirectories(path, new FileAttribute[0]);
        return path.toAbsolutePath().toString();
    }

    public static /* synthetic */ String getExportName$default(NoteExporter noteExporter, String str, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = "png";
        }
        return noteExporter.getExportName(str, str2, str3);
    }

    @NotNull
    public final String getExportName(@NotNull String title, @NotNull String desc, @NotNull String extension) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(desc, "desc");
        Intrinsics.checkNotNullParameter(extension, "extension");
        return StringKt.safelyGetStr(FileUtils.INSTANCE.combine(title + NameUtil.USCORE + desc + NameUtil.USCORE + DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_HHMMSS_3().format(new Date()), extension));
    }
}
