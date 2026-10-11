package com.onyx.android.sdk.universal.editor.request;

import com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;", "", "safelyExecuteImpl", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "execute", "e", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "getWorkBundle", "()Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "setWorkBundle", "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V", Constants.CONSTRUCTOR_NAME, "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class RxBaseAppRequest extends RxBaseBenchmarkRequest {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public WorkBundle workBundle;

    public RxBaseAppRequest(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        this.workBundle = workBundle;
    }

    public abstract void execute(@NotNull WorkBundle workBundle);

    @NotNull
    public final WorkBundle getWorkBundle() {
        return this.workBundle;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseBenchmarkRequest
    public final void safelyExecuteImpl() {
        execute(this.workBundle);
    }

    public final void setWorkBundle(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "<set-?>");
        this.workBundle = workBundle;
    }
}
