package com.onyx.android.sdk.pay.action;

import android.app.Activity;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Scheduler;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\t\u001a\u00020\bR\u001e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/action/BasePayAction;", "", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Landroid/app/Activity;", "context", "setActivity", "getActivity", "Lio/reactivex/rxjava3/core/Scheduler;", "getCloudScheduler", "Ljava/lang/ref/WeakReference;", "e", "Ljava/lang/ref/WeakReference;", "activityRef", Constants.CONSTRUCTOR_NAME, "()V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class BasePayAction<T> extends RxBaseAction<T> {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public WeakReference<Activity> activityRef;

    @Nullable
    public final Activity getActivity() {
        WeakReference<Activity> weakReference = this.activityRef;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @NotNull
    public final Scheduler getCloudScheduler() {
        return ClusterManager.INSTANCE.getCloudObserveOn();
    }

    @NotNull
    public final RxBaseAction<T> setActivity(@NotNull Activity context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.activityRef = new WeakReference<>(context);
        return this;
    }
}
