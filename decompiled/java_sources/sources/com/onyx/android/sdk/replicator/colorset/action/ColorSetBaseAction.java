package com.onyx.android.sdk.replicator.colorset.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfoUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.colorset.core.ColorSetProvider;
import com.onyx.android.sdk.replicator.colorset.data.ColorPickerValues;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0004J\b\u0010\b\u001a\u00020\tH\u0004¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;", "T", "", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "()V", "ensureColorProviderObservable", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;", "getObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class ColorSetBaseAction<T> extends RxBaseAction<T> {

    /* renamed from: com.onyx.android.sdk.replicator.colorset.action.ColorSetBaseAction$a */
    /* loaded from: classes8.dex */
    public static final class C7640a<T, R> implements Function {

        /* renamed from: e */
        public static final C7640a<T, R> f45292e = new C7640a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ProviderInfo apply(@NotNull AccountDataBundle it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ProviderInfoUtils.INSTANCE.getUserDataProviderInfo(AccountDataBundle.INSTANCE.getSyncUserId());
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.colorset.action.ColorSetBaseAction$b */
    /* loaded from: classes8.dex */
    public static final class C7641b<T, R> implements Function {

        /* renamed from: e */
        public static final C7641b<T, R> f45293e = new C7641b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ColorSetProvider apply(@NotNull ProviderInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return KSyncBundle.INSTANCE.getDbProviderBundle().getColorSetProvider(it2);
        }
    }

    @NotNull
    public final Observable<ColorSetProvider> ensureColorProviderObservable() {
        Observable<ColorSetProvider> observeOn = AccountDataBundle.INSTANCE.loadOnyxAccountObservable().observeOn(KSyncBundle.INSTANCE.getObserveOn()).map(C7640a.f45292e).map(C7641b.f45293e).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return ColorPickerValues.INSTANCE.getScheduler().getObserveOn();
    }
}
