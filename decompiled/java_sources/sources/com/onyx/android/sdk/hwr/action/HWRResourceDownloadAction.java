package com.onyx.android.sdk.hwr.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.bundle.HWRFactory;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;", "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, C6998g.f39679a, "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "resource", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRResourceDownloadAction extends HWRBaseAction<HWRResource> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final HWRResource resource;

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRResourceDownloadAction$a */
    /* loaded from: classes7.dex */
    public static final class C7432a<T, R> implements Function {
        public C7432a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRResource> apply(@NotNull HWRBaseAction<HWRResource> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRResourceDownloadAction.this.m33341n();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRResourceDownloadAction(@NotNull HWRBundle bundle, @NotNull HWRResource resource) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(resource, "resource");
        this.resource = resource;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRResource> create() {
        Observable flatMap = createObservable().flatMap(new C7432a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: n */
    public final Observable<HWRResource> m33341n() {
        HWRFactory hWRFactory = HWRFactory.INSTANCE;
        if (!hWRFactory.getResourceCheckerFactory().invoke(this.resource.getEngineType()).isResourceDownloaded(this.resource)) {
            return hWRFactory.getResourceDownloaderFactory().invoke(this.resource.getEngineType()).setEventPublisher(getBundle().getEventBusHolder()).download(this.resource);
        }
        Observable<HWRResource> just = Observable.just(this.resource);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
