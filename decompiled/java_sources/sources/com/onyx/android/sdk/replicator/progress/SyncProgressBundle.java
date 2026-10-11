package com.onyx.android.sdk.replicator.progress;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.replicator.bean.DocProgressListBean;
import com.onyx.android.sdk.replicator.event.SyncProgressUpdateEvent;
import com.onyx.android.sdk.replicator.progress.action.SaveSyncProgressAction;
import com.onyx.android.sdk.replicator.progress.bean.SyncDocProgress;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b%\u0010&J\u0006\u0010\u0003\u001a\u00020\u0002J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0010\u0010\n\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0001J\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0001J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u001b\u0010\u0015\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014R\u001b\u0010\u0019\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0013\u001a\u0004\b\u0017\u0010\u0018R%\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001a8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010$\u001a\u00020!8F¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;", "", "", gon.f71290o0, "Lio/reactivex/rxjava3/core/Observable;", "createObservable", "Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;", NotificationCompat.CATEGORY_EVENT, "onSyncProgressUpdateEvent", "object", "post", "subscriber", "register", "unregister", "Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;", "listBean", "c", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "a", "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "eventBusHolder", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "b", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "rxScheduler", "", "", "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;", "Ljava/util/Map;", "getSyncProgressMap", "()Ljava/util/Map;", "syncProgressMap", "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOn", "()Lio/reactivex/rxjava3/core/Scheduler;", "observeOn", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class SyncProgressBundle {

    @NotNull
    public static final SyncProgressBundle INSTANCE = new SyncProgressBundle();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy eventBusHolder;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Lazy rxScheduler;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, SyncDocProgress> syncProgressMap;

    static {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<EventBusHolder>() { // from class: com.onyx.android.sdk.replicator.progress.SyncProgressBundle$eventBusHolder$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EventBusHolder invoke() {
                return new EventBusHolder(null, 1, null);
            }
        });
        eventBusHolder = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<RxScheduler>() { // from class: com.onyx.android.sdk.replicator.progress.SyncProgressBundle$rxScheduler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RxScheduler invoke() {
                return RxScheduler.INSTANCE.newSingleThreadManager();
            }
        });
        rxScheduler = lazy2;
        syncProgressMap = new LinkedHashMap();
    }

    /* renamed from: a */
    public final EventBusHolder m35573a() {
        return (EventBusHolder) eventBusHolder.getValue();
    }

    /* renamed from: b */
    public final RxScheduler m35574b() {
        return (RxScheduler) rxScheduler.getValue();
    }

    /* renamed from: c */
    public final void m35575c(DocProgressListBean listBean) {
        if (AccountDataBundle.INSTANCE.canSync() && !listBean.getList().isEmpty()) {
            RxBaseAction.execute$default(new SaveSyncProgressAction(listBean), null, null, null, 7, null);
        }
    }

    @NotNull
    public final Observable<SyncProgressBundle> createObservable() {
        Observable<SyncProgressBundle> observeOn = Observable.just(this).observeOn(getObserveOn());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return m35574b().getObserveOn();
    }

    @NotNull
    public final Map<String, SyncDocProgress> getSyncProgressMap() {
        return syncProgressMap;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSyncProgressUpdateEvent(@NotNull SyncProgressUpdateEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m35575c(event.getList());
    }

    public final void post(@Nullable Object object) {
        m35573a().post(object);
    }

    public final void register(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        m35573a().register(subscriber);
    }

    public final void start() {
        register(this);
    }

    public final void unregister(@NotNull Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        m35573a().unRegister(subscriber);
    }
}
