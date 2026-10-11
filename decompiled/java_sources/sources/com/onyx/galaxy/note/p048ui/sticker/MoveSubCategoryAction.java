package com.onyx.galaxy.note.p048ui.sticker;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.sticker.action.MoveCategoryAction;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.sticker.MoveSubCategoryAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "mainCategory", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", C6998g.f39679a, "Ljava/util/List;", "stickers", "", C6999h.f39688c, Constants.STRING_SIG, "newCategoryId", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MoveSubCategoryAction extends StickerUiBaseAction<Object> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StickerCategoryModel mainCategory;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<StickerModel> stickers;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String newCategoryId;

    /* renamed from: com.onyx.galaxy.note.ui.sticker.MoveSubCategoryAction$a */
    /* loaded from: classes9.dex */
    public static final class C12815a<T, R> implements Function {
        public C12815a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StickerCategoryModel> apply(@NotNull StickerUiBaseAction<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new SelectSubCategoryAction(MoveSubCategoryAction.this.getBundle(), MoveSubCategoryAction.this.mainCategory.getSubCategory()).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.MoveSubCategoryAction$b */
    /* loaded from: classes9.dex */
    public static final class C12816b<T, R> implements Function {
        public C12816b() {
        }

        /* renamed from: a */
        public final void m51405a(@NotNull StickerCategoryModel sub) {
            Intrinsics.checkNotNullParameter(sub, "sub");
            MoveSubCategoryAction.this.newCategoryId = sub.getUniqueId();
            if (sub.getType() == -1) {
                MoveSubCategoryAction.this.newCategoryId = sub.getParentUniqueId();
            }
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m51405a((StickerCategoryModel) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.MoveSubCategoryAction$c */
    /* loaded from: classes9.dex */
    public static final class C12817c<T> implements Consumer {
        public C12817c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            MoveSubCategoryAction.this.getBundle().postEvent(new MoveStickerStartEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.MoveSubCategoryAction$d */
    /* loaded from: classes9.dex */
    public static final class C12818d<T, R> implements Function {
        public C12818d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends StickerModel> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(MoveSubCategoryAction.this.stickers);
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.MoveSubCategoryAction$e */
    /* loaded from: classes9.dex */
    public static final class C12819e<T, R> implements Function {
        public C12819e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull StickerModel it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new MoveCategoryAction(it2, MoveSubCategoryAction.this.newCategoryId).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.MoveSubCategoryAction$f */
    /* loaded from: classes9.dex */
    public static final class C12820f<T, R> implements Function {
        public C12820f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        public final Object apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return MoveSubCategoryAction.this.m51403n();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.MoveSubCategoryAction$g */
    /* loaded from: classes9.dex */
    public static final class C12821g<T> implements Consumer {

        /* renamed from: e */
        public static final C12821g<T> f62118e = new C12821g<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.sticker_category_move_success, false, 2, (Object) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MoveSubCategoryAction(@NotNull StickerUiBundle bundle, @NotNull StickerCategoryModel mainCategory, @NotNull List<StickerModel> stickers) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        Intrinsics.checkNotNullParameter(stickers, "stickers");
        this.mainCategory = mainCategory;
        this.stickers = stickers;
        this.newCategoryId = "";
    }

    /* renamed from: m */
    public static final void m51402m(MoveSubCategoryAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBundle().postEvent(new MoveStickerDoneEvent());
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable map = createObservable().flatMap(new C12815a()).map(new C12816b()).doOnNext(new C12817c()).flatMap(new C12818d()).flatMap(new C12819e()).map(new C12820f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable<Object> doFinally = RxjavaKt.takeLastOne(map).doOnNext(C12821g.f62118e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.cpj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                MoveSubCategoryAction.m51402m(MoveSubCategoryAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: n */
    public final Object m51403n() {
        getBundle().clearSelectedItems(this.mainCategory);
        return this;
    }
}
