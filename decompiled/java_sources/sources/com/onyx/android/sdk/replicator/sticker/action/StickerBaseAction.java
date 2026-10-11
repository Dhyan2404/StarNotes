package com.onyx.android.sdk.replicator.sticker.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.sticker.data.StickerValues;
import com.onyx.android.sdk.replicator.sticker.p038db.StickerProvider;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00000\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;", "T", "", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "()V", "createObservable", "Lio/reactivex/rxjava3/core/Observable;", "getStickerObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "getStickerProvider", "Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class StickerBaseAction<T> extends RxBaseAction<T> {
    @NotNull
    public final Observable<StickerBaseAction<T>> createObservable() {
        Observable<StickerBaseAction<T>> observeOn = Observable.just(this).observeOn(StickerValues.INSTANCE.getScheduler().getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Scheduler getStickerObserveOn() {
        return StickerValues.INSTANCE.getScheduler().getObserveOn();
    }

    @NotNull
    public final StickerProvider getStickerProvider() {
        return KSyncBundle.INSTANCE.getUserStickerProvider();
    }
}
