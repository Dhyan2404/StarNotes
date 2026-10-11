package com.onyx.android.sdk.data.common.download;

import com.couchbase.lite.internal.core.C4Replicator;
import com.liulishuo.okdownload.DownloadTask;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.exception.ContentException;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010%\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\b\u0010=\u001a\u00020>H\u0016J\b\u0010?\u001a\u00020\u0007H\u0016J\b\u0010@\u001a\u00020>H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001e\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\t\"\u0004\b \u0010\u000bR&\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010'\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0014\"\u0004\b)\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0014R\u001c\u0010+\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001c\u00100\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0014\"\u0004\b2\u0010\u0016R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b9\u0010\u0014R\u001c\u0010:\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u0014\"\u0004\b<\u0010\u0016¨\u0006A"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;", "", "url", "", "path", "(Ljava/lang/String;Ljava/lang/String;)V", "autoCallbackToUIThread", "", "getAutoCallbackToUIThread", Constants.BOOLEAN_VALUE_SIG, "setAutoCallbackToUIThread", "(Z)V", "eventBusHolder", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "getEventBusHolder", "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "setEventBusHolder", "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;)V", "fileMd5", "getFileMd5", "()Ljava/lang/String;", "setFileMd5", "(Ljava/lang/String;)V", "fileSize", "", "getFileSize", "()Ljava/lang/Long;", "setFileSize", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "forceReDownload", "getForceReDownload", "setForceReDownload", "headerParams", "", "getHeaderParams", "()Ljava/util/Map;", "setHeaderParams", "(Ljava/util/Map;)V", "password", "getPassword", "setPassword", "getPath", "tag", "getTag", "()Ljava/lang/Object;", "setTag", "(Ljava/lang/Object;)V", "targetPath", "getTargetPath", "setTargetPath", "task", "Lcom/liulishuo/okdownload/DownloadTask;", "getTask", "()Lcom/liulishuo/okdownload/DownloadTask;", "setTask", "(Lcom/liulishuo/okdownload/DownloadTask;)V", "getUrl", C4Replicator.REPLICATOR_AUTH_USER_NAME, "getUsername", "setUsername", "checkFileMd5AndDelete", "", "checkFileSize", "moveToTarget", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public class FileDownloadRequest {
    private boolean autoCallbackToUIThread;

    @Nullable
    private EventBusHolder eventBusHolder;

    @Nullable
    private String fileMd5;

    @Nullable
    private Long fileSize;
    private boolean forceReDownload;

    @NotNull
    private Map<String, String> headerParams;

    @Nullable
    private String password;

    @NotNull
    private final String path;

    @Nullable
    private Object tag;

    @Nullable
    private String targetPath;

    @Nullable
    private DownloadTask task;

    @NotNull
    private final String url;

    @Nullable
    private String username;

    public FileDownloadRequest(@NotNull String url, @NotNull String path) {
        Map<String, String> mutableMapOf;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(path, "path");
        this.url = url;
        this.path = path;
        this.tag = url + path;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to(Constant.HEADER_USER_AGENT, Util.userAgent));
        this.headerParams = mutableMapOf;
    }

    public void checkFileMd5AndDelete() throws ContentException.FileCheckException {
        FileUtils fileUtils = FileUtils.INSTANCE;
        String str = this.path;
        String str2 = this.fileMd5;
        if (str2 == null) {
            str2 = "";
        }
        if (fileUtils.checkMD5WithDelete(str, str2)) {
            return;
        }
        throw new ContentException.FileCheckException(this.path + " check file md5 fail, expect," + this.fileMd5 + ",actual:" + this.fileMd5);
    }

    public boolean checkFileSize() throws ContentException.FileCheckException {
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (!fileUtils.fileExist(this.path)) {
            throw new ContentException.FileCheckException(this.path + " file not exist");
        }
        if (this.fileSize == null) {
            return false;
        }
        long fileSize = fileUtils.getFileSize(this.path);
        Long l = this.fileSize;
        if (l != null && l.longValue() == fileSize) {
            return true;
        }
        fileUtils.deleteFile(this.path);
        throw new ContentException.FileCheckException(this.path + " check file size fail, expect," + this.fileSize + ",actual:" + fileSize);
    }

    public final boolean getAutoCallbackToUIThread() {
        return this.autoCallbackToUIThread;
    }

    @Nullable
    public final EventBusHolder getEventBusHolder() {
        return this.eventBusHolder;
    }

    @Nullable
    public final String getFileMd5() {
        return this.fileMd5;
    }

    @Nullable
    public final Long getFileSize() {
        return this.fileSize;
    }

    public final boolean getForceReDownload() {
        return this.forceReDownload;
    }

    @NotNull
    public final Map<String, String> getHeaderParams() {
        return this.headerParams;
    }

    @Nullable
    public final String getPassword() {
        return this.password;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @Nullable
    public final Object getTag() {
        return this.tag;
    }

    @Nullable
    public final String getTargetPath() {
        return this.targetPath;
    }

    @Nullable
    public final DownloadTask getTask() {
        return this.task;
    }

    @NotNull
    public final String getUrl() {
        return this.url;
    }

    @Nullable
    public final String getUsername() {
        return this.username;
    }

    public void moveToTarget() {
        String str = this.targetPath;
        if (str == null || str.length() == 0) {
            return;
        }
        FileUtils fileUtils = FileUtils.INSTANCE;
        if (fileUtils.fileExist(this.path)) {
            if (fileUtils.fileExist(this.targetPath)) {
                fileUtils.deleteFile(this.targetPath);
            }
            onyx.org.apache.commons.io.FileUtils.moveFile(new File(this.path), new File(this.targetPath));
        } else {
            throw new ContentException.FileCheckException(this.path + " file not exist");
        }
    }

    public final void setAutoCallbackToUIThread(boolean z) {
        this.autoCallbackToUIThread = z;
    }

    public final void setEventBusHolder(@Nullable EventBusHolder eventBusHolder) {
        this.eventBusHolder = eventBusHolder;
    }

    public final void setFileMd5(@Nullable String str) {
        this.fileMd5 = str;
    }

    public final void setFileSize(@Nullable Long l) {
        this.fileSize = l;
    }

    public final void setForceReDownload(boolean z) {
        this.forceReDownload = z;
    }

    public final void setHeaderParams(@NotNull Map<String, String> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.headerParams = map;
    }

    public final void setPassword(@Nullable String str) {
        this.password = str;
    }

    public final void setTag(@Nullable Object obj) {
        this.tag = obj;
    }

    public final void setTargetPath(@Nullable String str) {
        this.targetPath = str;
    }

    public final void setTask(@Nullable DownloadTask downloadTask) {
        this.task = downloadTask;
    }

    public final void setUsername(@Nullable String str) {
        this.username = str;
    }
}
