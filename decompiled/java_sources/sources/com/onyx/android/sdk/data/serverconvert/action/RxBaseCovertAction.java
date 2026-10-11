package com.onyx.android.sdk.data.serverconvert.action;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.cluster.model.ClusterInfo;
import com.onyx.android.sdk.data.common.oss.OssConfig;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.onyx.android.sdk.data.serverconvert.bean.ConvertEntry;
import com.onyx.android.sdk.data.serverconvert.bean.DocConvertProgressEvent;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0007\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0011\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\nJ\b\u0010\u000b\u001a\u0004\u0018\u00010\bJ\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0011\u001a\u00020\u0012J*\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u0017J\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0002J\u000e\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0002J\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\bJ\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\b0\nR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;", "T", "", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "bus", "Lorg/greenrobot/eventbus/EventBus;", "(Lorg/greenrobot/eventbus/EventBus;)V", "clusterInfo", "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;", "ensureClusterInfo", "Lio/reactivex/rxjava3/core/Observable;", "getClusterInfo", "getDocConvertOssManager", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "getObserveOn", "Lio/reactivex/rxjava3/core/Scheduler;", "getObserveOnMultiThread", "handleCancel", "", "handleProgress", "convertEntry", "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;", "localConvertList", "", "networkConvertList", "postEvent", NotificationCompat.CATEGORY_EVENT, "postEventIf", "setClusterInfo", "updateClusterInfoObservable", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public abstract class RxBaseCovertAction<T> extends RxBaseAction<T> {

    @Nullable
    private final EventBus bus;

    @Nullable
    private ClusterInfo clusterInfo;

    /* JADX WARN: Multi-variable type inference failed */
    public RxBaseCovertAction() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @NotNull
    public final Observable<ClusterInfo> ensureClusterInfo() {
        ClusterInfo clusterInfo = this.clusterInfo;
        if (clusterInfo == null) {
            return updateClusterInfoObservable();
        }
        Observable<ClusterInfo> just = Observable.just(clusterInfo);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    @Nullable
    public final ClusterInfo getClusterInfo() {
        return this.clusterInfo;
    }

    @NotNull
    public final RxOSSManager getDocConvertOssManager() {
        OssConfig.Companion companion = OssConfig.INSTANCE;
        ClusterInfo clusterInfo = getClusterInfo();
        Intrinsics.checkNotNull(clusterInfo);
        OssConfig docConvertOssConfig = companion.docConvertOssConfig(clusterInfo);
        docConvertOssConfig.setToken(AccountDataBundle.INSTANCE.getAccountToken());
        return new RxOSSManager(docConvertOssConfig);
    }

    @NotNull
    public final Scheduler getObserveOn() {
        return RxScheduler.INSTANCE.sharedSingleThreadManager().getObserveOn();
    }

    @NotNull
    public final Scheduler getObserveOnMultiThread() {
        return RxScheduler.INSTANCE.sharedMultiThreadManager().getObserveOn();
    }

    public final void handleCancel() {
        DocConvertProgressEvent docConvertProgressEvent = new DocConvertProgressEvent();
        docConvertProgressEvent.setStatus(204);
        postEvent(docConvertProgressEvent);
    }

    public final void handleProgress(@NotNull ConvertEntry convertEntry, @NotNull List<ConvertEntry> localConvertList, @NotNull List<ConvertEntry> networkConvertList) {
        Intrinsics.checkNotNullParameter(convertEntry, "convertEntry");
        Intrinsics.checkNotNullParameter(localConvertList, "localConvertList");
        Intrinsics.checkNotNullParameter(networkConvertList, "networkConvertList");
        DocConvertProgressEvent docConvertProgressEvent = new DocConvertProgressEvent();
        docConvertProgressEvent.setStatus(202);
        docConvertProgressEvent.setTaskId(convertEntry.getTaskId());
        docConvertProgressEvent.setNetworkList(networkConvertList);
        docConvertProgressEvent.setLocalList(localConvertList);
        postEventIf(docConvertProgressEvent);
    }

    public final void postEvent(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        EventBus eventBus = this.bus;
        if (eventBus != null) {
            eventBus.post(event);
        }
    }

    public final void postEventIf(@NotNull Object event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isDisposed()) {
            return;
        }
        postEvent(event);
    }

    @NotNull
    public final RxBaseAction<T> setClusterInfo(@NotNull ClusterInfo clusterInfo) {
        Intrinsics.checkNotNullParameter(clusterInfo, "clusterInfo");
        this.clusterInfo = clusterInfo;
        return this;
    }

    @NotNull
    public final Observable<ClusterInfo> updateClusterInfoObservable() {
        Observable<ClusterInfo> doOnNext = ClusterManager.INSTANCE.getCurrentClusterObservable().doOnNext(new Consumer(this) { // from class: com.onyx.android.sdk.data.serverconvert.action.RxBaseCovertAction$updateClusterInfoObservable$1
            final /* synthetic */ RxBaseCovertAction<T> this$0;

            {
                this.this$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(@NotNull ClusterInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.this$0.setClusterInfo(it2);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public RxBaseCovertAction(@Nullable EventBus eventBus) {
        this.bus = eventBus;
    }

    public /* synthetic */ RxBaseCovertAction(EventBus eventBus, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : eventBus);
    }
}
