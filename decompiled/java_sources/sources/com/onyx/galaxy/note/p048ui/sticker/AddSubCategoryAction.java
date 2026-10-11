package com.onyx.galaxy.note.p048ui.sticker;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.sticker.action.AddCategoryAction;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.galaxy.note.account.action.CheckLoginStateAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "subCategory", "l", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "mainCategory", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AddSubCategoryAction extends StickerUiBaseAction<Object> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StickerCategoryModel mainCategory;

    /* renamed from: com.onyx.galaxy.note.ui.sticker.AddSubCategoryAction$a */
    /* loaded from: classes9.dex */
    public static final class C12781a<T, R> implements Function {
        public C12781a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull StickerUiBaseAction<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CheckLoginStateAction(AddSubCategoryAction.this.getBundle().getActivityContext()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.AddSubCategoryAction$b */
    /* loaded from: classes9.dex */
    public static final class C12782b<T, R> implements Function {
        public C12782b() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends String> m51356a(boolean z) {
            return new ShowNameInputDialogAction(AddSubCategoryAction.this.getBundle(), AddSubCategoryAction.this.mainCategory.getSubCategory()).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51356a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.AddSubCategoryAction$c */
    /* loaded from: classes9.dex */
    public static final class C12783c<T, R> implements Function {
        public C12783c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StickerCategoryModel> apply(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new AddCategoryAction(name, AddSubCategoryAction.this.mainCategory.getUniqueId()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.AddSubCategoryAction$d */
    /* loaded from: classes9.dex */
    public static final class C12784d<T, R> implements Function {
        public C12784d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object apply(@NotNull StickerCategoryModel subCategory) {
            Intrinsics.checkNotNullParameter(subCategory, "subCategory");
            return AddSubCategoryAction.this.m51354l(subCategory);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddSubCategoryAction(@NotNull StickerUiBundle bundle, @NotNull StickerCategoryModel mainCategory) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        this.mainCategory = mainCategory;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> map = createObservable().flatMap(new C12781a()).flatMap(new C12782b()).flatMap(new C12783c()).map(new C12784d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Object m51354l(StickerCategoryModel subCategory) {
        getBundle().addSubCategory(subCategory);
        return this;
    }
}
