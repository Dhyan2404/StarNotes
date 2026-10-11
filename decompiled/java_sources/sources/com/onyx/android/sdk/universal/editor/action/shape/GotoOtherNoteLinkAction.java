package com.onyx.android.sdk.universal.editor.action.shape;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.p035db.NoteModelProviderKt;
import com.onyx.android.sdk.replicator.note.p035db.NoteProvider;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.events.note.GotoShapeLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u001cJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\f\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\nH\u0002J\u0014\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\r\u001a\u00020\fH\u0002J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\r\u001a\u00020\fH\u0002J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\r\u001a\u00020\fH\u0002J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\r\u001a\u00020\fH\u0002J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\r\u001a\u00020\fH\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "exist", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "linkBean", "", "q", "Lio/reactivex/rxjava3/core/ObservableSource;", "p", "Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;", "docBean", "r", GoogleApiAvailabilityLight.f29016b, "l", "m", C4921e.f26528e, "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;", "editorBundleManager", "i", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGotoOtherNoteLinkAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GotoOtherNoteLinkAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,116:1\n1#2:117\n41#3,5:118\n*S KotlinDebug\n*F\n+ 1 GotoOtherNoteLinkAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/GotoOtherNoteLinkAction\n*L\n56#1:118,5\n*E\n"})
/* loaded from: classes8.dex */
public final class GotoOtherNoteLinkAction extends RxBaseAppAction<GotoOtherNoteLinkAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final EditorBundleManager editorBundleManager;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ShapeLinkBean linkBean;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$a */
    /* loaded from: classes8.dex */
    public static final class C10071a<T, R> implements Function {

        /* renamed from: e */
        public static final C10071a<T, R> f50876e = new C10071a<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.valueOf(Intrinsics.areEqual(it2, Boolean.TRUE));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$b */
    /* loaded from: classes8.dex */
    public static final class C10072b<T, R> implements Function {
        public C10072b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull GotoOtherNoteLinkAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoOtherNoteLinkAction.this.m40203p();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$c */
    /* loaded from: classes8.dex */
    public static final class C10073c<T, R> implements Function {
        public C10073c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoOtherNoteLinkAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoOtherNoteLinkAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$d */
    /* loaded from: classes8.dex */
    public static final class C10077d<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ LinkDocBean f50880f;

        public C10077d(LinkDocBean linkDocBean) {
            this.f50880f = linkDocBean;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Boolean> m40209a(boolean z) {
            return GotoOtherNoteLinkAction.this.m40199l(this.f50880f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m40209a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$e */
    /* loaded from: classes8.dex */
    public static final class C10078e<T, R> implements Function {
        public C10078e() {
        }

        /* renamed from: a */
        public final void m40210a(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GotoOtherNoteLinkAction.this.m40204q(Intrinsics.areEqual(it2, Boolean.TRUE), GotoOtherNoteLinkAction.this.linkBean);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m40210a(obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoOtherNoteLinkAction(@NotNull EditorBundle editorBundle, @NotNull EditorBundleManager editorBundleManager, @NotNull ShapeLinkBean linkBean) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(editorBundleManager, "editorBundleManager");
        Intrinsics.checkNotNullParameter(linkBean, "linkBean");
        this.editorBundleManager = editorBundleManager;
        this.linkBean = linkBean;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GotoOtherNoteLinkAction> create() {
        Observable<GotoOtherNoteLinkAction> map = Observable.just(this).flatMap(new C10072b()).map(new C10073c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: l */
    public final Observable<Boolean> m40199l(final LinkDocBean docBean) {
        return DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$checkNoteExist$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteProvider noteProvider = EditorBundleKt.noteBundle(GotoOtherNoteLinkAction.this.getEditorBundle()).getNoteDoc().getNoteProvider();
                final LinkDocBean linkDocBean = docBean;
                return Boolean.valueOf(NoteModelProviderKt.hasNoteData(noteProvider, new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$checkNoteExist$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                        invoke2(cBQueryArgs);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull CBQueryArgs hasNoteData) {
                        Intrinsics.checkNotNullParameter(hasNoteData, "$this$hasNoteData");
                        CouchUtils couchUtils = CouchUtils.INSTANCE;
                        String documentId = LinkDocBean.this.getDocumentId();
                        if (documentId == null) {
                            documentId = "";
                        }
                        hasNoteData.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, documentId));
                    }
                }));
            }
        });
    }

    /* renamed from: m */
    public final Observable<Boolean> m40200m(final LinkDocBean docBean) {
        return DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$checkPageExist$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteProviderHolder.Companion companion = NoteProviderHolder.INSTANCE;
                String documentId = LinkDocBean.this.getDocumentId();
                if (documentId == null) {
                    documentId = "";
                }
                final LinkDocBean linkDocBean = LinkDocBean.this;
                return (Boolean) NoteProviderHolder.Companion.withOnce$default(companion, null, null, documentId, new Function1<NoteProviderHolder, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$checkPageExist$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull NoteProviderHolder it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        VirtualModelProvider virtualModelProvider = it3.getVirtualModelProvider();
                        String pageId = LinkDocBean.this.getPageId();
                        if (pageId == null) {
                            pageId = "";
                        }
                        return Boolean.valueOf(virtualModelProvider.checkPageExist(pageId));
                    }
                }, 3, null);
            }
        });
    }

    /* renamed from: n */
    public final Observable<Boolean> m40201n(final LinkDocBean docBean) {
        Observable just = Observable.just(Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        Observable map = RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(just, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$checkPageOrShapeExist$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(GotoOtherNoteLinkAction.this.linkBean.isLinkPageShapeType());
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$checkPageOrShapeExist$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it2) {
                Observable<? extends Object> m40202o;
                Intrinsics.checkNotNullParameter(it2, "it");
                m40202o = GotoOtherNoteLinkAction.this.m40202o(docBean);
                return m40202o;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$checkPageOrShapeExist$3
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!GotoOtherNoteLinkAction.this.linkBean.isLinkPageShapeType());
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$checkPageOrShapeExist$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Observable<? extends Object> m40200m;
                Intrinsics.checkNotNullParameter(it2, "it");
                m40200m = GotoOtherNoteLinkAction.this.m40200m(docBean);
                return m40200m;
            }
        }).map(C10071a.f50876e);
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final Observable<Boolean> m40202o(final LinkDocBean docBean) {
        return DocCommonActionsKt.createNoteObservable(this, new Function1<NoteBundle, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$checkShapeExist$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                NoteProviderHolder.Companion companion = NoteProviderHolder.INSTANCE;
                String documentId = LinkDocBean.this.getDocumentId();
                if (documentId == null) {
                    documentId = "";
                }
                final LinkDocBean linkDocBean = LinkDocBean.this;
                return (Boolean) NoteProviderHolder.Companion.withOnce$default(companion, null, null, documentId, new Function1<NoteProviderHolder, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$checkShapeExist$1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull NoteProviderHolder it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        String documentId2 = LinkDocBean.this.getDocumentId();
                        if (documentId2 == null) {
                            documentId2 = "";
                        }
                        return Boolean.valueOf(it3.getNoteShapeProvider().loadShapeCount(ShapeQueryArgsExtKt.loadShapeListQuery(documentId2, 0).andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, CollectionKt.ensureList(LinkDocBean.this.getShapeIdList())))) > 0);
                    }
                }, 3, null);
            }
        });
    }

    /* renamed from: p */
    public final ObservableSource<?> m40203p() {
        Object obj;
        final LinkDocBean docBean = this.linkBean.getDocBean();
        if (docBean == null) {
            Observable just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Iterator<T> it2 = this.editorBundleManager.getImmutableEditorBundleList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            EditorBundle editorBundle = (EditorBundle) obj;
            if (Intrinsics.areEqual(EditorBundleKt.docId(editorBundle), docBean.getDocumentId()) && EditorBundleKt.isOwner(editorBundle)) {
                break;
            }
        }
        final EditorBundle editorBundle2 = (EditorBundle) obj;
        Observable just2 = Observable.just(Boolean.valueOf(editorBundle2 != null));
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return RxjavaKt.flatMapIf(just2, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$gotoOtherDocNote$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3;
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$gotoOtherDocNote$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                EditorBundle editorBundle3 = EditorBundle.this;
                Intrinsics.checkNotNull(editorBundle3);
                return new GotoLinkAction(editorBundle3, this.linkBean, false).build();
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$gotoOtherDocNote$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it3) {
                Observable<? extends Object> m40205r;
                Intrinsics.checkNotNullParameter(it3, "it");
                m40205r = GotoOtherNoteLinkAction.this.m40205r(docBean);
                return m40205r;
            }
        });
    }

    /* renamed from: q */
    public final void m40204q(boolean exist, ShapeLinkBean linkBean) {
        if (!exist) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.link_not_exist, false, 2, (Object) null);
        } else {
            EditorBundleKt.postEvent(getEditorBundle(), new QuitTransformEvent(true));
            EditorBundleKt.postEvent(getEditorBundle(), new GotoShapeLinkEvent(linkBean));
        }
    }

    /* renamed from: r */
    public final Observable<?> m40205r(final LinkDocBean docBean) {
        Observable flatMap = Observable.just(Boolean.FALSE).flatMap(new C10077d(docBean));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable map = RxjavaKt.flatMapIf(flatMap, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$localCheckAndGotoShapeLink$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoOtherNoteLinkAction$localCheckAndGotoShapeLink$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it2) {
                Observable<? extends Object> m40201n;
                Intrinsics.checkNotNullParameter(it2, "it");
                m40201n = GotoOtherNoteLinkAction.this.m40201n(docBean);
                return m40201n;
            }
        }).map(new C10078e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
