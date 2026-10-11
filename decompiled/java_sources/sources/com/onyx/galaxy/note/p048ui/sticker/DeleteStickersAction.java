package com.onyx.galaxy.note.p048ui.sticker;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.sticker.action.DeleteStickerAction;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.sticker.DeleteStickersAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0017\u0010\u0018J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000eR\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u000e¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "mainCategory", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", C6998g.f39679a, "Ljava/util/List;", "stickers", "", C6999h.f39688c, "selections", "i", "selectedStickers", "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;", "bundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDeleteStickersAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeleteStickersAction.kt\ncom/onyx/galaxy/note/ui/sticker/DeleteStickersAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n766#2:47\n857#2,2:48\n*S KotlinDebug\n*F\n+ 1 DeleteStickersAction.kt\ncom/onyx/galaxy/note/ui/sticker/DeleteStickersAction\n*L\n16#1:47\n16#1:48,2\n*E\n"})
/* loaded from: classes9.dex */
public final class DeleteStickersAction extends StickerUiBaseAction<Object> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final StickerCategoryModel mainCategory;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<StickerModel> stickers;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<StickerModel> selections;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<StickerModel> selectedStickers;

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteStickersAction$a */
    /* loaded from: classes9.dex */
    public static final class C12793a<T, R> implements Function {
        public C12793a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull StickerUiBaseAction<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new ShowConfirmDialogAction(DeleteStickersAction.this.getBundle().getActivityContext(), C10651R.string.sticker_delete_sticker_title, C10651R.string.sticker_delete_sticker_confirm).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteStickersAction$b */
    /* loaded from: classes9.dex */
    public static final class C12794b<T> implements Predicate {

        /* renamed from: e */
        public static final C12794b<T> f62083e = new C12794b<>();

        /* renamed from: a */
        public final boolean m51374a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m51374a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteStickersAction$c */
    /* loaded from: classes9.dex */
    public static final class C12795c<T> implements Consumer {
        public C12795c() {
        }

        /* renamed from: a */
        public final void m51375a(boolean z) {
            DeleteStickersAction.this.getBundle().postEvent(new DeleteStickerStartEvent());
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m51375a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteStickersAction$d */
    /* loaded from: classes9.dex */
    public static final class C12796d<T, R> implements Function {
        public C12796d() {
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends StickerModel> m51376a(boolean z) {
            return Observable.fromIterable(DeleteStickersAction.this.selectedStickers);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m51376a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.ui.sticker.DeleteStickersAction$e */
    /* loaded from: classes9.dex */
    public static final class C12797e<T, R> implements Function {

        /* renamed from: e */
        public static final C12797e<T, R> f62086e = new C12797e<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull StickerModel sticker) {
            Intrinsics.checkNotNullParameter(sticker, "sticker");
            return new DeleteStickerAction(sticker).build();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeleteStickersAction(@NotNull StickerUiBundle bundle, @NotNull StickerCategoryModel mainCategory, @NotNull List<StickerModel> stickers) {
        super(bundle);
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(mainCategory, "mainCategory");
        Intrinsics.checkNotNullParameter(stickers, "stickers");
        this.mainCategory = mainCategory;
        this.stickers = stickers;
        this.selections = bundle.getSelectedItems(mainCategory);
        ArrayList arrayList = new ArrayList();
        for (Object obj : stickers) {
            if (this.selections.contains((StickerModel) obj)) {
                arrayList.add(obj);
            }
        }
        this.selectedStickers = arrayList;
    }

    /* renamed from: m */
    public static final void m51371m(DeleteStickersAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m51372n();
        this$0.getBundle().postEvent(new DeleteStickerDoneEvent());
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Object> create() {
        Observable<Object> doFinally = createObservable().flatMap(new C12793a()).filter(C12794b.f62083e).doOnNext(new C12795c()).flatMap(new C12796d()).flatMap(C12797e.f62086e).doFinally(new Action() { // from class: com.sunia.HTREnginev2.n3f
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                DeleteStickersAction.m51371m(DeleteStickersAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: n */
    public final void m51372n() {
        getBundle().deleteSelectedStickers(this.mainCategory);
    }
}
