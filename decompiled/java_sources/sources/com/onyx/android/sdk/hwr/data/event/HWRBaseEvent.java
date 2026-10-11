package com.onyx.android.sdk.hwr.data.event;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0012\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b*\u0010+J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\n\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\tH\u0016J\b\u0010\r\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\tH\u0016J\b\u0010\u000f\u001a\u00020\tH\u0016J\b\u0010\u0010\u001a\u00020\tH\u0016J\b\u0010\u0011\u001a\u00020\tH\u0016R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/event/HWRBaseEvent;", "T", "", gon.f71290o0, "executing", "", "throwable", "failed", FirebaseAnalytics.Param.SUCCESS, "", "abort", "setAbort", "isAbort", "isExecuting", "isFailed", "isFailedWithNotAbort", "isSuccess", "isStart", "", "a", Constants.STRING_SIG, "getEventSourceId", "()Ljava/lang/String;", "setEventSourceId", "(Ljava/lang/String;)V", "eventSourceId", "", "b", "I", "getActionStatus", "()I", "setActionStatus", "(I)V", "actionStatus", "c", "Ljava/lang/Throwable;", "getThrowable", "()Ljava/lang/Throwable;", "setThrowable", "(Ljava/lang/Throwable;)V", "d", Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class HWRBaseEvent<T> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String eventSourceId;

    /* renamed from: b, reason: from kotlin metadata */
    public int actionStatus;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Throwable throwable;

    /* renamed from: d, reason: from kotlin metadata */
    public volatile boolean isAbort;

    public HWRBaseEvent() {
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        this.eventSourceId = uuid;
    }

    @NotNull
    public HWRBaseEvent<T> executing() {
        this.actionStatus = 1;
        return this;
    }

    @NotNull
    public HWRBaseEvent<T> failed(@Nullable Throwable throwable) {
        this.actionStatus = 2;
        this.throwable = throwable;
        return this;
    }

    public final int getActionStatus() {
        return this.actionStatus;
    }

    @NotNull
    public final String getEventSourceId() {
        return this.eventSourceId;
    }

    @Nullable
    public final Throwable getThrowable() {
        return this.throwable;
    }

    /* renamed from: isAbort, reason: from getter */
    public boolean getIsAbort() {
        return this.isAbort;
    }

    public boolean isExecuting() {
        return this.actionStatus == 1;
    }

    public boolean isFailed() {
        return this.actionStatus == 2;
    }

    public boolean isFailedWithNotAbort() {
        return this.actionStatus == 2 && !getIsAbort();
    }

    public boolean isStart() {
        return this.actionStatus == 0;
    }

    public boolean isSuccess() {
        return this.actionStatus == 3;
    }

    @NotNull
    public HWRBaseEvent<T> setAbort(boolean abort) {
        this.isAbort = abort;
        return this;
    }

    public final void setActionStatus(int i) {
        this.actionStatus = i;
    }

    public final void setEventSourceId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.eventSourceId = str;
    }

    public final void setThrowable(@Nullable Throwable th) {
        this.throwable = th;
    }

    @NotNull
    public HWRBaseEvent<T> start() {
        this.actionStatus = 0;
        return this;
    }

    @NotNull
    public HWRBaseEvent<T> success() {
        this.actionStatus = 3;
        return this;
    }
}
