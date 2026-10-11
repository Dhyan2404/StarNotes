package com.onyx.android.sdk.hwr.action;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.hwr.data.bean.HWRResource;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.bundle.HWRFactory;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001f\b\u0016\u0012\u0006\u0010\r\u001a\u00020\f\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/action/HWRResourceBatchDeleteAction;", "Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, C6998g.f39679a, "Ljava/util/List;", "getResources", "()Ljava/util/List;", "resources", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Ljava/util/List;)V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRResourceBatchDeleteAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRResourceBatchDeleteAction.kt\ncom/onyx/android/sdk/hwr/action/HWRResourceBatchDeleteAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1855#2,2:31\n*S KotlinDebug\n*F\n+ 1 HWRResourceBatchDeleteAction.kt\ncom/onyx/android/sdk/hwr/action/HWRResourceBatchDeleteAction\n*L\n24#1:31,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HWRResourceBatchDeleteAction extends HWRBaseAction<List<HWRResource>> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<HWRResource> resources;

    /* renamed from: com.onyx.android.sdk.hwr.action.HWRResourceBatchDeleteAction$a */
    /* loaded from: classes7.dex */
    public static final class C7427a<T, R> implements Function {
        public C7427a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<HWRResource> apply(@NotNull HWRBaseAction<List<HWRResource>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRResourceBatchDeleteAction.this.m33333n();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRResourceBatchDeleteAction(@NotNull HWRBundle bundle, @NotNull List<HWRResource> resources) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(resources, "resources");
        this.resources = resources;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<HWRResource>> create() {
        Observable map = createObservable().observeOn(Schedulers.m61350io()).map(new C7427a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<HWRResource> getResources() {
        return this.resources;
    }

    /* renamed from: n */
    public final List<HWRResource> m33333n() {
        for (HWRResource hWRResource : this.resources) {
            HWRFactory.INSTANCE.getResourceDownloaderFactory().invoke(hWRResource.getEngineType()).delete(hWRResource);
        }
        return this.resources;
    }
}
