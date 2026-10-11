package com.onyx.galaxy.note.category.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.SearchProgressResult;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.OpenDocumentDataAction;
import com.onyx.android.sdk.universal.editor.action.doc.CloseDocumentAction;
import com.onyx.android.sdk.universal.editor.action.search.SearchTextAction;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.data.OpenDocArgs;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.category.action.SearchNoteAction;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B%\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b+\u0010,J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00000\u0004H\u0002J\u001c\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002J\u001c\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0002R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R3\u0010\u001e\u001a!\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 \u001a*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u00020\u0019¢\u0006\u0002\b\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/SearchNoteAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "s", "x", "u", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "q", "v", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6999h.f39688c, "Ljava/util/List;", "noteModels", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "i", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "j", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "publisher", "Lio/reactivex/rxjava3/disposables/Disposable;", C4921e.f26537n, "Lio/reactivex/rxjava3/disposables/Disposable;", "dispose", "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;", "l", "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;", "getResult", "()Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;", "setResult", "(Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;)V", Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SearchNoteAction extends BaseNoteManagementAction<List<? extends NoteSearchBean>> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> noteModels;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final NoteSearchArgs noteSearchArgs;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final ReplaySubject<List<NoteSearchBean>> publisher;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public Disposable dispose;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public SearchProgressResult result;

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteAction$a */
    /* loaded from: classes9.dex */
    public static final class C10968a<T> implements Consumer {
        public C10968a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchNoteAction.this.m42520s();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteAction$b */
    /* loaded from: classes9.dex */
    public static final class C10969b<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f53986e;

        /* renamed from: f */
        public final /* synthetic */ SyncNoteModel f53987f;

        public C10969b(EditorBundle editorBundle, SyncNoteModel syncNoteModel) {
            this.f53986e = editorBundle;
            this.f53987f = syncNoteModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends OpenDocumentDataAction> apply(@NotNull SearchNoteAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new OpenDocumentDataAction(this.f53986e, OpenDocArgs.INSTANCE.createFrom(this.f53987f)).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteAction$c */
    /* loaded from: classes9.dex */
    public static final class C10970c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ SyncNoteModel f53989f;

        /* renamed from: g */
        public final /* synthetic */ EditorBundle f53990g;

        public C10970c(SyncNoteModel syncNoteModel, EditorBundle editorBundle) {
            this.f53989f = syncNoteModel;
            this.f53990g = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull OpenDocumentDataAction it2) {
            List emptyList;
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchNoteAction.this.getResult().setCurrentSearchId(this.f53989f.getUniqueId());
            SearchProgressResult result = SearchNoteAction.this.getResult();
            String title = this.f53989f.getTitle();
            if (title == null) {
                title = "";
            }
            result.setCurrentSearchName(title);
            SearchNoteAction.this.getResult().setMaxSearchProgress(EditorBundleKt.pageCount(this.f53990g));
            ReplaySubject replaySubject = SearchNoteAction.this.publisher;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            replaySubject.onNext(emptyList);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteAction$d */
    /* loaded from: classes9.dex */
    public static final class C10971d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ EditorBundle f53992f;

        /* renamed from: g */
        public final /* synthetic */ SyncNoteModel f53993g;

        public C10971d(EditorBundle editorBundle, SyncNoteModel syncNoteModel) {
            this.f53992f = editorBundle;
            this.f53993g = syncNoteModel;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull OpenDocumentDataAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchNoteAction.this.m42522v(this.f53992f, this.f53993g);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteAction$e */
    /* loaded from: classes9.dex */
    public static final class C10972e<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ EditorBundle f53994e;

        public C10972e(EditorBundle editorBundle) {
            this.f53994e = editorBundle;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CloseDocumentAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CloseDocumentAction(this.f53994e, false, false, 4, null).build();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteAction$f */
    /* loaded from: classes9.dex */
    public static final class C10973f<T, R> implements Function {
        public C10973f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SearchNoteAction apply(@NotNull CloseDocumentAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchNoteAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteAction$g */
    /* loaded from: classes9.dex */
    public static final class C10974g<T> implements Consumer {
        public C10974g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchNoteAction.this.publisher.onError(it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteAction$h */
    /* loaded from: classes9.dex */
    public static final class C10975h<T, R> implements Function {
        public C10975h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SearchNoteAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchNoteAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteAction$i */
    /* loaded from: classes9.dex */
    public static final class C10976i<T, R> implements Function {
        public C10976i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SearchNoteAction apply(@NotNull List<NoteSearchBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchNoteAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteAction$j */
    /* loaded from: classes9.dex */
    public static final class C10977j<T> implements Consumer {
        public C10977j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchNoteAction.this.publisher.onNext(NoteSearchBean.INSTANCE.from(it2));
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteAction$k */
    /* loaded from: classes9.dex */
    public static final class C10978k<T, R> implements Function {
        public C10978k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SearchNoteAction apply(@NotNull List<SyncNoteModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchNoteAction.this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SearchNoteAction(@NotNull EditorBundle editorBundle, @NotNull List<? extends SyncNoteModel> noteModels, @NotNull NoteSearchArgs noteSearchArgs) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(noteModels, "noteModels");
        Intrinsics.checkNotNullParameter(noteSearchArgs, "noteSearchArgs");
        this.editorBundle = editorBundle;
        this.noteModels = noteModels;
        this.noteSearchArgs = noteSearchArgs;
        ReplaySubject<List<NoteSearchBean>> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.publisher = create;
        this.result = new SearchProgressResult();
    }

    /* renamed from: p */
    public static final void m42515p(SearchNoteAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Disposable disposable = this$0.dispose;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: r */
    public static final void m42516r(EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "$editorBundle");
        RxBaseAction.execute$default(new CloseDocumentAction(editorBundle, false, false, 4, null), null, null, null, 7, null);
    }

    /* renamed from: t */
    public static final void m42517t(SearchNoteAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.publisher.onComplete();
    }

    /* renamed from: w */
    public static final void m42518w(SearchNoteAction this$0, List it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.publisher.onNext(it2);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<NoteSearchBean>> create() {
        Observable<List<NoteSearchBean>> doOnDispose = this.publisher.doOnSubscribe(new C10968a()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.v6m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SearchNoteAction.m42515p(SearchNoteAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return doOnDispose;
    }

    @NotNull
    public final SearchProgressResult getResult() {
        return this.result;
    }

    /* renamed from: q */
    public final Observable<?> m42519q(final EditorBundle editorBundle, SyncNoteModel noteModel) {
        Observable flatMap = Observable.just(this).flatMap(new C10969b(editorBundle, noteModel)).doOnNext(new C10970c(noteModel, editorBundle)).flatMap(new C10971d(editorBundle, noteModel));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable doOnDispose = RxjavaKt.takeLastOne(RxjavaKt.onErrorReturnItemWithLog(flatMap, this)).flatMap(new C10972e(editorBundle)).map(new C10973f()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.w6m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SearchNoteAction.m42516r(EditorBundle.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doOnDispose, "doOnDispose(...)");
        return RxjavaKt.onErrorReturnItemWithLog(doOnDispose, this);
    }

    /* renamed from: s */
    public final void m42520s() {
        List emptyList;
        if (!this.noteModels.isEmpty()) {
            this.dispose = Observable.concat(m42523x(), m42521u()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.x6m
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    SearchNoteAction.m42517t(SearchNoteAction.this);
                }
            }).doOnError(new C10974g()).subscribe();
            return;
        }
        ReplaySubject<List<NoteSearchBean>> replaySubject = this.publisher;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        RxjavaKt.done(replaySubject, emptyList);
    }

    public final void setResult(@NotNull SearchProgressResult searchProgressResult) {
        Intrinsics.checkNotNullParameter(searchProgressResult, "<set-?>");
        this.result = searchProgressResult;
    }

    /* renamed from: u */
    public final Observable<SearchNoteAction> m42521u() {
        Observable just = Observable.just(this.noteModels);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        Observable<R> map = RxjavaKt.flatMapIf(just, new Function1<List<? extends SyncNoteModel>, Boolean>() { // from class: com.onyx.galaxy.note.category.action.SearchNoteAction$searchNoteText$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends SyncNoteModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(CollectionKt.isNonBlank(it2));
            }
        }, new Function1<List<? extends SyncNoteModel>, Observable<? extends Object>>() { // from class: com.onyx.galaxy.note.category.action.SearchNoteAction$searchNoteText$2

            /* renamed from: com.onyx.galaxy.note.category.action.SearchNoteAction$searchNoteText$2$a */
            /* loaded from: classes9.dex */
            public static final class C10979a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ SearchNoteAction f54001e;

                public C10979a(SearchNoteAction searchNoteAction) {
                    this.f54001e = searchNoteAction;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends Object> apply(@NotNull SyncNoteModel it2) {
                    EditorBundle editorBundle;
                    Observable m42519q;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    SearchNoteAction searchNoteAction = this.f54001e;
                    editorBundle = searchNoteAction.editorBundle;
                    m42519q = searchNoteAction.m42519q(editorBundle, it2);
                    return m42519q;
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull List<? extends SyncNoteModel> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                Observable concatMap = Observable.fromIterable(list).concatMap(new C10979a(SearchNoteAction.this));
                Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
                return RxjavaKt.takeLastOne(concatMap);
            }
        }).map(new C10975h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }

    /* renamed from: v */
    public final Observable<?> m42522v(EditorBundle editorBundle, SyncNoteModel noteModel) {
        Observable<?> map = RxjavaKt.doOnNextIf(new SearchTextAction(editorBundle, noteModel, this.noteSearchArgs).build(), new Function1<List<? extends NoteSearchBean>, Boolean>() { // from class: com.onyx.galaxy.note.category.action.SearchNoteAction$searchNoteTextImpl$1
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<NoteSearchBean> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends NoteSearchBean> list) {
                return invoke2((List<NoteSearchBean>) list);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.y6m
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                SearchNoteAction.m42518w(SearchNoteAction.this, (List) obj);
            }
        }).map(new C10976i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: x */
    public final Observable<SearchNoteAction> m42523x() {
        Observable<R> map = new SearchNoteTitleAction(this.noteModels, this.noteSearchArgs.getKeyword()).build().doOnNext(new C10977j()).map(new C10978k());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }
}
