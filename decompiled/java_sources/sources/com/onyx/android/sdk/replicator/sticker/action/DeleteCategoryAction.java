package com.onyx.android.sdk.replicator.sticker.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.replicator.sticker.api.StickerCallExecutor;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/DeleteCategoryAction;", "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "m", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "e", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "category", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DeleteCategoryAction extends StickerBaseAction<Object> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final StickerCategoryModel category;

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.DeleteCategoryAction$a */
    /* loaded from: classes8.dex */
    public static final class C7912a<T, R> implements Function {
        public C7912a() {
        }

        /* renamed from: a */
        public final void m35809a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteCategoryAction.this.m35807l();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35809a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.DeleteCategoryAction$b */
    /* loaded from: classes8.dex */
    public static final class C7913b<T, R> implements Function {
        public C7913b() {
        }

        /* renamed from: a */
        public final void m35810a(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteCategoryAction.this.m35808m();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m35810a((Unit) obj);
            return Unit.INSTANCE;
        }
    }

    public DeleteCategoryAction(@NotNull StickerCategoryModel category) {
        Intrinsics.checkNotNullParameter(category, "category");
        this.category = category;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> map = Observable.just(Unit.INSTANCE).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C7912a()).observeOn(getStickerObserveOn()).map(new C7913b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final void m35807l() {
        StickerCallExecutor.INSTANCE.deleteStickerCategory(this.category.getUniqueId());
    }

    /* renamed from: m */
    public final void m35808m() {
        getStickerProvider().deleteCategory(this.category.getUniqueId());
    }
}
