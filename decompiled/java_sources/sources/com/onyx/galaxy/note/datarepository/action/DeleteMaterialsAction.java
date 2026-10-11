package com.onyx.galaxy.note.datarepository.action;

import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.datarepository.bean.LibraryBean;
import com.onyx.galaxy.note.datarepository.event.StickerChangeEvent;
import com.onyx.galaxy.note.datarepository.event.TemplateChangeEvent;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;", "library", "l", "", "e", "Ljava/util/List;", "getLibraryList", "()Ljava/util/List;", "libraryList", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DeleteMaterialsAction extends RxBaseAction<DeleteMaterialsAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<LibraryBean> libraryList;

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DeleteMaterialsAction$a */
    /* loaded from: classes9.dex */
    public static final class C11719a<T, R> implements Function {
        public C11719a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends LibraryBean> apply(@NotNull LibraryBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteMaterialsAction.this.m45407l(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DeleteMaterialsAction$b */
    /* loaded from: classes9.dex */
    public static final class C11720b<T, R> implements Function {
        public C11720b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteMaterialsAction apply(@NotNull LibraryBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteMaterialsAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DeleteMaterialsAction$c */
    /* loaded from: classes9.dex */
    public static final class C11721c<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ LibraryBean f57976e;

        public C11721c(LibraryBean libraryBean) {
            this.f57976e = libraryBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LibraryBean apply(@NotNull DeleteMaterialsCoverAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f57976e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DeleteMaterialsAction$d */
    /* loaded from: classes9.dex */
    public static final class C11722d<T> implements Consumer {

        /* renamed from: e */
        public static final C11722d<T> f57977e = new C11722d<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LibraryBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new TemplateChangeEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DeleteMaterialsAction$e */
    /* loaded from: classes9.dex */
    public static final class C11723e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ LibraryBean f57978e;

        public C11723e(LibraryBean libraryBean) {
            this.f57978e = libraryBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LibraryBean apply(@NotNull DeleteMaterialsPaperAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f57978e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DeleteMaterialsAction$f */
    /* loaded from: classes9.dex */
    public static final class C11724f<T> implements Consumer {

        /* renamed from: e */
        public static final C11724f<T> f57979e = new C11724f<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LibraryBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new TemplateChangeEvent());
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DeleteMaterialsAction$g */
    /* loaded from: classes9.dex */
    public static final class C11725g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ LibraryBean f57980e;

        public C11725g(LibraryBean libraryBean) {
            this.f57980e = libraryBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LibraryBean apply(@NotNull DeleteMaterialsStickerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f57980e;
        }
    }

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DeleteMaterialsAction$h */
    /* loaded from: classes9.dex */
    public static final class C11726h<T> implements Consumer {

        /* renamed from: e */
        public static final C11726h<T> f57981e = new C11726h<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LibraryBean it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GlobalBundle.INSTANCE.postEvent(new StickerChangeEvent());
        }
    }

    public DeleteMaterialsAction(@NotNull List<LibraryBean> libraryList) {
        Intrinsics.checkNotNullParameter(libraryList, "libraryList");
        this.libraryList = libraryList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DeleteMaterialsAction> create() {
        if (this.libraryList.isEmpty()) {
            Observable<DeleteMaterialsAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.fromIterable(this.libraryList).concatMap(new C11719a());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<DeleteMaterialsAction> map = RxjavaKt.takeLastOne(concatMap).map(new C11720b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<LibraryBean> getLibraryList() {
        return this.libraryList;
    }

    /* renamed from: l */
    public final Observable<LibraryBean> m45407l(LibraryBean library) {
        if (Intrinsics.areEqual(library.getResourceType(), com.onyx.galaxy.note.datarepository.constants.Constants.RESOURCE_TYPE_TEMPLATE)) {
            if (library.getType() == 3) {
                Observable<LibraryBean> doOnNext = new DeleteMaterialsCoverAction(library.getId()).build().map(new C11721c(library)).doOnNext(C11722d.f57977e);
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                return doOnNext;
            }
            if (library.getType() == 2) {
                Observable<LibraryBean> doOnNext2 = new DeleteMaterialsPaperAction(library.getId()).build().map(new C11723e(library)).doOnNext(C11724f.f57979e);
                Intrinsics.checkNotNullExpressionValue(doOnNext2, "doOnNext(...)");
                return doOnNext2;
            }
        } else if (Intrinsics.areEqual(library.getResourceType(), com.onyx.galaxy.note.datarepository.constants.Constants.RESOURCE_TYPE_STICKER)) {
            Observable<LibraryBean> doOnNext3 = new DeleteMaterialsStickerAction(library.getId()).build().map(new C11725g(library)).doOnNext(C11726h.f57981e);
            Intrinsics.checkNotNullExpressionValue(doOnNext3, "doOnNext(...)");
            return doOnNext3;
        }
        Observable<LibraryBean> just = Observable.just(library);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }
}
