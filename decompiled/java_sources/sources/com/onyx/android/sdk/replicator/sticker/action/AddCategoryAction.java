package com.onyx.android.sdk.replicator.sticker.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.replicator.sticker.api.StickerCallExecutor;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/AddCategoryAction;", "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "category", "m", "", "e", Constants.STRING_SIG, "name", C6997f.f39671c, "parentCategoryId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AddCategoryAction extends StickerBaseAction<StickerCategoryModel> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String name;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String parentCategoryId;

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.AddCategoryAction$a */
    /* loaded from: classes8.dex */
    public static final class C7901a<T, R> implements Function {
        public C7901a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StickerCategoryModel apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddCategoryAction.this.m35785l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.AddCategoryAction$b */
    /* loaded from: classes8.dex */
    public static final class C7902b<T, R> implements Function {
        public C7902b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StickerCategoryModel apply(@NotNull StickerCategoryModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AddCategoryAction.this.m35786m(it2);
        }
    }

    public AddCategoryAction(@NotNull String name, @NotNull String parentCategoryId) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(parentCategoryId, "parentCategoryId");
        this.name = name;
        this.parentCategoryId = parentCategoryId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StickerCategoryModel> create() {
        Observable<StickerCategoryModel> map = Observable.just(Unit.INSTANCE).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C7901a()).observeOn(getStickerObserveOn()).map(new C7902b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final StickerCategoryModel m35785l() {
        return StickerCallExecutor.INSTANCE.addStickerCategory(this.name, this.parentCategoryId).getNonNullData();
    }

    /* renamed from: m */
    public final StickerCategoryModel m35786m(StickerCategoryModel category) {
        category.setParentUniqueId(this.parentCategoryId);
        getStickerProvider().addCategory(category);
        return category;
    }
}
