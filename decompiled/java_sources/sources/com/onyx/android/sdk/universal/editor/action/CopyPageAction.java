package com.onyx.android.sdk.universal.editor.action;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.note.request.page.CopyNotePageRequest;
import com.onyx.android.sdk.replicator.note.p035db.model.PageTagModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.CopyPageAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.tag.SavePageTagModelAction;
import com.onyx.android.sdk.universal.editor.data.CopyPageArgs;
import com.onyx.android.sdk.universal.editor.data.EditorAnimatorContext;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.app.CopyPageBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.CopyPageEndEvent;
import com.onyx.android.sdk.universal.editor.events.app.PageCopiedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.CopyVirtualPageRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\f¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0002R\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;", "copyArgs", "Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, AbstractLogger.REQUEST, "m", "q", "", C6999h.f39688c, "Ljava/util/List;", "getCopyArgsList", "()Ljava/util/List;", "copyArgsList", "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;", "i", "Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;", "context", "", "j", Constants.STRING_SIG, CouchFieldKey.KEY_TOC_PAGE_ID, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CopyPageAction extends RxBaseAppAction<CopyPageAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<CopyPageArgs> copyArgsList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public EditorAnimatorContext context;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public String pageId;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.CopyPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C8178a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ CopyVirtualPageRequest f47598e;

        public C8178a(CopyVirtualPageRequest copyVirtualPageRequest) {
            this.f47598e = copyVirtualPageRequest;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CopyVirtualPageRequest apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f47598e;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.CopyPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C8179b<T, R> implements Function {
        public C8179b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CopyVirtualPageRequest> apply(@NotNull CopyVirtualPageRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyPageAction.this.m36748m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.CopyPageAction$c */
    /* loaded from: classes8.dex */
    public static final class C8180c<T> implements Consumer {
        public C8180c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull CopyPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(CopyPageAction.this.getEditorBundle(), new CopyPageBeginEvent(CopyPageAction.this.getCopyArgsList()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.CopyPageAction$d */
    /* loaded from: classes8.dex */
    public static final class C8181d<T, R> implements Function {
        public C8181d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CopyPageArgs> apply(@NotNull CopyPageAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Observable.fromIterable(CopyPageAction.this.getCopyArgsList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.CopyPageAction$e */
    /* loaded from: classes8.dex */
    public static final class C8182e<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.CopyPageAction$e$a */
        /* loaded from: classes8.dex */
        public static final class a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ CopyPageAction f47603e;

            /* renamed from: f */
            public final /* synthetic */ CopyPageArgs f47604f;

            public a(CopyPageAction copyPageAction, CopyPageArgs copyPageArgs) {
                this.f47603e = copyPageAction;
                this.f47604f = copyPageArgs;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends CopyVirtualPageRequest> apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f47603e.m36749n(this.f47604f);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.CopyPageAction$e$b */
        /* loaded from: classes8.dex */
        public static final class b<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ CopyPageAction f47605e;

            public b(CopyPageAction copyPageAction) {
                this.f47605e = copyPageAction;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull CopyVirtualPageRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f47605e.pageId = it2.getCopyPage().getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId();
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.CopyPageAction$e$c */
        /* loaded from: classes8.dex */
        public static final class c<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ CopyPageAction f47606e;

            public c(CopyPageAction copyPageAction) {
                this.f47606e = copyPageAction;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends CopyPageAction> apply(@NotNull CopyVirtualPageRequest it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return this.f47606e.m36751q(it2);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.CopyPageAction$e$d */
        /* loaded from: classes8.dex */
        public static final class d<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ CopyPageAction f47607e;

            public d(CopyPageAction copyPageAction) {
                this.f47607e = copyPageAction;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Object> apply(@NotNull CopyPageAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return DocCommonActionsKt.saveDocInfo(this.f47607e);
            }
        }

        public C8182e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull CopyPageArgs copyArgs) {
            Intrinsics.checkNotNullParameter(copyArgs, "copyArgs");
            return EditorBundleKt.prepareBoxAnimation(CopyPageAction.this.getEditorBundle(), CopyPageAction.this.context, EditorAnimatorContext.AnimationType.APPEND).flatMap(new a(CopyPageAction.this, copyArgs)).doOnNext(new b(CopyPageAction.this)).flatMap(new c(CopyPageAction.this)).flatMap(new d(CopyPageAction.this));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.CopyPageAction$f */
    /* loaded from: classes8.dex */
    public static final class C8183f<T, R> implements Function {
        public C8183f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CopyPageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyPageAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.CopyPageAction$g */
    /* loaded from: classes8.dex */
    public static final class C8184g<T, R> implements Function {
        public C8184g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CopyPageAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return CopyPageAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CopyPageAction(@NotNull EditorBundle editorBundle, @NotNull List<CopyPageArgs> copyArgsList) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(copyArgsList, "copyArgsList");
        this.copyArgsList = copyArgsList;
        this.context = new EditorAnimatorContext();
        this.pageId = "";
    }

    /* renamed from: p */
    public static final void m36747p(CopyPageAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new CopyPageEndEvent(this$0.copyArgsList));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<CopyPageAction> create() {
        if (this.copyArgsList.isEmpty()) {
            Observable<CopyPageAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable concatMap = Observable.just(this).doOnNext(new C8180c()).flatMap(new C8181d()).concatMap(new C8182e());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<CopyPageAction> doFinally = RxjavaKt.flatMapIf(RxjavaKt.takeLastOne(concatMap), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.CopyPageAction$create$4
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Object first;
                Intrinsics.checkNotNullParameter(it2, "it");
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) CopyPageAction.this.getCopyArgsList());
                return Boolean.valueOf(((CopyPageArgs) first).getDoAnimation());
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.CopyPageAction$create$5
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                CopyPageAction copyPageAction = CopyPageAction.this;
                return DisplayActionsKt.displayWithBoxAnimation(copyPageAction, copyPageAction.context);
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.CopyPageAction$create$6
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return DisplayActionsKt.display(CopyPageAction.this);
            }
        }).map(new C8183f()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.pce
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                CopyPageAction.m36747p(CopyPageAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @NotNull
    public final List<CopyPageArgs> getCopyArgsList() {
        return this.copyArgsList;
    }

    /* renamed from: m */
    public final Observable<CopyVirtualPageRequest> m36748m(final CopyVirtualPageRequest request) {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(request.getPagePair().getFirst().getBox(), request.getPagePair().getSecond().getBox());
        Observable<CopyVirtualPageRequest> map = DocCommonActionsKt.createNoteObservable(getEditorBundle(), new Function1<NoteBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.CopyPageAction$copyNotePage$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NoteBundle noteBundle) {
                invoke2(noteBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                new CopyNotePageRequest(EditorBundleKt.noteBundle(CopyPageAction.this.getEditorBundle()), linkedHashMap).execute2();
                NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(it2.getNoteDoc(), request.getCopyPage().getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
                Intrinsics.checkNotNull(notePage);
                it2.postEvent(new PageCopiedEvent(request.getCopyArgs().getDstIndex(), request.getCopyPage(), notePage));
            }
        }).map(new C8178a(request));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<CopyVirtualPageRequest> m36749n(CopyPageArgs copyArgs) {
        Observable flatMap = m36750o(copyArgs).flatMap(new C8179b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: o */
    public final Observable<CopyVirtualPageRequest> m36750o(CopyPageArgs copyArgs) {
        final CopyVirtualPageRequest copyVirtualPageRequest = new CopyVirtualPageRequest(getEditorBundle().getWorkBundle());
        copyVirtualPageRequest.setCopyArgs(CopyPageArgs.copy$default(copyArgs, 0, 0, false, 7, null));
        return DocCommonActionsKt.createLightCoreObservable(getEditorBundle(), new Function1<WorkBundle, CopyVirtualPageRequest>() { // from class: com.onyx.android.sdk.universal.editor.action.CopyPageAction$copyVirtualPage$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CopyVirtualPageRequest invoke(@NotNull WorkBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                CopyVirtualPageRequest copyVirtualPageRequest2 = CopyVirtualPageRequest.this;
                copyVirtualPageRequest2.execute2();
                return copyVirtualPageRequest2;
            }
        });
    }

    /* renamed from: q */
    public final Observable<CopyPageAction> m36751q(CopyVirtualPageRequest request) {
        final VirtualPage copyPage = request.getCopyPage();
        Observable map = RxjavaKt.flatMapIf(DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, List<? extends Shape>>() { // from class: com.onyx.android.sdk.universal.editor.action.CopyPageAction$savePageTagModelIfNeeded$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final List<Shape> invoke(@NotNull NoteBundle it2) {
                ArrayList arrayList;
                List<Shape> emptyList;
                List<Shape> shapeList;
                Intrinsics.checkNotNullParameter(it2, "it");
                NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(EditorBundleKt.noteBundle(CopyPageAction.this.getEditorBundle()).getNoteDoc(), copyPage.getBox().getId());
                if (notePage == null || (shapeList = notePage.getShapeList()) == null) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList();
                    for (Object obj : shapeList) {
                        if (ShapeKt.isTagShape((Shape) obj)) {
                            arrayList.add(obj);
                        }
                    }
                }
                if (arrayList != null) {
                    return arrayList;
                }
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
        }), new Function1<List<? extends Shape>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.CopyPageAction$savePageTagModelIfNeeded$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }
        }, new Function1<List<? extends Shape>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.CopyPageAction$savePageTagModelIfNeeded$3

            /* renamed from: com.onyx.android.sdk.universal.editor.action.CopyPageAction$savePageTagModelIfNeeded$3$a */
            /* loaded from: classes8.dex */
            public static final class C8185a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ CopyPageAction f47610e;

                public C8185a(CopyPageAction copyPageAction) {
                    this.f47610e = copyPageAction;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends List<PageTagModel>> apply(@NotNull Shape it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new SavePageTagModelAction(this.f47610e.getEditorBundle(), it2.getPageUniqueId(), ShapeOptions.INSTANCE.getTagBean(it2)).build();
                }
            }

            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull List<? extends Shape> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable concatMap = Observable.fromIterable(it2).concatMap(new C8185a(CopyPageAction.this));
                Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
                return RxjavaKt.takeLastOne(concatMap);
            }
        }).map(new C8184g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
