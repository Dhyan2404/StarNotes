package com.onyx.android.sdk.replicator.sticker.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/LoadCategoryAction;", "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadCategoryAction extends StickerBaseAction<List<? extends StickerCategoryModel>> {

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.LoadCategoryAction$a */
    /* loaded from: classes8.dex */
    public static final class C7917a<T, R> implements Function {
        public C7917a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<StickerCategoryModel> apply(@NotNull StickerBaseAction<List<StickerCategoryModel>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadCategoryAction.this.m35817l();
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<StickerCategoryModel>> create() {
        Observable map = createObservable().map(new C7917a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<StickerCategoryModel> m35817l() {
        return getStickerProvider().loadAllCategory();
    }
}
