package com.onyx.android.sdk.cloudstorage.provider.aliyun.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.constans.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR \u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR \u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;", "Ljava/io/Serializable;", "()V", "asyncTaskId", "", "getAsyncTaskId", "()Ljava/lang/String;", "setAsyncTaskId", "(Ljava/lang/String;)V", "driveId", "getDriveId", "setDriveId", "fileId", "getFileId", "setFileId", "filePath", "getFilePath", "setFilePath", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class AliYunFileBase implements Serializable {

    @JSONField(alternateNames = {Constants.ALI_YUN_ASYNC_TASK_ID})
    @Nullable
    private String asyncTaskId;

    @JSONField(alternateNames = {Constants.ALI_YUN_DRIVE_ID})
    @Nullable
    private String driveId;

    @JSONField(alternateNames = {"file_id"})
    @Nullable
    private String fileId;

    @JSONField(alternateNames = {Constants.ALI_YUN_FILE_PATH})
    @Nullable
    private String filePath;

    @Nullable
    public final String getAsyncTaskId() {
        return this.asyncTaskId;
    }

    @Nullable
    public final String getDriveId() {
        return this.driveId;
    }

    @Nullable
    public final String getFileId() {
        return this.fileId;
    }

    @Nullable
    public final String getFilePath() {
        return this.filePath;
    }

    public final void setAsyncTaskId(@Nullable String str) {
        this.asyncTaskId = str;
    }

    public final void setDriveId(@Nullable String str) {
        this.driveId = str;
    }

    public final void setFileId(@Nullable String str) {
        this.fileId = str;
    }

    public final void setFilePath(@Nullable String str) {
        this.filePath = str;
    }
}
