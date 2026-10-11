package com.onyx.android.sdk.universal.editor.action.search;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.replicator.fts.model.FTSContentModel;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.util.FTSContentBuilder;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0002J\u001a\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0002¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction;", "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", "", "", BaiduYunConstant.CREATE, "l", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPageList", "m", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBuildHwrShapeIndexAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildHwrShapeIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,91:1\n766#2:92\n857#2,2:93\n473#3:95\n*S KotlinDebug\n*F\n+ 1 BuildHwrShapeIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction\n*L\n38#1:92\n38#1:93,2\n82#1:95\n*E\n"})
/* loaded from: classes8.dex */
public final class BuildHwrShapeIndexAction extends BuildTextIndexBaseAction {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$a */
    /* loaded from: classes8.dex */
    public static final class C9800a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Set<String> f50363f;

        public C9800a(Set<String> set) {
            this.f50363f = set;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BuildHwrShapeIndexAction it2) {
            List<FTSContentModel> emptyList;
            Intrinsics.checkNotNullParameter(it2, "it");
            BuildHwrShapeIndexAction buildHwrShapeIndexAction = BuildHwrShapeIndexAction.this;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            buildHwrShapeIndexAction.saveToDatabase(emptyList, this.f50363f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$b */
    /* loaded from: classes8.dex */
    public static final class C9801b<T> implements Consumer {
        public C9801b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BuildHwrShapeIndexAction.this.getNoteSearchArgs().getSearchContext().getPageIdsForSearchScribble().addAll(BuildHwrShapeIndexAction.this.getIndexedPageIds());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$c */
    /* loaded from: classes8.dex */
    public static final class C9802c<T, R> implements Function {
        public C9802c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<String> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildHwrShapeIndexAction.this.getIndexedPageIds();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$d */
    /* loaded from: classes8.dex */
    public static final class C9803d<T, R> implements Function {
        public C9803d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Set<String>> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildHwrShapeIndexAction.this.m39689l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuildHwrShapeIndexAction(@NotNull EditorBundle editorBundle, @NotNull List<VirtualPage> virtualPageList, @NotNull NoteSearchArgs noteSearchArgs) {
        super(editorBundle, virtualPageList, noteSearchArgs, TextContentType.HWR_FONT_TEXT);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(virtualPageList, "virtualPageList");
        Intrinsics.checkNotNullParameter(noteSearchArgs, "noteSearchArgs");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Set<String>> create() {
        Observable<Set<String>> flatMap = Observable.just(Unit.INSTANCE).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9803d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<Set<String>> m39689l() {
        Set set;
        Set<String> immutableValidShapePageSet = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getImmutableValidShapePageSet();
        Collection<String> pageIdList = VirtualPage.INSTANCE.toPageIdList(getVirtualPageList());
        List<VirtualPage> virtualPageList = getVirtualPageList();
        final ArrayList arrayList = new ArrayList();
        for (Object obj : virtualPageList) {
            if (immutableValidShapePageSet.contains(((VirtualPage) obj).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId())) {
                arrayList.add(obj);
            }
        }
        set = CollectionsKt___CollectionsKt.toSet(pageIdList);
        Observable doOnNext = Observable.just(this).observeOn(ClusterManager.INSTANCE.getDataObserveOn()).doOnNext(new C9800a(CollectionKt.diff(set, immutableValidShapePageSet)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable map = RxjavaKt.flatMapIf(doOnNext, new Function1<BuildHwrShapeIndexAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$buildIndex$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BuildHwrShapeIndexAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!arrayList.isEmpty());
            }
        }, new Function1<BuildHwrShapeIndexAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$buildIndex$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull BuildHwrShapeIndexAction it2) {
                Observable<? extends Object> m39690m;
                Intrinsics.checkNotNullParameter(it2, "it");
                m39690m = BuildHwrShapeIndexAction.this.m39690m(arrayList);
                return m39690m;
            }
        }).doOnNext(new C9801b()).map(new C9802c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<?> m39690m(List<VirtualPage> virtualPageList) {
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        final ArrayList arrayList = new ArrayList();
        Observable concatMap = Observable.fromIterable(virtualPageList).concatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$extractFTSContent$1

            @SourceDebugExtension({"SMAP\nBuildHwrShapeIndexAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildHwrShapeIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildHwrShapeIndexAction$extractFTSContent$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1#2:92\n*E\n"})
            /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$extractFTSContent$1$a */
            /* loaded from: classes8.dex */
            public static final class C9806a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ BuildHwrShapeIndexAction f50372e;

                /* renamed from: f */
                public final /* synthetic */ VirtualPage f50373f;

                public C9806a(BuildHwrShapeIndexAction buildHwrShapeIndexAction, VirtualPage virtualPage) {
                    this.f50372e = buildHwrShapeIndexAction;
                    this.f50373f = virtualPage;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Pair<VirtualPage, List<FTSContentModel>> apply(@NotNull VirtualPage page) {
                    List m39691n;
                    Intrinsics.checkNotNullParameter(page, "page");
                    BuildHwrShapeIndexAction buildHwrShapeIndexAction = this.f50372e;
                    m39691n = buildHwrShapeIndexAction.m39691n(buildHwrShapeIndexAction.getEditorBundle().getWorkBundle().getVirtualPolicy().ensureNotePage(this.f50373f));
                    return TuplesKt.m61535to(page, m39691n);
                }
            }

            /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$extractFTSContent$1$b */
            /* loaded from: classes8.dex */
            public static final class C9807b<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ Set<String> f50374e;

                /* renamed from: f */
                public final /* synthetic */ List<FTSContentModel> f50375f;

                public C9807b(Set<String> set, List<FTSContentModel> list) {
                    this.f50374e = set;
                    this.f50375f = list;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Pair<VirtualPage, ? extends List<FTSContentModel>> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f50374e.add(it2.getFirst().getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
                    this.f50375f.addAll(it2.getSecond());
                }
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Object> apply(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable<R> doOnNext = Observable.just(it2).observeOn(EditorBundleKt.noteScheduler(BuildHwrShapeIndexAction.this.getEditorBundle())).map(new C9806a(BuildHwrShapeIndexAction.this, it2)).doOnNext(new C9807b(linkedHashSet, arrayList));
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                final List<FTSContentModel> list = arrayList;
                Function1<Pair<? extends VirtualPage, ? extends List<? extends FTSContentModel>>, Boolean> function1 = new Function1<Pair<? extends VirtualPage, ? extends List<? extends FTSContentModel>>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$extractFTSContent$1.3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @NotNull
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final Boolean invoke2(@NotNull Pair<VirtualPage, ? extends List<FTSContentModel>> it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return Boolean.valueOf(list.size() >= NoteConstant.INSTANCE.getCOMMON_BATCH_DATA_COUNT());
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Pair<? extends VirtualPage, ? extends List<? extends FTSContentModel>> pair) {
                        return invoke2((Pair<VirtualPage, ? extends List<FTSContentModel>>) pair);
                    }
                };
                final BuildHwrShapeIndexAction buildHwrShapeIndexAction = BuildHwrShapeIndexAction.this;
                final List<FTSContentModel> list2 = arrayList;
                final Set<String> set = linkedHashSet;
                return RxjavaKt.flatMapIf(doOnNext, function1, new Function1<Pair<? extends VirtualPage, ? extends List<? extends FTSContentModel>>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$extractFTSContent$1.4

                    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$extractFTSContent$1$4$a */
                    /* loaded from: classes8.dex */
                    public static final class a<T> implements Consumer {

                        /* renamed from: e */
                        public final /* synthetic */ Set<String> f50370e;

                        /* renamed from: f */
                        public final /* synthetic */ List<FTSContentModel> f50371f;

                        public a(Set<String> set, List<FTSContentModel> list) {
                            this.f50370e = set;
                            this.f50371f = list;
                        }

                        @Override // io.reactivex.rxjava3.functions.Consumer
                        public final void accept(@NotNull Object it2) {
                            Intrinsics.checkNotNullParameter(it2, "it");
                            this.f50370e.clear();
                            this.f50371f.clear();
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Pair<? extends VirtualPage, ? extends List<? extends FTSContentModel>> pair) {
                        return invoke2((Pair<VirtualPage, ? extends List<FTSContentModel>>) pair);
                    }

                    @NotNull
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final Observable<? extends Object> invoke2(@NotNull Pair<VirtualPage, ? extends List<FTSContentModel>> it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        Observable doOnNext2 = BuildHwrShapeIndexAction.this.saveToDatabaseObservable(list2, set).doOnNext(new a(set, list2));
                        Intrinsics.checkNotNullExpressionValue(doOnNext2, "doOnNext(...)");
                        return doOnNext2;
                    }
                });
            }
        });
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return RxjavaKt.flatMapIf(RxjavaKt.takeLastOne(concatMap), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$extractFTSContent$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                boolean z = true;
                if (!(!linkedHashSet.isEmpty()) && !(!arrayList.isEmpty())) {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$extractFTSContent$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return BuildHwrShapeIndexAction.this.saveToDatabaseObservable(arrayList, linkedHashSet);
            }
        });
    }

    /* renamed from: n */
    public final List<FTSContentModel> m39691n(final NotePage notePage) {
        Sequence asSequence;
        Sequence filter;
        Sequence filter2;
        Sequence filter3;
        List<HWRTextShape> list;
        List<FTSContentModel> emptyList;
        asSequence = CollectionsKt___CollectionsKt.asSequence(notePage.getShapeList());
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$extractFTSContent$$inlined$filterIsInstance$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@Nullable Object obj) {
                return Boolean.valueOf(obj instanceof HWRTextShape);
            }
        });
        Intrinsics.checkNotNull(filter, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>");
        filter2 = SequencesKt___SequencesKt.filter(filter, new Function1<HWRTextShape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$extractFTSContent$textShapes$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull HWRTextShape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(ShapeOptions.INSTANCE.isVisible(it2));
            }
        });
        filter3 = SequencesKt___SequencesKt.filter(filter2, new Function1<HWRTextShape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildHwrShapeIndexAction$extractFTSContent$textShapes$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull HWRTextShape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(NotePage.this.getPageInfo().isLayerVisible(it2.getLayerId()));
            }
        });
        list = SequencesKt___SequencesKt.toList(filter3);
        if (!list.isEmpty()) {
            return FTSContentBuilder.INSTANCE.extractFTSContent(notePage.getPageUniqueId(), list);
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }
}
