package com.onyx.android.sdk.replicator.sticker.action;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/action/LoadStickerByParentCategoryAction;", "Lcom/onyx/android/sdk/replicator/sticker/action/StickerBaseAction;", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", "e", Constants.STRING_SIG, "parentCategoryId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadStickerByParentCategoryAction extends StickerBaseAction<List<? extends StickerModel>> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String parentCategoryId;

    /* renamed from: com.onyx.android.sdk.replicator.sticker.action.LoadStickerByParentCategoryAction$a */
    /* loaded from: classes8.dex */
    public static final class C7920a<T, R> implements Function {
        public C7920a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<StickerModel> apply(@NotNull StickerBaseAction<List<StickerModel>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadStickerByParentCategoryAction.this.m35823l();
        }
    }

    public LoadStickerByParentCategoryAction(@NotNull String parentCategoryId) {
        Intrinsics.checkNotNullParameter(parentCategoryId, "parentCategoryId");
        this.parentCategoryId = parentCategoryId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<StickerModel>> create() {
        Observable map = createObservable().map(new C7920a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<StickerModel> m35823l() {
        return getStickerProvider().loadStickerByParentCategory(this.parentCategoryId);
    }
}
