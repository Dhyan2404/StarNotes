package com.onyx.android.sdk.replicator.sticker.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.data.ResponeDataKt;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.replicator.sticker.api.StickerCallExecutor;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/RenameCategoryAction;", "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", "e", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "category", "", C6997f.f39671c, Constants.STRING_SIG, "newName", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RenameCategoryAction extends StickerBaseAction<StickerCategoryModel> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final StickerCategoryModel category;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String newName;

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.RenameCategoryAction$a */
    /* loaded from: classes8.dex */
    public static final class C7924a<T, R> implements Function {
        public C7924a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StickerCategoryModel apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameCategoryAction.this.m35832l();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.RenameCategoryAction$b */
    /* loaded from: classes8.dex */
    public static final class C7925b<T, R> implements Function {
        public C7925b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final StickerCategoryModel apply(@NotNull StickerCategoryModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RenameCategoryAction.this.m35833m();
        }
    }

    public RenameCategoryAction(@NotNull StickerCategoryModel category, @NotNull String newName) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(newName, "newName");
        this.category = category;
        this.newName = newName;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<StickerCategoryModel> create() {
        Observable<StickerCategoryModel> map = Observable.just(Unit.INSTANCE).observeOn(ClusterManager.INSTANCE.getCloudObserveOn()).map(new C7924a()).observeOn(getStickerObserveOn()).map(new C7925b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final StickerCategoryModel m35832l() {
        if (ResponeDataKt.success(StickerCallExecutor.INSTANCE.updateStickerCategory(this.category.getUniqueId(), this.newName))) {
            return this.category;
        }
        throw OnyxException.INSTANCE.m31891of(ErrorType.REQUEST_FAIL);
    }

    /* renamed from: m */
    public final StickerCategoryModel m35833m() {
        this.category.setName(this.newName);
        getStickerProvider().updateCategory(this.category);
        return this.category;
    }
}
