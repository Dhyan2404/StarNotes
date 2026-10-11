package com.onyx.android.sdk.replicator.bean;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.disposables.Disposable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\bR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;", "", "", "key", "setKey", "", "syncRecordType", "setSyncRecordType", "Lio/reactivex/rxjava3/disposables/Disposable;", "getTaskDisposable", "taskDisposable", "setTaskDisposable", "<set-?>", "a", Constants.STRING_SIG, "getKey", "()Ljava/lang/String;", "b", "I", "getSyncRecordType", "()I", "c", "Lio/reactivex/rxjava3/disposables/Disposable;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StartTaskBean {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String key;

    /* renamed from: b, reason: from kotlin metadata */
    public int syncRecordType;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Disposable taskDisposable;

    @Nullable
    public final String getKey() {
        return this.key;
    }

    public final int getSyncRecordType() {
        return this.syncRecordType;
    }

    @Nullable
    public final Disposable getTaskDisposable() {
        return this.taskDisposable;
    }

    @NotNull
    public final StartTaskBean setKey(@Nullable String key) {
        this.key = key;
        return this;
    }

    @NotNull
    public final StartTaskBean setSyncRecordType(int syncRecordType) {
        this.syncRecordType = syncRecordType;
        return this;
    }

    @NotNull
    public final StartTaskBean setTaskDisposable(@Nullable Disposable taskDisposable) {
        this.taskDisposable = taskDisposable;
        return this;
    }
}
