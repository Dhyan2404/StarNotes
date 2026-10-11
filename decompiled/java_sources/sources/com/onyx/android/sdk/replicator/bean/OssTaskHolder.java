package com.onyx.android.sdk.replicator.bean;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\f\u0018\u0000 22\u00020\u0001:\u00012B\u0007¢\u0006\u0004\b0\u00101J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\u0000J\u0006\u0010\u000b\u001a\u00020\u0000J\u0006\u0010\f\u001a\u00020\u0000J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u0006\u0010\u0011\u001a\u00020\u0010J\b\u0010\u0012\u001a\u00020\u0010H\u0002R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018\"\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R$\u0010\r\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\"\u0010\u0016\u001a\u0004\b#\u0010\u0018R$\u0010&\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b$\u0010\u0016\u001a\u0004\b%\u0010\u0018R\u0011\u0010(\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0011\u0010*\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b*\u0010)R\u0011\u0010+\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b+\u0010)R\u0011\u0010,\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b,\u0010)R\u0011\u0010-\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b-\u0010)R\u0011\u0010.\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b.\u0010)R\u0011\u0010/\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b/\u0010)¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/OssTaskHolder;", "", "Lio/reactivex/rxjava3/disposables/Disposable;", "taskDisposable", "setTaskDisposable", "", "status", "setStatus", CouchFieldKey.KEY_RECORD_TYPE, "setSyncRecordType", "startPush", "startPull", "syncSuccess", "errorType", "syncError", "setErrorType", "", "cancelTask", "a", "Lio/reactivex/rxjava3/disposables/Disposable;", "<set-?>", "b", "I", "getStatus", "()I", "c", "getType", "setType", "(I)V", "type", "Ljava/util/concurrent/atomic/AtomicInteger;", "d", "Ljava/util/concurrent/atomic/AtomicInteger;", "retryCount", "e", "getErrorType", C6997f.f39671c, "getSyncRecordType", "syncRecordType", "", "isFinished", Constants.BOOLEAN_VALUE_SIG, "isSyncingOrFinished", "isSyncError", "isSyncing", "isPushType", "isPullType", "isSuccess", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class OssTaskHolder {
    public static final int OSS_RETRY_COUNT_LIMIT = 3;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public Disposable taskDisposable;

    /* renamed from: b, reason: from kotlin metadata */
    public int status;

    /* renamed from: c, reason: from kotlin metadata */
    public int type = 1;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final AtomicInteger retryCount = new AtomicInteger(0);

    /* renamed from: e, reason: from kotlin metadata */
    public int errorType = OnyxErrorType.INSTANCE.getNONE();

    /* renamed from: f, reason: from kotlin metadata */
    public int syncRecordType;

    /* renamed from: a */
    public final void m34907a() {
        this.retryCount.addAndGet(1);
    }

    public final void cancelTask() {
        Disposable disposable = this.taskDisposable;
        if (disposable == null) {
            return;
        }
        Intrinsics.checkNotNull(disposable);
        if (disposable.isDisposed()) {
            return;
        }
        Disposable disposable2 = this.taskDisposable;
        Intrinsics.checkNotNull(disposable2);
        disposable2.dispose();
    }

    public final int getErrorType() {
        return this.errorType;
    }

    public final int getStatus() {
        return this.status;
    }

    public final int getSyncRecordType() {
        return this.syncRecordType;
    }

    public final int getType() {
        return this.type;
    }

    public final boolean isFinished() {
        if (!isSuccess() && this.retryCount.get() < 3) {
            int i = this.errorType;
            OnyxErrorType onyxErrorType = OnyxErrorType.INSTANCE;
            if (i != onyxErrorType.getNETWORK_ERROR() && this.errorType != onyxErrorType.getUSER_STORAGE_TOO_LOW()) {
                return false;
            }
        }
        return true;
    }

    public final boolean isPullType() {
        return this.type == 1;
    }

    public final boolean isPushType() {
        return this.type == 0;
    }

    public final boolean isSuccess() {
        return this.status == 3 || (this.errorType == OnyxErrorType.INSTANCE.getTHUMBNAIL_CLOUD_FILE_NOT_EXIST() && this.retryCount.get() >= 3);
    }

    public final boolean isSyncError() {
        return this.status == 4;
    }

    public final boolean isSyncing() {
        int i = this.status;
        return i == 2 || i == 1;
    }

    public final boolean isSyncingOrFinished() {
        return isSyncing() || isFinished();
    }

    @NotNull
    public final OssTaskHolder setErrorType(int errorType) {
        this.errorType = errorType;
        return this;
    }

    @NotNull
    public final OssTaskHolder setStatus(int status) {
        this.status = status;
        return this;
    }

    @NotNull
    public final OssTaskHolder setSyncRecordType(int recordType) {
        this.syncRecordType = recordType;
        return this;
    }

    @NotNull
    public final OssTaskHolder setTaskDisposable(@Nullable Disposable taskDisposable) {
        this.taskDisposable = taskDisposable;
        return this;
    }

    public final void setType(int i) {
        this.type = i;
    }

    @NotNull
    public final OssTaskHolder startPull() {
        this.type = 1;
        setStatus(2);
        return this;
    }

    @NotNull
    public final OssTaskHolder startPush() {
        this.type = 0;
        setStatus(1);
        return this;
    }

    @NotNull
    public final OssTaskHolder syncError(int errorType) {
        cancelTask();
        setStatus(4);
        m34907a();
        setErrorType(errorType);
        return this;
    }

    @NotNull
    public final OssTaskHolder syncSuccess() {
        setStatus(3);
        return this;
    }
}
