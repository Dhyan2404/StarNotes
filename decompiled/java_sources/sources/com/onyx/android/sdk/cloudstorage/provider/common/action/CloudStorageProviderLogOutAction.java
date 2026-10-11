package com.onyx.android.sdk.cloudstorage.provider.common.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R$\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\f¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "e", "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;", "cloudStorageProvider", "Lio/reactivex/rxjava3/core/Scheduler;", C6997f.f39671c, "Lio/reactivex/rxjava3/core/Scheduler;", "getWorkScheduler", "()Lio/reactivex/rxjava3/core/Scheduler;", "setWorkScheduler", "(Lio/reactivex/rxjava3/core/Scheduler;)V", "workScheduler", "getObserveOn", "observeOn", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;)V", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class CloudStorageProviderLogOutAction extends RxBaseAction<CloudStorageProvider> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CloudStorageProvider cloudStorageProvider;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Scheduler workScheduler;

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.CloudStorageProviderLogOutAction$a */
    /* loaded from: classes7.dex */
    public static final class C7209a<T> implements Consumer {
        public C7209a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CloudStorageProviderLogOutAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            CloudStorageProviderLogOutAction.this.cloudStorageProvider.logOut(CloudStorageProviderLogOutAction.this.getAppContext());
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.provider.common.action.CloudStorageProviderLogOutAction$b */
    /* loaded from: classes7.dex */
    public static final class C7210b<T, R> implements Function {
        public C7210b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CloudStorageProvider apply(@NotNull CloudStorageProviderLogOutAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CloudStorageProviderLogOutAction.this.cloudStorageProvider;
        }
    }

    public CloudStorageProviderLogOutAction(@NotNull CloudStorageProvider cloudStorageProvider) {
        Intrinsics.checkNotNullParameter(cloudStorageProvider, "cloudStorageProvider");
        this.cloudStorageProvider = cloudStorageProvider;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CloudStorageProvider> create() {
        Observable<CloudStorageProvider> map = Observable.just(this).observeOn(getObserveOn()).doOnNext(new C7209a()).map(new C7210b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final Scheduler getObserveOn() {
        if (this.workScheduler == null) {
            this.workScheduler = CloudStorageManager.INSTANCE.getOurInstance().getRxScheduler().getObserveOn();
        }
        Scheduler scheduler = this.workScheduler;
        Intrinsics.checkNotNull(scheduler);
        return scheduler;
    }

    @Nullable
    public final Scheduler getWorkScheduler() {
        return this.workScheduler;
    }

    public final void setWorkScheduler(@Nullable Scheduler scheduler) {
        this.workScheduler = scheduler;
    }
}
