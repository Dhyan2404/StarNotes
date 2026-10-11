package com.onyx.android.sdk.base.scheduler;

import androidx.annotation.MainThread;
import com.onyx.android.sdk.base.p018rx.ObservableHolder;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0014\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0007J\u0014\u0010\u0005\u001a\u00020\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0007J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004R\"\u0010\r\u001a\u000e\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0006\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/base/scheduler/ActionManager;", "", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "action", "", "execute", "Lio/reactivex/rxjava3/core/Observable;", "subscribe", "resubscribe", "unsubscribe", "Lcom/onyx/android/sdk/base/rx/ObservableHolder;", "a", "Lcom/onyx/android/sdk/base/rx/ObservableHolder;", "observableHolder", Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ActionManager {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public ObservableHolder<Observable<?>> observableHolder;

    /* renamed from: com.onyx.android.sdk.base.scheduler.ActionManager$a */
    /* loaded from: classes7.dex */
    public static final class C7138a<T, R> implements Function {

        /* renamed from: e */
        public static final C7138a<T, R> f40823e = new C7138a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Observable<?> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2;
        }
    }

    @MainThread
    public final void execute(@NotNull RxBaseAction<?> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        ObservableHolder<Observable<?>> observableHolder = this.observableHolder;
        if (observableHolder != null) {
            observableHolder.onNext(action.build());
        }
    }

    public final void resubscribe() {
        unsubscribe();
        subscribe();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
    
        if (r0.isDisposed() != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void subscribe() {
        /*
            r2 = this;
            com.onyx.android.sdk.base.rx.ObservableHolder<io.reactivex.rxjava3.core.Observable<?>> r0 = r2.observableHolder
            if (r0 == 0) goto Ld
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            boolean r0 = r0.isDisposed()
            if (r0 == 0) goto L14
        Ld:
            com.onyx.android.sdk.base.rx.ObservableHolder r0 = new com.onyx.android.sdk.base.rx.ObservableHolder
            r0.<init>()
            r2.observableHolder = r0
        L14:
            com.onyx.android.sdk.base.rx.ObservableHolder<io.reactivex.rxjava3.core.Observable<?>> r0 = r2.observableHolder
            if (r0 != 0) goto L19
            return
        L19:
            io.reactivex.rxjava3.core.Observable r0 = r0.getObservable()
            com.onyx.android.sdk.base.scheduler.ActionManager$a<T, R> r1 = com.onyx.android.sdk.base.scheduler.ActionManager.C7138a.f40823e
            io.reactivex.rxjava3.core.Observable r0 = r0.concatMap(r1)
            java.lang.String r1 = "concatMap(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            io.reactivex.rxjava3.core.Observable r2 = com.onyx.android.sdk.base.extension.RxjavaKt.onErrorReturnItemWithLog(r0, r2)
            r2.subscribe()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.scheduler.ActionManager.subscribe():void");
    }

    public final void unsubscribe() {
        ObservableHolder<Observable<?>> observableHolder = this.observableHolder;
        if (observableHolder != null) {
            observableHolder.onComplete();
        }
        this.observableHolder = null;
    }

    @MainThread
    public final void execute(@NotNull Observable<?> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        ObservableHolder<Observable<?>> observableHolder = this.observableHolder;
        if (observableHolder != null) {
            observableHolder.onNext(action);
        }
    }
}
