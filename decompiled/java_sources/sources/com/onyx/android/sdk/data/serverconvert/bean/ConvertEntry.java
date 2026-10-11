package com.onyx.android.sdk.data.serverconvert.bean;

import android.net.Uri;
import com.blankj.utilcode.util.UriUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.serverconvert.DocConvertUtils;
import com.onyx.android.sdk.data.serverconvert.convertor.ConvertType;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.galaxy.note.usercenter.data.JavascriptArgs;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010A\u001a\u00020\nJ\b\u0010B\u001a\u0004\u0018\u000109J\b\u0010C\u001a\u0004\u0018\u000109J\u0006\u0010D\u001a\u00020EJ\u0006\u0010F\u001a\u00020EJ\u0006\u0010G\u001a\u00020EJ\u0006\u0010H\u001a\u00020EJ\u0006\u0010I\u001a\u00020EJ\u0006\u0010J\u001a\u00020ER\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000eR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\f\"\u0004\b\u001d\u0010\u000eR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000eR\u001a\u0010!\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\f\"\u0004\b#\u0010\u000eR\u001a\u0010$\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001a\u0010*\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001a\u00100\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\f\"\u0004\b2\u0010\u000eR\u0011\u00103\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\fR\u001a\u00105\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\f\"\u0004\b7\u0010\u000eR\u001c\u00108\u001a\u0004\u0018\u000109X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001a\u0010>\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010'\"\u0004\b@\u0010)¨\u0006K"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "", "()V", "convertType", "Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;", "getConvertType", "()Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;", "setConvertType", "(Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;)V", "downloadLocalPath", "", "getDownloadLocalPath", "()Ljava/lang/String;", "setDownloadLocalPath", "(Ljava/lang/String;)V", "file", "Ljava/io/File;", "getFile", "()Ljava/io/File;", "setFile", "(Ljava/io/File;)V", HuaweiYunQueryArgs.FILE_NAME, "getFileName", "setFileName", "filePassword", "getFilePassword", "setFilePassword", "ossDownloadKey", "getOssDownloadKey", "setOssDownloadKey", "ossUploadKey", "getOssUploadKey", "setOssUploadKey", "ossUploadUrl", "getOssUploadUrl", "setOssUploadUrl", "progressValue", "", "getProgressValue", "()I", "setProgressValue", "(I)V", "status", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;", "getStatus", "()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;", "setStatus", "(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V", "targetFormat", "getTargetFormat", "setTargetFormat", JavascriptArgs.KEY_TASK_ID, "getTaskId", "ticket", "getTicket", "setTicket", "uri", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "setUri", "(Landroid/net/Uri;)V", "waitingIndex", "getWaitingIndex", "setWaitingIndex", "generateConvertDocName", "generateUriFromLocalPath", "getImportUri", "isConvertFailed", "", "isConvertSuccess", "isConvertUnSupport", "isFileEncrypted", "isProcessing", "isUploadSuccess", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ConvertEntry {

    @Nullable
    private String fileName;

    @Nullable
    private String filePassword;

    @Nullable
    private String ossDownloadKey;
    private int progressValue;

    @Nullable
    private Uri uri;
    private int waitingIndex;

    @NotNull
    private final String taskId = UUIDUtils.INSTANCE.rawUUID();

    @NotNull
    private ConvertResultType status = ConvertResultType.RESULT_NONE;

    @NotNull
    private File file = new File("");

    @NotNull
    private String ossUploadKey = "";

    @NotNull
    private String ossUploadUrl = "";

    @NotNull
    private String ticket = "";

    @NotNull
    private String downloadLocalPath = "";

    @NotNull
    private String targetFormat = ResManager.INSTANCE.getStringSafely(C7373R.string.target_format_pdf);

    @NotNull
    private ConvertType convertType = ConvertType.COS;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ConvertResultType.values().length];
            try {
                iArr[ConvertResultType.RESULT_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConvertResultType.RESULT_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ConvertResultType.RESULT_UN_SUPPORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ConvertResultType.RESULT_SUCCESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public final String generateConvertDocName() {
        if (this.ossDownloadKey == null) {
            return UUIDUtils.INSTANCE.rawUUID() + '.' + this.targetFormat;
        }
        DocConvertUtils docConvertUtils = DocConvertUtils.INSTANCE;
        String name = this.file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        String str = this.ossDownloadKey;
        Intrinsics.checkNotNull(str);
        return docConvertUtils.generateSaveDocName(name, str);
    }

    @Nullable
    public final Uri generateUriFromLocalPath() {
        if (this.downloadLocalPath.length() == 0) {
            return null;
        }
        return UriUtils.file2Uri(new File(this.downloadLocalPath));
    }

    @NotNull
    public final ConvertType getConvertType() {
        return this.convertType;
    }

    @NotNull
    public final String getDownloadLocalPath() {
        return this.downloadLocalPath;
    }

    @NotNull
    public final File getFile() {
        return this.file;
    }

    @Nullable
    public final String getFileName() {
        return this.fileName;
    }

    @Nullable
    public final String getFilePassword() {
        return this.filePassword;
    }

    @Nullable
    public final Uri getImportUri() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.status.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.uri;
        }
        if (i != 4) {
            return null;
        }
        return generateUriFromLocalPath();
    }

    @Nullable
    public final String getOssDownloadKey() {
        return this.ossDownloadKey;
    }

    @NotNull
    public final String getOssUploadKey() {
        return this.ossUploadKey;
    }

    @NotNull
    public final String getOssUploadUrl() {
        return this.ossUploadUrl;
    }

    public final int getProgressValue() {
        return this.progressValue;
    }

    @NotNull
    public final ConvertResultType getStatus() {
        return this.status;
    }

    @NotNull
    public final String getTargetFormat() {
        return this.targetFormat;
    }

    @NotNull
    public final String getTaskId() {
        return this.taskId;
    }

    @NotNull
    public final String getTicket() {
        return this.ticket;
    }

    @Nullable
    public final Uri getUri() {
        return this.uri;
    }

    public final int getWaitingIndex() {
        return this.waitingIndex;
    }

    public final boolean isConvertFailed() {
        return this.status == ConvertResultType.RESULT_FAILED;
    }

    public final boolean isConvertSuccess() {
        return this.status == ConvertResultType.RESULT_SUCCESS;
    }

    public final boolean isConvertUnSupport() {
        return this.status == ConvertResultType.RESULT_UN_SUPPORT;
    }

    public final boolean isFileEncrypted() {
        String str = this.filePassword;
        return !(str == null || str.length() == 0);
    }

    public final boolean isProcessing() {
        return this.status == ConvertResultType.RESULT_PROCESSING;
    }

    public final boolean isUploadSuccess() {
        return this.ossUploadUrl.length() > 0;
    }

    public final void setConvertType(@NotNull ConvertType convertType) {
        Intrinsics.checkNotNullParameter(convertType, "<set-?>");
        this.convertType = convertType;
    }

    public final void setDownloadLocalPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.downloadLocalPath = str;
    }

    public final void setFile(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<set-?>");
        this.file = file;
    }

    public final void setFileName(@Nullable String str) {
        this.fileName = str;
    }

    public final void setFilePassword(@Nullable String str) {
        this.filePassword = str;
    }

    public final void setOssDownloadKey(@Nullable String str) {
        this.ossDownloadKey = str;
    }

    public final void setOssUploadKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.ossUploadKey = str;
    }

    public final void setOssUploadUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.ossUploadUrl = str;
    }

    public final void setProgressValue(int i) {
        this.progressValue = i;
    }

    public final void setStatus(@NotNull ConvertResultType convertResultType) {
        Intrinsics.checkNotNullParameter(convertResultType, "<set-?>");
        this.status = convertResultType;
    }

    public final void setTargetFormat(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.targetFormat = str;
    }

    public final void setTicket(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.ticket = str;
    }

    public final void setUri(@Nullable Uri uri) {
        this.uri = uri;
    }

    public final void setWaitingIndex(int i) {
        this.waitingIndex = i;
    }
}
