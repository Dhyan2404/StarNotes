package com.onyx.android.sdk.auth;

import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fR\u001b\u0010\u0007\u001a\u00020\u00028FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\n\u001a\u00020\u00028FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/auth/AuthBundle;", "", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "a", "Lkotlin/Lazy;", "getRxScheduler", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "rxScheduler", "b", "getMultiScheduler", "multiScheduler", Constants.CONSTRUCTOR_NAME, "()V", "sdk-auth_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class AuthBundle {

    @NotNull
    public static final AuthBundle INSTANCE = new AuthBundle();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy rxScheduler;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Lazy multiScheduler;

    static {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.auth.AuthBundle$rxScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        rxScheduler = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.auth.AuthBundle$multiScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.Companion.newMultiThreadManager$default(RxScheduler.INSTANCE, null, 0L, 3, null);
            }
        });
        multiScheduler = lazy2;
    }

    @NotNull
    public final RxScheduler getMultiScheduler() {
        return (RxScheduler) multiScheduler.getValue();
    }

    @NotNull
    public final RxScheduler getRxScheduler() {
        return (RxScheduler) rxScheduler.getValue();
    }
}
