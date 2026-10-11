package com.onyx.galaxy.note.p048ui.sticker;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.replicator.C7594R;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.sticker.action.LoadCategoryAction;
import com.onyx.android.sdk.replicator.sticker.data.StickerValues;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModelKt;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006H\u0002J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0002J\b\u0010\u000e\u001a\u00020\u0003H\u0002¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "mainCategories", C4921e.f26528e, "l", "", "type", "nameResId", GoogleApiAvailabilityLight.f29016b, "m", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadMainCategoryListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadMainCategoryListAction.kt\ncom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n1855#2,2:68\n*S KotlinDebug\n*F\n+ 1 LoadMainCategoryListAction.kt\ncom/onyx/galaxy/note/ui/sticker/LoadMainCategoryListAction\n*L\n36#1:68,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadMainCategoryListAction extends StickerUiBaseAction<List<? extends StickerCategoryModel>> {

    /* renamed from: com.onyx.galaxy.note.ui.sticker.LoadMainCategoryListAction$a */
    /* loaded from: classes9.dex */
    public static final class C12812a<T, R> implements Function {

        /* renamed from: e */
        public static final C12812a<T, R> f62104e = new C12812a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<StickerCategoryModel>> apply(@NotNull StickerUiBaseAction<List<StickerCategoryModel>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadCategoryAction().build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.LoadMainCategoryListAction$b */
    /* loaded from: classes9.dex */
    public static final class C12813b<T, R> implements Function {
        public C12813b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<StickerCategoryModel> apply(@NotNull List<StickerCategoryModel> mainCategories) {
            List mutableList;
            Intrinsics.checkNotNullParameter(mainCategories, "mainCategories");
            LoadMainCategoryListAction loadMainCategoryListAction = LoadMainCategoryListAction.this;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) mainCategories);
            return loadMainCategoryListAction.m51396o(mutableList);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadMainCategoryListAction(@NotNull StickerUiBundle bundle) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<StickerCategoryModel>> create() {
        Observable<List<StickerCategoryModel>> map = createObservable().flatMap(C12812a.f62104e).map(new C12813b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final List<StickerCategoryModel> m51393l() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(m51395n(-2, C7594R.string.sticker_category_recent));
        arrayList.add(m51394m());
        arrayList.add(m51395n(2, C7594R.string.sticker_category_custom));
        arrayList.add(m51395n(3, C7594R.string.sticker_category_hot));
        return arrayList;
    }

    /* renamed from: m */
    public final StickerCategoryModel m51394m() {
        List<StickerCategoryModel> mutableList;
        StickerCategoryModel stickerCategoryModel = new StickerCategoryModel();
        stickerCategoryModel.setUniqueId(StickerValues.CATEGORY_TYPE_MATERIALS_ID);
        stickerCategoryModel.setType(4);
        stickerCategoryModel.setName(ResManager.INSTANCE.getStringSafely(C10651R.string.added_sticker));
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) KSyncBundle.INSTANCE.getUserStickerProvider().loadSubCategories(StickerValues.CATEGORY_TYPE_MATERIALS_ID));
        stickerCategoryModel.setSubCategory(mutableList);
        return stickerCategoryModel;
    }

    /* renamed from: n */
    public final StickerCategoryModel m51395n(int type, int nameResId) {
        StickerCategoryModel stickerCategoryModel = new StickerCategoryModel();
        stickerCategoryModel.setUniqueId(UUIDUtils.INSTANCE.shortUUID());
        stickerCategoryModel.setType(type);
        stickerCategoryModel.setName(ResManager.INSTANCE.getStringSafely(nameResId));
        stickerCategoryModel.setPlaceholder(true);
        return stickerCategoryModel;
    }

    /* renamed from: o */
    public final List<StickerCategoryModel> m51396o(List<StickerCategoryModel> mainCategories) {
        if (mainCategories.isEmpty()) {
            mainCategories.addAll(m51393l());
        } else {
            mainCategories.add(0, StickerCategoryModelKt.createCategoryRecent());
            mainCategories.add(1, m51394m());
        }
        for (StickerCategoryModel stickerCategoryModel : mainCategories) {
            stickerCategoryModel.getSubCategory().add(0, StickerCategoryModelKt.createCategoryAll(stickerCategoryModel.getUniqueId()));
        }
        return mainCategories;
    }
}
