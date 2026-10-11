package com.onyx.android.sdk.hwr.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.request.HWRResourceDeleteRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/action/HWRResourceDeleteAction;", "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, C6998g.f39679a, "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "getResource", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "setResource", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V", "resource", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRResourceDeleteAction extends HWRBaseAction<HWRResource> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public HWRResource resource;

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRResourceDeleteAction$a */
    /* loaded from: classes7.dex */
    public static final class C7431a<T, R> implements Function {
        public C7431a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRResource apply(@NotNull HWRResourceDeleteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRResourceDeleteAction.this.m33339n();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRResourceDeleteAction(@NotNull HWRBundle bundle, @NotNull HWRResource resource) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(resource, "resource");
        this.resource = resource;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRResource> create() {
        Observable<HWRResource> map = Observable.just(this).map(new C7431a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final HWRResource getResource() {
        return this.resource;
    }

    /* renamed from: n */
    public final HWRResource m33339n() {
        new HWRResourceDeleteRequest(getBundle(), this.resource).m72275execute();
        return this.resource;
    }

    public final void setResource(@NotNull HWRResource hWRResource) {
        Intrinsics.checkNotNullParameter(hWRResource, "<set-?>");
        this.resource = hWRResource;
    }
}
