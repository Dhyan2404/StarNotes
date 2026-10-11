package com.onyx.android.sdk.universal.editor.action.search;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.hwr.data.constant.HWRRecognizerTypeKt;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.fts.model.FTSContentModel;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.hwr.HWRExportToTextAction;
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

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B%\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0002J\u001a\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u001c\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u00070\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;", "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", "", "", BaiduYunConstant.CREATE, "l", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPageList", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;", "m", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBuildScribbleTextIndexAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildScribbleTextIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n766#2:118\n857#2,2:119\n*S KotlinDebug\n*F\n+ 1 BuildScribbleTextIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction\n*L\n45#1:118\n45#1:119,2\n*E\n"})
/* loaded from: classes8.dex */
public final class BuildScribbleTextIndexAction extends BuildTextIndexBaseAction {

    /* renamed from: l */
    public static final int f50384l = 10000;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$a */
    /* loaded from: classes8.dex */
    public static final class C9815a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Set<String> f50386f;

        public C9815a(Set<String> set) {
            this.f50386f = set;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BuildScribbleTextIndexAction it2) {
            List<FTSContentModel> emptyList;
            Intrinsics.checkNotNullParameter(it2, "it");
            BuildScribbleTextIndexAction buildScribbleTextIndexAction = BuildScribbleTextIndexAction.this;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            buildScribbleTextIndexAction.saveToDatabase(emptyList, this.f50386f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$b */
    /* loaded from: classes8.dex */
    public static final class C9816b<T> implements Consumer {
        public C9816b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BuildScribbleTextIndexAction.this.getNoteSearchArgs().getSearchContext().getPageIdsForSearchScribble().addAll(BuildScribbleTextIndexAction.this.getIndexedPageIds());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$c */
    /* loaded from: classes8.dex */
    public static final class C9817c<T, R> implements Function {
        public C9817c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<String> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildScribbleTextIndexAction.this.getIndexedPageIds();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$d */
    /* loaded from: classes8.dex */
    public static final class C9818d<T, R> implements Function {
        public C9818d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Set<String>> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildScribbleTextIndexAction.this.m39705l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$e */
    /* loaded from: classes8.dex */
    public static final class C9819e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ NotePage f50391f;

        public C9819e(NotePage notePage) {
            this.f50391f = notePage;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<FTSContentModel> apply(@NotNull HWRExportToTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FTSContentBuilder.INSTANCE.extractFTSContent(HWRRecognizerTypeKt.getEngineType(BuildScribbleTextIndexAction.this.getNoteSearchArgs().getHwrArgs().getRecognizer()), this.f50391f.getPageUniqueId(), it2.getHwrBlockOutputs());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuildScribbleTextIndexAction(@NotNull EditorBundle editorBundle, @NotNull List<VirtualPage> virtualPageList, @NotNull NoteSearchArgs noteSearchArgs) {
        super(editorBundle, virtualPageList, noteSearchArgs, TextContentType.HANDWRITING);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(virtualPageList, "virtualPageList");
        Intrinsics.checkNotNullParameter(noteSearchArgs, "noteSearchArgs");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Set<String>> create() {
        Observable<Set<String>> flatMap = Observable.just(Unit.INSTANCE).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9818d());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<Set<String>> m39705l() {
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
        Observable doOnNext = Observable.just(this).observeOn(ClusterManager.INSTANCE.getDataObserveOn()).doOnNext(new C9815a(CollectionKt.diff(set, immutableValidShapePageSet)));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable map = RxjavaKt.flatMapIf(doOnNext, new Function1<BuildScribbleTextIndexAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$buildIndex$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull BuildScribbleTextIndexAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!arrayList.isEmpty());
            }
        }, new Function1<BuildScribbleTextIndexAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$buildIndex$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull BuildScribbleTextIndexAction it2) {
                Observable<? extends Object> m39707n;
                Intrinsics.checkNotNullParameter(it2, "it");
                m39707n = BuildScribbleTextIndexAction.this.m39707n(arrayList);
                return m39707n;
            }
        }).doOnNext(new C9816b()).map(new C9817c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<List<FTSContentModel>> m39706m(final NotePage notePage) {
        Sequence asSequence;
        Sequence filter;
        Sequence filter2;
        Sequence filter3;
        Sequence filter4;
        Sequence filter5;
        List list;
        List emptyList;
        List emptyList2;
        if (notePage.getShapeCount() > 10000) {
            if (!getNoteSearchArgs().getIsBackgroundSearch()) {
                ToastUtils.show$default(ToastUtils.INSTANCE, C8045R.string.search_data_too_large, false, 2, (Object) null);
            }
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            Observable<List<FTSContentModel>> just = Observable.just(emptyList2);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        asSequence = CollectionsKt___CollectionsKt.asSequence(notePage.getShapeList());
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$penShapes$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(ShapeOptions.INSTANCE.isVisible(it2));
            }
        });
        filter2 = SequencesKt___SequencesKt.filter(filter, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$penShapes$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                return Boolean.valueOf(shapeTypes.isSupportHWR(it2) && shapeTypes.isPenShape(it2));
            }
        });
        filter3 = SequencesKt___SequencesKt.filter(filter2, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$penShapes$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(ShapeOptions.INSTANCE.getTransformingMatrix(it2).isIdentity());
            }
        });
        filter4 = SequencesKt___SequencesKt.filter(filter3, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$penShapes$4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(NotePage.this.getPageInfo().isLayerVisible(it2.getLayerId()));
            }
        });
        filter5 = SequencesKt___SequencesKt.filter(filter4, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$penShapes$5
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size() < 3000);
            }
        });
        list = SequencesKt___SequencesKt.toList(filter5);
        if (list.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            Observable<List<FTSContentModel>> just2 = Observable.just(emptyList);
            Intrinsics.checkNotNullExpressionValue(just2, "just(...)");
            return just2;
        }
        Observable map = new HWRExportToTextAction(getEditorBundle(), list, getNoteSearchArgs().getHwrArgs()).build().observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C9819e(notePage));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<?> m39707n(List<VirtualPage> virtualPageList) {
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        final ArrayList arrayList = new ArrayList();
        Observable concatMap = Observable.fromIterable(virtualPageList).concatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$1

            /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$1$a */
            /* loaded from: classes8.dex */
            public static final class C9822a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ BuildScribbleTextIndexAction f50397e;

                /* renamed from: f */
                public final /* synthetic */ VirtualPage f50398f;

                /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$1$a$a */
                /* loaded from: classes8.dex */
                public static final class a<T, R> implements Function {

                    /* renamed from: e */
                    public final /* synthetic */ VirtualPage f50399e;

                    public a(VirtualPage virtualPage) {
                        this.f50399e = virtualPage;
                    }

                    @Override // io.reactivex.rxjava3.functions.Function
                    @NotNull
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final Pair<VirtualPage, List<FTSContentModel>> apply(@NotNull List<FTSContentModel> it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        return TuplesKt.m61535to(this.f50399e, it2);
                    }
                }

                public C9822a(BuildScribbleTextIndexAction buildScribbleTextIndexAction, VirtualPage virtualPage) {
                    this.f50397e = buildScribbleTextIndexAction;
                    this.f50398f = virtualPage;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final ObservableSource<? extends Pair<VirtualPage, List<FTSContentModel>>> apply(@NotNull VirtualPage page) {
                    Observable m39706m;
                    Intrinsics.checkNotNullParameter(page, "page");
                    BuildScribbleTextIndexAction buildScribbleTextIndexAction = this.f50397e;
                    m39706m = buildScribbleTextIndexAction.m39706m(buildScribbleTextIndexAction.getEditorBundle().getWorkBundle().getVirtualPolicy().ensureNotePage(this.f50398f));
                    return m39706m.map(new a(page));
                }
            }

            /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$1$b */
            /* loaded from: classes8.dex */
            public static final class C9823b<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ Set<String> f50400e;

                /* renamed from: f */
                public final /* synthetic */ List<FTSContentModel> f50401f;

                public C9823b(Set<String> set, List<FTSContentModel> list) {
                    this.f50400e = set;
                    this.f50401f = list;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull Pair<VirtualPage, ? extends List<FTSContentModel>> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f50400e.add(it2.getFirst().getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
                    this.f50401f.addAll(it2.getSecond());
                }
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Object> apply(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable<R> doOnNext = Observable.just(it2).observeOn(EditorBundleKt.noteScheduler(BuildScribbleTextIndexAction.this.getEditorBundle())).flatMap(new C9822a(BuildScribbleTextIndexAction.this, it2)).doOnNext(new C9823b(linkedHashSet, arrayList));
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                final List<FTSContentModel> list = arrayList;
                Function1<Pair<? extends VirtualPage, ? extends List<? extends FTSContentModel>>, Boolean> function1 = new Function1<Pair<? extends VirtualPage, ? extends List<? extends FTSContentModel>>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$1.3
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
                final BuildScribbleTextIndexAction buildScribbleTextIndexAction = BuildScribbleTextIndexAction.this;
                final List<FTSContentModel> list2 = arrayList;
                final Set<String> set = linkedHashSet;
                return RxjavaKt.flatMapIf(doOnNext, function1, new Function1<Pair<? extends VirtualPage, ? extends List<? extends FTSContentModel>>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$1.4

                    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$1$4$a */
                    /* loaded from: classes8.dex */
                    public static final class a<T> implements Consumer {

                        /* renamed from: e */
                        public final /* synthetic */ Set<String> f50395e;

                        /* renamed from: f */
                        public final /* synthetic */ List<FTSContentModel> f50396f;

                        public a(Set<String> set, List<FTSContentModel> list) {
                            this.f50395e = set;
                            this.f50396f = list;
                        }

                        @Override // io.reactivex.rxjava3.functions.Consumer
                        public final void accept(@NotNull Object it2) {
                            Intrinsics.checkNotNullParameter(it2, "it");
                            this.f50395e.clear();
                            this.f50396f.clear();
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
                        Observable doOnNext2 = BuildScribbleTextIndexAction.this.saveToDatabaseObservable(list2, set).doOnNext(new a(set, list2));
                        Intrinsics.checkNotNullExpressionValue(doOnNext2, "doOnNext(...)");
                        return doOnNext2;
                    }
                });
            }
        });
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return RxjavaKt.flatMapIf(RxjavaKt.takeLastOne(concatMap), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$2
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
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildScribbleTextIndexAction$extractFTSContent$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return BuildScribbleTextIndexAction.this.saveToDatabaseObservable(arrayList, linkedHashSet);
            }
        });
    }
}
