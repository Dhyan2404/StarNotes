package com.onyx.android.sdk.hwr.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\b\u0016\u0012\u0006\u0010\r\u001a\u00020\f\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/action/HWRResourceBatchDownloadAction;", "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", C6998g.f39679a, "Ljava/util/List;", "getResources", "()Ljava/util/List;", "resources", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Ljava/util/List;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRResourceBatchDownloadAction extends HWRBaseAction<HWRResourceBatchDownloadAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<HWRResource> resources;

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRResourceBatchDownloadAction$a */
    /* loaded from: classes7.dex */
    public static final class C7428a<T, R> implements Function {
        public C7428a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRResourceBatchDownloadAction> apply(@NotNull HWRBaseAction<HWRResourceBatchDownloadAction> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRResourceBatchDownloadAction.this.m33335n();
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRResourceBatchDownloadAction$b */
    /* loaded from: classes7.dex */
    public static final class C7429b<T, R> implements Function {
        public C7429b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends HWRResource> apply(@NotNull HWRResource it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new HWRResourceDownloadAction(HWRResourceBatchDownloadAction.this.getBundle(), it2).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRResourceBatchDownloadAction$c */
    /* loaded from: classes7.dex */
    public static final class C7430c<T, R> implements Function {
        public C7430c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRResourceBatchDownloadAction apply(@NotNull HWRResource it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRResourceBatchDownloadAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRResourceBatchDownloadAction(@NotNull HWRBundle bundle, @NotNull List<HWRResource> resources) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(resources, "resources");
        this.resources = resources;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRResourceBatchDownloadAction> create() {
        Observable flatMap = createObservable().flatMap(new C7428a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final List<HWRResource> getResources() {
        return this.resources;
    }

    /* renamed from: n */
    public final Observable<HWRResourceBatchDownloadAction> m33335n() {
        if (this.resources.isEmpty()) {
            Observable<HWRResourceBatchDownloadAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(this.resources).concatMap(new C7429b());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<HWRResourceBatchDownloadAction> map = RxjavaKt.takeLastOne(concatMap).map(new C7430c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
