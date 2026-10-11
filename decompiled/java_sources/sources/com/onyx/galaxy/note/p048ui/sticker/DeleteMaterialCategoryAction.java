package com.onyx.galaxy.note.p048ui.sticker;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.CheckLoginStateAction;
import com.onyx.galaxy.note.datarepository.action.DeleteMaterialsStickerAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\f\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/DeleteMaterialCategoryAction;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "subCategory", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DeleteMaterialCategoryAction extends StickerUiBaseAction<Object> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StickerCategoryModel subCategory;

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteMaterialCategoryAction$a */
    /* loaded from: classes9.dex */
    public static final class C12788a<T, R> implements Function {
        public C12788a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull StickerUiBaseAction<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteMaterialCategoryAction.this.m51363l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteMaterialCategoryAction$b */
    /* loaded from: classes9.dex */
    public static final class C12789b<T, R> implements Function {
        public C12789b() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m51366a(boolean z) {
            return new ShowConfirmDialogAction(DeleteMaterialCategoryAction.this.getBundle().getActivityContext(), C10651R.string.sticker_delete_sticker_category_title, C10651R.string.delete_material_category_confirm).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51366a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteMaterialCategoryAction$c */
    /* loaded from: classes9.dex */
    public static final class C12790c<T> implements Predicate {

        /* renamed from: e */
        public static final C12790c<T> f62075e = new C12790c<>();

        /* renamed from: a */
        public final boolean m51367a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m51367a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteMaterialCategoryAction$d */
    /* loaded from: classes9.dex */
    public static final class C12791d<T, R> implements Function {
        public C12791d() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends DeleteMaterialsStickerAction> m51368a(boolean z) {
            return new DeleteMaterialsStickerAction(DeleteMaterialCategoryAction.this.subCategory.getUniqueId()).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51368a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteMaterialCategoryAction$e */
    /* loaded from: classes9.dex */
    public static final class C12792e<T, R> implements Function {
        public C12792e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object apply(@NotNull DeleteMaterialsStickerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteMaterialCategoryAction.this.m51364m();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteMaterialCategoryAction(@NotNull StickerUiBundle bundle, @NotNull StickerCategoryModel subCategory) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(subCategory, "subCategory");
        this.subCategory = subCategory;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<R> flatMap = createObservable().flatMap(new C12788a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<?> m51363l() {
        Observable<?> map = new CheckLoginStateAction(getBundle().getActivityContext()).build().flatMap(new C12789b()).filter(C12790c.f62075e).flatMap(new C12791d()).map(new C12792e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Object m51364m() {
        getBundle().deleteSubCategory(this.subCategory);
        return this;
    }
}
