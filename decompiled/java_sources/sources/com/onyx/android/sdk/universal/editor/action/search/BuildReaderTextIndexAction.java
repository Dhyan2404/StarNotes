package com.onyx.android.sdk.universal.editor.action.search;

import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.extension.ReaderKt;
import com.onyx.android.sdk.replicator.fts.model.FTSContentModel;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\r\u001a\u00020\f\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0002J\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction;", "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", "", "", BaiduYunConstant.CREATE, "l", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPageList", "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;", "m", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBuildReaderTextIndexAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildReaderTextIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,69:1\n766#2:70\n857#2,2:71\n1549#2:77\n1620#2,3:78\n1#3:73\n76#4:74\n96#4,2:75\n98#4,3:81\n*S KotlinDebug\n*F\n+ 1 BuildReaderTextIndexAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildReaderTextIndexAction\n*L\n32#1:70\n32#1:71,2\n60#1:77\n60#1:78,3\n57#1:74\n57#1:75,2\n57#1:81,3\n*E\n"})
/* loaded from: classes8.dex */
public final class BuildReaderTextIndexAction extends BuildTextIndexBaseAction {

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$a */
    /* loaded from: classes8.dex */
    public static final class C9808a<T> implements Consumer {
        public C9808a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BuildReaderTextIndexAction.this.getNoteSearchArgs().getSearchContext().getPageIdsForSearchReader().addAll(BuildReaderTextIndexAction.this.getIndexedPageIds());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$b */
    /* loaded from: classes8.dex */
    public static final class C9809b<T, R> implements Function {
        public C9809b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<String> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildReaderTextIndexAction.this.getIndexedPageIds();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$c */
    /* loaded from: classes8.dex */
    public static final class C9814c<T, R> implements Function {
        public C9814c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Set<String>> apply(@NotNull BuildReaderTextIndexAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildReaderTextIndexAction.this.m39698l();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuildReaderTextIndexAction(@NotNull EditorBundle editorBundle, @NotNull List<VirtualPage> virtualPageList, @NotNull NoteSearchArgs noteSearchArgs) {
        super(editorBundle, virtualPageList, noteSearchArgs, TextContentType.PDF);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(virtualPageList, "virtualPageList");
        Intrinsics.checkNotNullParameter(noteSearchArgs, "noteSearchArgs");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Set<String>> create() {
        Observable<Set<String>> flatMap = Observable.just(this).observeOn(EditorBundleKt.readerScheduler(getEditorBundle())).flatMap(new C9814c());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<Set<String>> m39698l() {
        Set emptySet;
        List<VirtualPage> virtualPageList = getVirtualPageList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : virtualPageList) {
            if (ContentConstants.INSTANCE.isPDF(((VirtualPage) obj).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentType())) {
                arrayList.add(obj);
            }
        }
        if (!(!arrayList.isEmpty())) {
            arrayList = null;
        }
        if (arrayList == null) {
            emptySet = SetsKt__SetsKt.emptySet();
            Observable<Set<String>> just = Observable.just(emptySet);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final ArrayList arrayList2 = new ArrayList();
        Observable concatMap = Observable.fromIterable(CollectionKt.split(arrayList, 100)).concatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$buildIndex$1

            /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$buildIndex$1$a */
            /* loaded from: classes8.dex */
            public static final class C9812a<T, R> implements Function {

                /* renamed from: e */
                public final /* synthetic */ BuildReaderTextIndexAction f50381e;

                public C9812a(BuildReaderTextIndexAction buildReaderTextIndexAction) {
                    this.f50381e = buildReaderTextIndexAction;
                }

                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final List<FTSContentModel> apply(@NotNull List<VirtualPage> it2) {
                    List<FTSContentModel> m39699m;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    m39699m = this.f50381e.m39699m(it2);
                    return m39699m;
                }
            }

            /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$buildIndex$1$b */
            /* loaded from: classes8.dex */
            public static final class C9813b<T> implements Consumer {

                /* renamed from: e */
                public final /* synthetic */ List<FTSContentModel> f50382e;

                public C9813b(List<FTSContentModel> list) {
                    this.f50382e = list;
                }

                @Override // io.reactivex.rxjava3.functions.Consumer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final void accept(@NotNull List<FTSContentModel> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    this.f50382e.addAll(it2);
                }
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ObservableSource<? extends Object> apply(@NotNull List<VirtualPage> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable<R> doOnNext = Observable.just(it2).observeOn(EditorBundleKt.readerScheduler(BuildReaderTextIndexAction.this.getEditorBundle())).map(new C9812a(BuildReaderTextIndexAction.this)).doOnNext(new C9813b(arrayList2));
                Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                final List<FTSContentModel> list = arrayList2;
                Function1<List<? extends FTSContentModel>, Boolean> function1 = new Function1<List<? extends FTSContentModel>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$buildIndex$1.3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @NotNull
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final Boolean invoke2(@NotNull List<FTSContentModel> it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        return Boolean.valueOf(list.size() >= NoteConstant.INSTANCE.getCOMMON_BATCH_DATA_COUNT());
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(List<? extends FTSContentModel> list2) {
                        return invoke2((List<FTSContentModel>) list2);
                    }
                };
                final BuildReaderTextIndexAction buildReaderTextIndexAction = BuildReaderTextIndexAction.this;
                final List<FTSContentModel> list2 = arrayList2;
                return RxjavaKt.flatMapIf(doOnNext, function1, new Function1<List<? extends FTSContentModel>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$buildIndex$1.4

                    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$buildIndex$1$4$a */
                    /* loaded from: classes8.dex */
                    public static final class a<T> implements Consumer {

                        /* renamed from: e */
                        public final /* synthetic */ List<FTSContentModel> f50380e;

                        public a(List<FTSContentModel> list) {
                            this.f50380e = list;
                        }

                        @Override // io.reactivex.rxjava3.functions.Consumer
                        public final void accept(@NotNull Object it2) {
                            Intrinsics.checkNotNullParameter(it2, "it");
                            this.f50380e.clear();
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends FTSContentModel> list3) {
                        return invoke2((List<FTSContentModel>) list3);
                    }

                    @NotNull
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final Observable<? extends Object> invoke2(@NotNull List<FTSContentModel> it3) {
                        Intrinsics.checkNotNullParameter(it3, "it");
                        Observable<? extends Object> doOnNext2 = BuildTextIndexBaseAction.saveToDatabaseObservable$default(BuildReaderTextIndexAction.this, list2, null, 2, null).doOnNext(new a(list2));
                        Intrinsics.checkNotNullExpressionValue(doOnNext2, "doOnNext(...)");
                        return doOnNext2;
                    }
                });
            }
        });
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable map = RxjavaKt.flatMapIf(RxjavaKt.takeLastOne(concatMap), new Function1<Object, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$buildIndex$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!arrayList2.isEmpty());
            }
        }, new Function1<Object, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$buildIndex$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return BuildTextIndexBaseAction.saveToDatabaseObservable$default(BuildReaderTextIndexAction.this, arrayList2, null, 2, null);
            }
        }).doOnNext(new C9808a()).map(new C9809b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final List<FTSContentModel> m39699m(List<VirtualPage> virtualPageList) {
        int collectionSizeOrDefault;
        List list;
        Map mapList = CollectionKt.toMapList(virtualPageList, new Function1<VirtualPage, String>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$extractFTSContent$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath();
            }
        }, new Function1<VirtualPage, VirtualPage>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildReaderTextIndexAction$extractFTSContent$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final VirtualPage invoke(@NotNull VirtualPage it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        });
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : mapList.entrySet()) {
            Reader ensureReaderByPath$default = ReaderBundle.ensureReaderByPath$default(getEditorBundle().getWorkBundle().getReaderBundle(), (String) entry.getKey(), null, 2, null);
            if (ensureReaderByPath$default == null) {
                list = CollectionsKt__CollectionsKt.emptyList();
            } else {
                Iterable<VirtualPage> iterable = (Iterable) entry.getValue();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                for (VirtualPage virtualPage : iterable) {
                    FTSContentModel fTSContentModel = new FTSContentModel();
                    fTSContentModel.setType(TextContentType.PDF.name());
                    fTSContentModel.setPageUniqueId(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
                    fTSContentModel.setContent(ReaderKt.getPageText(ensureReaderByPath$default, virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPageId()));
                    arrayList2.add(fTSContentModel);
                }
                list = arrayList2;
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, list);
        }
        return arrayList;
    }
}
