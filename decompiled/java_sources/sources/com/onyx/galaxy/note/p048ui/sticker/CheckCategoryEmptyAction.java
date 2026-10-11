package com.onyx.galaxy.note.p048ui.sticker;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.sticker.action.LoadStickerByCategoryAction;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/CheckCategoryEmptyAction;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", Constants.ELEMNAME_EMPTY_STRING, "l", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "subCategory", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CheckCategoryEmptyAction extends StickerUiBaseAction<Object> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StickerCategoryModel subCategory;

    /* renamed from: com.onyx.galaxy.note.ui.sticker.CheckCategoryEmptyAction$a */
    /* loaded from: classes9.dex */
    public static final class C12785a<T, R> implements Function {
        public C12785a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<StickerModel>> apply(@NotNull StickerUiBaseAction<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new LoadStickerByCategoryAction(CheckCategoryEmptyAction.this.subCategory.getUniqueId()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.CheckCategoryEmptyAction$b */
    /* loaded from: classes9.dex */
    public static final class C12786b<T, R> implements Function {

        /* renamed from: e */
        public static final C12786b<T, R> f62070e = new C12786b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull List<StickerModel> stickers) {
            Intrinsics.checkNotNullParameter(stickers, "stickers");
            return Boolean.valueOf(stickers.isEmpty());
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.CheckCategoryEmptyAction$c */
    /* loaded from: classes9.dex */
    public static final class C12787c<T, R> implements Function {
        public C12787c() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> m51362a(boolean z) {
            return CheckCategoryEmptyAction.this.m51359l(z);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51362a(((Boolean) obj).booleanValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckCategoryEmptyAction(@NotNull StickerUiBundle bundle, @NotNull StickerCategoryModel subCategory) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(subCategory, "subCategory");
        this.subCategory = subCategory;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> flatMap = createObservable().flatMap(new C12785a()).map(C12786b.f62070e).flatMap(new C12787c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<Object> m51359l(boolean empty) {
        if (empty) {
            Observable<Object> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.sticker_category_is_not_empty, false, 2, (Object) null);
        Observable<Object> empty2 = Observable.empty();
        Intrinsics.checkNotNullExpressionValue(empty2, "empty(...)");
        return empty2;
    }
}
