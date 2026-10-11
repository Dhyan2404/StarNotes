package com.onyx.galaxy.note.p048ui.sticker;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.sticker.action.LoadRecentUsageAction;
import com.onyx.android.sdk.replicator.sticker.action.LoadStickerByCategoryAction;
import com.onyx.android.sdk.replicator.sticker.action.LoadStickerByParentCategoryAction;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\f\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\t¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "mainCategory", C6998g.f39679a, "subCategory", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadStickerListAction extends StickerUiBaseAction<List<? extends StickerModel>> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StickerCategoryModel mainCategory;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final StickerCategoryModel subCategory;

    /* renamed from: com.onyx.galaxy.note.ui.sticker.LoadStickerListAction$a */
    /* loaded from: classes9.dex */
    public static final class C12814a<T, R> implements Function {
        public C12814a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<StickerModel>> apply(@NotNull StickerUiBaseAction<List<StickerModel>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadStickerListAction.this.m51399l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadStickerListAction(@NotNull StickerUiBundle bundle, @NotNull StickerCategoryModel mainCategory, @NotNull StickerCategoryModel subCategory) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        Intrinsics.checkNotNullParameter(subCategory, "subCategory");
        this.mainCategory = mainCategory;
        this.subCategory = subCategory;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<StickerModel>> create() {
        Observable flatMap = createObservable().flatMap(new C12814a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<List<StickerModel>> m51399l() {
        return this.mainCategory.getType() == -2 ? new LoadRecentUsageAction().build() : this.subCategory.getType() == -1 ? new LoadStickerByParentCategoryAction(this.mainCategory.getUniqueId()).build() : new LoadStickerByCategoryAction(this.subCategory.getUniqueId()).build();
    }
}
