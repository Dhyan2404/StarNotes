package com.onyx.android.sdk.replicator.event;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b'\u0010(J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\u000b\u001a\u00020\u00002\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0002R$\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R$\u0010\f\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0018\u0010\u0016R$\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR4\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R$\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b!\u0010\u0014\u001a\u0004\b\"\u0010\u0016R$\u0010%\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b#\u0010\u0014\u001a\u0004\b$\u0010\u0016R\u0011\u0010&\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b&\u0010\u001c¨\u0006)"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;", "", "", "total", "setTotal", "", "finished", "setFinished", "", "", "errorTypes", "setErrorTypes", OneDriverConstants.OPERATION_STATUS_COMPLETED, "setCompleted", "pushCompletedCount", "setPushCompletedCount", "count", "setPullCompletedCount", "<set-?>", "a", "J", "getTotal", "()J", "b", "getCompleted", "c", Constants.HASIDCALL_INDEX_SIG, "isFinished", Constants.BOOLEAN_VALUE_SIG, "d", "Ljava/util/List;", "getErrorTypes", "()Ljava/util/List;", "e", "getPushCompletedCount", C6997f.f39671c, "getPullCompletedCount", "pullCompletedCount", "isSuccess", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DataSyncProgressEvent {

    /* renamed from: a, reason: from kotlin metadata */
    public long total;

    /* renamed from: b, reason: from kotlin metadata */
    public long completed;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isFinished;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public List<Integer> errorTypes;

    /* renamed from: e, reason: from kotlin metadata */
    public long pushCompletedCount;

    /* renamed from: f, reason: from kotlin metadata */
    public long pullCompletedCount;

    public final long getCompleted() {
        return this.completed;
    }

    @Nullable
    public final List<Integer> getErrorTypes() {
        return this.errorTypes;
    }

    public final long getPullCompletedCount() {
        return this.pullCompletedCount;
    }

    public final long getPushCompletedCount() {
        return this.pushCompletedCount;
    }

    public final long getTotal() {
        return this.total;
    }

    /* renamed from: isFinished, reason: from getter */
    public final boolean getIsFinished() {
        return this.isFinished;
    }

    public final boolean isSuccess() {
        return this.completed == this.total;
    }

    @NotNull
    public final DataSyncProgressEvent setCompleted(long completed) {
        this.completed = completed;
        return this;
    }

    @NotNull
    public final DataSyncProgressEvent setErrorTypes(@Nullable List<Integer> errorTypes) {
        this.errorTypes = errorTypes;
        return this;
    }

    @NotNull
    public final DataSyncProgressEvent setFinished(boolean finished) {
        this.isFinished = finished;
        return this;
    }

    @NotNull
    public final DataSyncProgressEvent setPullCompletedCount(long count) {
        this.pullCompletedCount = count;
        return this;
    }

    @NotNull
    public final DataSyncProgressEvent setPushCompletedCount(long pushCompletedCount) {
        this.pushCompletedCount = pushCompletedCount;
        return this;
    }

    @NotNull
    public final DataSyncProgressEvent setTotal(long total) {
        this.total = total;
        return this;
    }
}
