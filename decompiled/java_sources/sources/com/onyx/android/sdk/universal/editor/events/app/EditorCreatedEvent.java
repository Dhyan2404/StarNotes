package com.onyx.android.sdk.universal.editor.events.app;

import androidx.activity.result.ActivityResultCaller;
import androidx.lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/EditorCreatedEvent;", "", "Landroidx/lifecycle/Lifecycle;", "a", "Landroidx/lifecycle/Lifecycle;", "getLifecycle", "()Landroidx/lifecycle/Lifecycle;", RequestParameters.SUBRESOURCE_LIFECYCLE, "Landroidx/activity/result/ActivityResultCaller;", "b", "Landroidx/activity/result/ActivityResultCaller;", "getActivityResultLauncher", "()Landroidx/activity/result/ActivityResultCaller;", "setActivityResultLauncher", "(Landroidx/activity/result/ActivityResultCaller;)V", "activityResultLauncher", Constants.CONSTRUCTOR_NAME, "(Landroidx/lifecycle/Lifecycle;Landroidx/activity/result/ActivityResultCaller;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EditorCreatedEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lifecycle lifecycle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public ActivityResultCaller activityResultLauncher;

    public EditorCreatedEvent(@NotNull Lifecycle lifecycle, @NotNull ActivityResultCaller activityResultLauncher) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(activityResultLauncher, "activityResultLauncher");
        this.lifecycle = lifecycle;
        this.activityResultLauncher = activityResultLauncher;
    }

    @NotNull
    public final ActivityResultCaller getActivityResultLauncher() {
        return this.activityResultLauncher;
    }

    @NotNull
    public final Lifecycle getLifecycle() {
        return this.lifecycle;
    }

    public final void setActivityResultLauncher(@NotNull ActivityResultCaller activityResultCaller) {
        Intrinsics.checkNotNullParameter(activityResultCaller, "<set-?>");
        this.activityResultLauncher = activityResultCaller;
    }
}
