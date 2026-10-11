package com.onyx.android.sdk.p029db;

import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.data.couchbase.CouchDBManager;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u000e\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/db/OnyxStatisticDBBundle;", "", "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOn", "Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", "a", "Lkotlin/Lazy;", "getOnyxStatisticProvider", "()Lcom/onyx/android/sdk/db/OnyxStatisticProvider;", "onyxStatisticProvider", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "b", "getOnyxStatisticScheduler", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "onyxStatisticScheduler", Constants.CONSTRUCTOR_NAME, "()V", "sdk-statistics_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class OnyxStatisticDBBundle {

    @NotNull
    public static final OnyxStatisticDBBundle INSTANCE = new OnyxStatisticDBBundle();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy onyxStatisticProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Lazy onyxStatisticScheduler;

    static {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<OnyxStatisticProvider>() { // from class: com.onyx.android.sdk.db.OnyxStatisticDBBundle$onyxStatisticProvider$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final OnyxStatisticProvider invoke() {
                OnyxStatisticProvider m32979a;
                m32979a = OnyxStatisticDBBundle.INSTANCE.m32979a();
                return m32979a;
            }
        });
        onyxStatisticProvider = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.db.OnyxStatisticDBBundle$onyxStatisticScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        onyxStatisticScheduler = lazy2;
    }

    /* renamed from: a */
    public final OnyxStatisticProvider m32979a() {
        return new OnyxStatisticProvider(CouchDBManager.INSTANCE.getCouchHolder(ProviderInfoUtils.INSTANCE.getAppProviderInfo()));
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return getOnyxStatisticScheduler().getObserveOn();
    }

    @NotNull
    public final OnyxStatisticProvider getOnyxStatisticProvider() {
        return (OnyxStatisticProvider) onyxStatisticProvider.getValue();
    }

    @NotNull
    public final RxScheduler getOnyxStatisticScheduler() {
        return (RxScheduler) onyxStatisticScheduler.getValue();
    }
}
