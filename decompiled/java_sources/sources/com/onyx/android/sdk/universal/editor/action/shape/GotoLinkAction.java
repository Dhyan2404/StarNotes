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
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.link.LinkDocBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.doc.CheckNotePageExistAction;
import com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction;
import com.onyx.android.sdk.universal.editor.events.note.GotoOtherShapeLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.GotoShapeLinkEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0007¢\u0006\u0004\b\u001f\u0010 J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "s", "p", "q", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;", "docBean", "", C4921e.f26528e, "m", "exist", "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "linkBean", "t", "u", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;", "i", Constants.HASIDCALL_INDEX_SIG, "checkOtherNote", "", "", "j", "Ljava/util/Set;", "existShapeIdSet", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGotoLinkAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GotoLinkAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n1#2:139\n1747#3,2:140\n1747#3,3:142\n1747#3,3:145\n1749#3:148\n1549#3:149\n1620#3,3:150\n*S KotlinDebug\n*F\n+ 1 GotoLinkAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction\n*L\n88#1:140,2\n89#1:142,3\n97#1:145,3\n88#1:148\n109#1:149\n109#1:150,3\n*E\n"})
/* loaded from: classes8.dex */
public final class GotoLinkAction extends RxBaseAppAction<GotoLinkAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ShapeLinkBean linkBean;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean checkOtherNote;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Set<String> existShapeIdSet;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$a */
    /* loaded from: classes8.dex */
    public static final class C10063a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ LinkDocBean f50865f;

        public C10063a(LinkDocBean linkDocBean) {
            this.f50865f = linkDocBean;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GotoLinkAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GotoLinkAction.this.m40185o(this.f50865f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$b */
    /* loaded from: classes8.dex */
    public static final class C10064b<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ LinkDocBean f50867f;

        public C10064b(LinkDocBean linkDocBean) {
            this.f50867f = linkDocBean;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull GotoLinkAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoLinkAction.this.m40183m(this.f50867f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$c */
    /* loaded from: classes8.dex */
    public static final class C10065c<T, R> implements Function {
        public C10065c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoLinkAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoLinkAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$d */
    /* loaded from: classes8.dex */
    public static final class C10066d<T, R> implements Function {
        public C10066d() {
        }

        /* renamed from: a */
        public final void m40194a(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GotoLinkAction.this.m40189t(Intrinsics.areEqual(it2, Boolean.TRUE), GotoLinkAction.this.linkBean);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m40194a(obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$e */
    /* loaded from: classes8.dex */
    public static final class C10067e<T, R> implements Function {
        public C10067e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoLinkAction apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoLinkAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$f */
    /* loaded from: classes8.dex */
    public static final class C10068f<T> implements Consumer {
        public C10068f() {
        }

        /* renamed from: a */
        public final void m40196a(boolean z) {
            EditorBundleKt.postEvent(GotoLinkAction.this.getEditorBundle(), new QuitTransformEvent(true));
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m40196a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$g */
    /* loaded from: classes8.dex */
    public static final class C10069g<T, R> implements Function {
        public C10069g() {
        }

        @NotNull
        /* renamed from: a */
        public final GotoLinkAction m40197a(boolean z) {
            return GotoLinkAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m40197a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$h */
    /* loaded from: classes8.dex */
    public static final class C10070h<T, R> implements Function {
        public C10070h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GotoLinkAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GotoLinkAction.this;
        }
    }

    public /* synthetic */ GotoLinkAction(EditorBundle editorBundle, ShapeLinkBean shapeLinkBean, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, shapeLinkBean, (i & 4) != 0 ? true : z);
    }

    /* renamed from: r */
    public static final void m40182r(GotoLinkAction this$0, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        EditorBundleKt.postEvent(this$0.getEditorBundle(), new GotoOtherShapeLinkEvent(this$0.linkBean));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GotoLinkAction> create() {
        Observable just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        Observable map = RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(just, new Function1<GotoLinkAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$create$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull GotoLinkAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(GotoLinkAction.this.linkBean.isLinkUrlType());
            }
        }, new Function1<GotoLinkAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$create$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull GotoLinkAction it2) {
                Observable<? extends Object> m40190u;
                Intrinsics.checkNotNullParameter(it2, "it");
                GotoLinkAction gotoLinkAction = GotoLinkAction.this;
                m40190u = gotoLinkAction.m40190u(gotoLinkAction.linkBean);
                return m40190u;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$create$3
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(GotoLinkAction.this.linkBean.isLinkPageType());
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$create$4
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Observable<? extends Object> m40188s;
                Intrinsics.checkNotNullParameter(it2, "it");
                m40188s = GotoLinkAction.this.m40188s();
                return m40188s;
            }
        }).map(new C10065c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<Boolean> m40183m(LinkDocBean docBean) {
        List<String> list;
        list = CollectionsKt___CollectionsKt.toList(this.existShapeIdSet);
        docBean.setShapeIdList(list);
        Observable<Boolean> just = Observable.just(Boolean.valueOf(!CollectionKt.ensureList(docBean.getShapeIdList()).isEmpty()));
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: n */
    public final Observable<Boolean> m40184n() {
        LinkDocBean docBean = this.linkBean.getDocBean();
        if (docBean == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable<Boolean> flatMap = Observable.just(this).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).doOnNext(new C10063a(docBean)).flatMap(new C10064b(docBean));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: o */
    public final void m40185o(LinkDocBean docBean) {
        boolean z;
        boolean z2;
        boolean isEmpty;
        int collectionSizeOrDefault;
        List<String> shapeIdList = docBean.getShapeIdList();
        if (shapeIdList == null || shapeIdList.isEmpty()) {
            return;
        }
        NoteDocument noteDoc = getEditorBundle().getWorkBundle().getNoteBundle().getNoteDoc();
        List<NotePage> loadedNotePages = noteDoc.getLoadedNotePages();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(CollectionKt.ensureList(docBean.getShapeIdList()));
        List<NotePage> list = loadedNotePages;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (NotePage notePage : list) {
                List<Shape> shapeList = notePage.getShapeList();
                if (!(shapeList instanceof Collection) || !shapeList.isEmpty()) {
                    for (Shape shape : shapeList) {
                        if (linkedHashSet.contains(shape.getShapeUniqueId())) {
                            this.existShapeIdSet.add(shape.getShapeUniqueId());
                            linkedHashSet.remove(shape.getShapeUniqueId());
                            z = linkedHashSet.isEmpty();
                        } else {
                            z = false;
                        }
                        if (z) {
                            break;
                        }
                    }
                }
                if (linkedHashSet.isEmpty()) {
                    isEmpty = true;
                } else {
                    Collection<Shape> values = notePage.getRemovedShapeMap().values();
                    if (!(values instanceof Collection) || !values.isEmpty()) {
                        for (Shape shape2 : values) {
                            if (linkedHashSet.contains(shape2.getShapeUniqueId())) {
                                linkedHashSet.remove(shape2.getShapeUniqueId());
                                z2 = linkedHashSet.isEmpty();
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                break;
                            }
                        }
                    }
                    isEmpty = linkedHashSet.isEmpty();
                }
                if (isEmpty) {
                    break;
                }
            }
        }
        if (linkedHashSet.isEmpty()) {
            return;
        }
        CBQueryArgs inShapeIdListQuery = ShapeQueryArgsExtKt.inShapeIdListQuery(linkedHashSet);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NotePage) it2.next()).getPageUniqueId());
        }
        CollectionKt.safeAddAll(this.existShapeIdSet, noteDoc.getProviderHolder().getNoteShapeProvider().loadShapeIdList(inShapeIdListQuery.andWith(couchUtils.notInExpression(CouchFieldKey.KEY_PAGE_ID, arrayList)).andWith(CouchUtils.INSTANCE.equalExpression("status", 0))));
    }

    /* renamed from: p */
    public final Observable<GotoLinkAction> m40186p() {
        final LinkDocBean docBean = this.linkBean.getDocBean();
        if (docBean == null) {
            Observable<GotoLinkAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable just2 = Observable.just(Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        Observable<GotoLinkAction> map = RxjavaKt.flatMapIf(RxjavaKt.flatMapIf(just2, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$gotoCurrentDocLink$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(GotoLinkAction.this.linkBean.isLinkPageShapeType());
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$gotoCurrentDocLink$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Boolean it2) {
                Observable<? extends Object> m40184n;
                Intrinsics.checkNotNullParameter(it2, "it");
                m40184n = GotoLinkAction.this.m40184n();
                return m40184n;
            }
        }), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$gotoCurrentDocLink$3
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!GotoLinkAction.this.linkBean.isLinkPageShapeType());
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$gotoCurrentDocLink$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                EditorBundle editorBundle = GotoLinkAction.this.getEditorBundle();
                String pageId = docBean.getPageId();
                if (pageId == null) {
                    pageId = "";
                }
                return new CheckNotePageExistAction(editorBundle, pageId).build();
            }
        }).map(new C10066d()).map(new C10067e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final Observable<GotoLinkAction> m40187q() {
        Observable just = Observable.just(Boolean.valueOf(this.checkOtherNote));
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        Observable<GotoLinkAction> map = RxjavaKt.doOnNextIf(just, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$gotoOtherDocLink$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Boolean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.r4h
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                GotoLinkAction.m40182r(GotoLinkAction.this, ((Boolean) obj).booleanValue());
            }
        }).doOnNext(new C10068f()).map(new C10069g());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: s */
    public final Observable<GotoLinkAction> m40188s() {
        final LinkDocBean docBean = this.linkBean.getDocBean();
        if (docBean == null) {
            Observable<GotoLinkAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Observable just2 = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        Observable map = RxjavaKt.flatMapIf(just2, new Function1<GotoLinkAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$gotoPageLink$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull GotoLinkAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(EditorBundleKt.docId(GotoLinkAction.this.getEditorBundle()), docBean.getDocumentId()));
            }
        }, new Function1<GotoLinkAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$gotoPageLink$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull GotoLinkAction it2) {
                Observable<? extends Object> m40186p;
                Intrinsics.checkNotNullParameter(it2, "it");
                m40186p = GotoLinkAction.this.m40186p();
                return m40186p;
            }
        }, new Function1<GotoLinkAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.shape.GotoLinkAction$gotoPageLink$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull GotoLinkAction it2) {
                Observable<? extends Object> m40187q;
                Intrinsics.checkNotNullParameter(it2, "it");
                m40187q = GotoLinkAction.this.m40187q();
                return m40187q;
            }
        }).map(new C10070h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: t */
    public final void m40189t(boolean exist, ShapeLinkBean linkBean) {
        if (!exist) {
            ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.link_not_exist, false, 2, (Object) null);
        } else {
            EditorBundleKt.postEvent(getEditorBundle(), new QuitTransformEvent(true));
            EditorBundleKt.postEvent(getEditorBundle(), new GotoShapeLinkEvent(linkBean));
        }
    }

    /* renamed from: u */
    public final Observable<Boolean> m40190u(ShapeLinkBean linkBean) {
        if (!linkBean.isLinkUrlType() || linkBean.getValue() == null) {
            Observable<Boolean> just = Observable.just(Boolean.FALSE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        EditorBundleKt.postEvent(getEditorBundle(), new GotoShapeLinkEvent(linkBean));
        Observable<Boolean> just2 = Observable.just(Boolean.TRUE);
        Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
        return just2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GotoLinkAction(@NotNull EditorBundle editorBundle, @NotNull ShapeLinkBean linkBean, boolean z) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(linkBean, "linkBean");
        this.linkBean = linkBean;
        this.checkOtherNote = z;
        this.existShapeIdSet = new LinkedHashSet();
    }
}
