package com.onyx.android.sdk.auth.action;

import com.onyx.android.sdk.auth.AuthBundle;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/auth/action/BaseAuthAction;", "T", "", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "()V", "multiObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "getMultiObserveOn", "()Lio/reactivex/rxjava3/core/Scheduler;", "observeOn", "getObserveOn", "sdk-auth_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class BaseAuthAction<T> extends RxBaseAction<T> {
    @NotNull
    public final Scheduler getMultiObserveOn() {
        return AuthBundle.INSTANCE.getMultiScheduler().getObserveOn();
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return AuthBundle.INSTANCE.getRxScheduler().getObserveOn();
    }
}
