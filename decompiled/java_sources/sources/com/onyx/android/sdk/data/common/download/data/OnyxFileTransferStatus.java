package com.onyx.android.sdk.data.common.download.data;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.common.data.ResultCode;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007\b\u0016¢\u0006\u0002\u0010\u0003B\u0011\b\u0016\u0012\b\u0010\u0004\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u0005J\b\u0010(\u001a\u00020)H\u0007J\b\u0010*\u001a\u00020\u0011H\u0007J\b\u0010+\u001a\u00020\u0011H\u0007J\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020-J\u0006\u0010/\u001a\u00020-J\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u0016\u00100\u001a\u00020-2\u0006\u00101\u001a\u00020 2\u0006\u00102\u001a\u000203J\u0010\u00104\u001a\u00020-2\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u0018\u00104\u001a\u00020-2\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000206H\u0007R\u001e\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\u0005R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0007\"\u0004\b'\u0010\u0005¨\u00068"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;", "T", "Ljava/io/Serializable;", "()V", "entry", "(Ljava/lang/Object;)V", "getEntry", "()Ljava/lang/Object;", "setEntry", Constants.OBJECT_SIG, "errorResultCode", "Lcom/onyx/android/sdk/data/common/data/ResultCode;", "getErrorResultCode", "()Lcom/onyx/android/sdk/data/common/data/ResultCode;", "setErrorResultCode", "(Lcom/onyx/android/sdk/data/common/data/ResultCode;)V", "isUpload", "", Constants.BOOLEAN_VALUE_SIG, "setUpload", "(Z)V", "newTag", "", "getNewTag", "setNewTag", "progressInfo", "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "getProgressInfo", "()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;", "setProgressInfo", "(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V", "status", "", "getStatus", "()I", "setStatus", "(I)V", "tag", "getTag", "setTag", "getProgress", "", "isCompleted", "isError", "setCompleteStatus", "", "setErrorStatus", "setInvalidStatus", "updateErrorResultCode", "code", "message", "", "updateProgressInfo", "currentOffset", "", "totalLength", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OnyxFileTransferStatus<T> implements Serializable {

    @Nullable
    private T entry;

    @Nullable
    private ResultCode errorResultCode;
    private boolean isUpload;

    @Nullable
    private Object newTag;

    @NotNull
    private ProgressInfo progressInfo = new ProgressInfo();
    private int status;

    @Nullable
    private Object tag;

    public OnyxFileTransferStatus() {
    }

    @Nullable
    public final T getEntry() {
        return this.entry;
    }

    @Nullable
    public final ResultCode getErrorResultCode() {
        return this.errorResultCode;
    }

    @Nullable
    public final Object getNewTag() {
        return this.newTag;
    }

    @JSONField(deserialize = false, serialize = false)
    public final double getProgress() {
        return this.progressInfo.getProgress();
    }

    @NotNull
    public final ProgressInfo getProgressInfo() {
        return this.progressInfo;
    }

    public final int getStatus() {
        return this.status;
    }

    @Nullable
    public final Object getTag() {
        return this.tag;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isCompleted() {
        return ((byte) this.status) == -3;
    }

    @JSONField(deserialize = false, serialize = false)
    public final boolean isError() {
        return ((byte) this.status) == -1;
    }

    /* renamed from: isUpload, reason: from getter */
    public final boolean getIsUpload() {
        return this.isUpload;
    }

    public final void setCompleteStatus() {
        this.status = -3;
    }

    public final void setEntry(@Nullable T t) {
        this.entry = t;
    }

    public final void setErrorResultCode(@Nullable ResultCode resultCode) {
        this.errorResultCode = resultCode;
    }

    public final void setErrorStatus() {
        this.status = -1;
    }

    public final void setInvalidStatus() {
        this.status = 0;
    }

    public final void setNewTag(@Nullable Object obj) {
        this.newTag = obj;
    }

    /* renamed from: setProgressInfo, reason: collision with other method in class */
    public final void m72247setProgressInfo(@NotNull ProgressInfo progressInfo) {
        Intrinsics.checkNotNullParameter(progressInfo, "<set-?>");
        this.progressInfo = progressInfo;
    }

    public final void setStatus(int i) {
        this.status = i;
    }

    public final void setTag(@Nullable Object obj) {
        this.tag = obj;
    }

    public final void setUpload(boolean z) {
        this.isUpload = z;
    }

    public final void updateErrorResultCode(int code, @NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        ResultCode resultCode = new ResultCode();
        resultCode.setCode(code);
        resultCode.setMessage(message);
        this.errorResultCode = resultCode;
    }

    @JSONField(deserialize = false, serialize = false)
    public final void updateProgressInfo(long currentOffset, long totalLength) {
        ProgressInfo progressInfo = new ProgressInfo();
        progressInfo.setSoFarBytes(currentOffset);
        progressInfo.setTotalBytes(totalLength);
        progressInfo.setProgress((progressInfo.getSoFarBytes() * 100) / progressInfo.getTotalBytes());
        updateProgressInfo(progressInfo);
    }

    @JSONField(deserialize = false, serialize = false)
    @NotNull
    public final OnyxFileTransferStatus<T> setProgressInfo(@NotNull ProgressInfo progressInfo) {
        Intrinsics.checkNotNullParameter(progressInfo, "progressInfo");
        this.progressInfo = progressInfo;
        this.status = 3;
        return this;
    }

    public OnyxFileTransferStatus(@Nullable T t) {
        this.entry = t;
    }

    @JSONField(deserialize = false, serialize = false)
    public final void updateProgressInfo(@NotNull ProgressInfo progressInfo) {
        Intrinsics.checkNotNullParameter(progressInfo, "progressInfo");
        this.progressInfo = progressInfo;
        this.status = 3;
    }
}
