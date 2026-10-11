package com.onyx.galaxy.note.p048ui.sticker;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.sticker.action.DeleteCategoryAction;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.action.CheckLoginStateAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/DeleteSubCategoryAction;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "m", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "subCategory", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DeleteSubCategoryAction extends StickerUiBaseAction<Object> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StickerCategoryModel subCategory;

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteSubCategoryAction$a */
    /* loaded from: classes9.dex */
    public static final class C12798a<T, R> implements Function {
        public C12798a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull StickerUiBaseAction<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteSubCategoryAction.this.m51378l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteSubCategoryAction$b */
    /* loaded from: classes9.dex */
    public static final class C12799b<T, R> implements Function {
        public C12799b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CheckLoginStateAction(DeleteSubCategoryAction.this.getBundle().getActivityContext()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteSubCategoryAction$c */
    /* loaded from: classes9.dex */
    public static final class C12800c<T, R> implements Function {
        public C12800c() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> m51382a(boolean z) {
            return new CheckCategoryEmptyAction(DeleteSubCategoryAction.this.getBundle(), DeleteSubCategoryAction.this.subCategory).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51382a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteSubCategoryAction$d */
    /* loaded from: classes9.dex */
    public static final class C12801d<T, R> implements Function {
        public C12801d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ShowConfirmDialogAction(DeleteSubCategoryAction.this.getBundle().getActivityContext(), C10651R.string.sticker_delete_sticker_category_title, C10651R.string.sticker_delete_sticker_category_confirm).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteSubCategoryAction$e */
    /* loaded from: classes9.dex */
    public static final class C12802e<T> implements Predicate {

        /* renamed from: e */
        public static final C12802e<T> f62092e = new C12802e<>();

        /* renamed from: a */
        public final boolean m51384a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m51384a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteSubCategoryAction$f */
    /* loaded from: classes9.dex */
    public static final class C12803f<T, R> implements Function {
        public C12803f() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> m51385a(boolean z) {
            return new DeleteCategoryAction(DeleteSubCategoryAction.this.subCategory).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51385a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteSubCategoryAction$g */
    /* loaded from: classes9.dex */
    public static final class C12804g<T, R> implements Function {
        public C12804g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        public final Object apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteSubCategoryAction.this.m51379m();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteSubCategoryAction(@NotNull StickerUiBundle bundle, @NotNull StickerCategoryModel subCategory) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(subCategory, "subCategory");
        this.subCategory = subCategory;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> map = createObservable().flatMap(new C12798a()).flatMap(new C12799b()).flatMap(new C12800c()).flatMap(new C12801d()).filter(C12802e.f62092e).flatMap(new C12803f()).map(new C12804g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<Object> m51378l() {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{-1, 1});
        if (listOf.contains(Integer.valueOf(this.subCategory.getType()))) {
            Observable<Object> empty = Observable.empty();
            Intrinsics.checkNotNull(empty);
            return empty;
        }
        Observable<Object> just = Observable.just(this);
        Intrinsics.checkNotNull(just);
        return just;
    }

    /* renamed from: m */
    public final Object m51379m() {
        getBundle().deleteSubCategory(this.subCategory);
        return this;
    }
}
