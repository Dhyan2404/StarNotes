package com.onyx.android.sdk.universal.editor.action.search;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.replicator.fts.model.FTSContentModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
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
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 ,2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001,B-\u0012\u0006\u0010)\u001a\u00020(\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\f0\u0004\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u0012\u0006\u0010\u001f\u001a\u00020\u001a¢\u0006\u0004\b*\u0010+J*\u0010\n\u001a\u0006\u0012\u0002\b\u00030\t2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007H\u0014J*\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007H\u0004R(\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\f0\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001f\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR(\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00030 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "", "", "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;", "models", "", "pageIds", "Lio/reactivex/rxjava3/core/Observable;", "saveToDatabaseObservable", "saveToDatabase", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", C6999h.f39688c, "Ljava/util/List;", "getVirtualPageList", "()Ljava/util/List;", "setVirtualPageList", "(Ljava/util/List;)V", "virtualPageList", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "i", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "getNoteSearchArgs", "()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "j", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "getType", "()Lcom/onyx/android/sdk/data/common/data/TextContentType;", "type", "", C4921e.f26537n, "Ljava/util/Set;", "getIndexedPageIds", "()Ljava/util/Set;", "setIndexedPageIds", "(Ljava/util/Set;)V", "indexedPageIds", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/data/common/data/TextContentType;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBuildTextIndexBaseAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildTextIndexBaseAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1549#2:114\n1620#2,3:115\n766#2:118\n857#2,2:119\n1549#2:121\n1620#2,3:122\n1#3:125\n*S KotlinDebug\n*F\n+ 1 BuildTextIndexBaseAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction\n*L\n37#1:114\n37#1:115,3\n52#1:118\n52#1:119,2\n53#1:121\n53#1:122,3\n*E\n"})
/* loaded from: classes8.dex */
public abstract class BuildTextIndexBaseAction extends RxBaseAppAction<Set<? extends String>> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<VirtualPage> virtualPageList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final NoteSearchArgs noteSearchArgs;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final TextContentType type;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public Set<String> indexedPageIds;

    @Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J:\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J$\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00100\u000f*\u00020\u000e2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004J4\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004H\u0002¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "", "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;", "models", "", "pageIds", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "type", "lang", "", "savePageContent", "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", "", "buildIndex", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nBuildTextIndexBaseAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildTextIndexBaseAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1603#2,9:114\n1855#2:123\n1856#2:125\n1612#2:126\n1#3:124\n*S KotlinDebug\n*F\n+ 1 BuildTextIndexBaseAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion\n*L\n85#1:114,9\n85#1:123\n85#1:125\n85#1:126\n85#1:124\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexBaseAction$Companion$a */
        /* loaded from: classes8.dex */
        public static final class C9824a<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ BuildTextIndexBaseAction f50406e;

            /* renamed from: f */
            public final /* synthetic */ Collection<String> f50407f;

            public C9824a(BuildTextIndexBaseAction buildTextIndexBaseAction, Collection<String> collection) {
                this.f50406e = buildTextIndexBaseAction;
                this.f50407f = collection;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final List<VirtualPage> apply(@NotNull BuildTextIndexBaseAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return BuildTextIndexBaseAction.INSTANCE.m39716a(this.f50406e.getEditorBundle(), this.f50406e.getNoteSearchArgs(), this.f50406e.getType(), this.f50407f);
            }
        }

        /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexBaseAction$Companion$b */
        /* loaded from: classes8.dex */
        public static final class C9825b<T, R> implements Function {

            /* renamed from: e */
            public final /* synthetic */ Set<String> f50408e;

            public C9825b(Set<String> set) {
                this.f50408e = set;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Set<String> apply(@NotNull Object it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Set<String> set = this.f50408e;
                Intrinsics.checkNotNull(set, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
                return set;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final List<VirtualPage> m39716a(EditorBundle editorBundle, NoteSearchArgs noteSearchArgs, TextContentType type, Collection<String> pageIds) {
            Set set;
            Set set2;
            List<VirtualPage> emptyList;
            if (CollectionKt.isNullOrEmpty(pageIds)) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            List<String> queryIndexedPageIds = EditorBundleKt.getDocFtsProvider(editorBundle).queryIndexedPageIds(CollectionKt.asList(type));
            set = CollectionsKt___CollectionsKt.toSet(pageIds);
            set2 = CollectionsKt___CollectionsKt.toSet(queryIndexedPageIds);
            Set diff = CollectionKt.diff(set, set2);
            ArrayList arrayList = new ArrayList();
            Iterator it2 = diff.iterator();
            while (it2.hasNext()) {
                VirtualPage virtualPage = editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPage((String) it2.next());
                if (virtualPage != null) {
                    arrayList.add(virtualPage);
                }
            }
            return arrayList;
        }

        @NotNull
        public final Observable<Set<String>> buildIndex(@NotNull final BuildTextIndexBaseAction buildTextIndexBaseAction, @NotNull Collection<String> pageIds) {
            Intrinsics.checkNotNullParameter(buildTextIndexBaseAction, "<this>");
            Intrinsics.checkNotNullParameter(pageIds, "pageIds");
            final LinkedHashSet linkedHashSet = new LinkedHashSet();
            Observable map = Observable.just(buildTextIndexBaseAction).observeOn(ClusterManager.INSTANCE.getDataObserveOn()).map(new C9824a(buildTextIndexBaseAction, pageIds));
            Intrinsics.checkNotNullExpressionValue(map, "map(...)");
            Observable<R> map2 = RxjavaKt.flatMapIf(map, new Function1<List<? extends VirtualPage>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexBaseAction$Companion$buildIndex$2
                @NotNull
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final Boolean invoke2(@NotNull List<VirtualPage> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(!it2.isEmpty());
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(List<? extends VirtualPage> list) {
                    return invoke2((List<VirtualPage>) list);
                }
            }, new Function1<List<? extends VirtualPage>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexBaseAction$Companion$buildIndex$3

                /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexBaseAction$Companion$buildIndex$3$a */
                /* loaded from: classes8.dex */
                public static final class C9826a<T> implements Consumer {

                    /* renamed from: e */
                    public final /* synthetic */ Set<String> f50409e;

                    public C9826a(Set<String> set) {
                        this.f50409e = set;
                    }

                    @Override // io.reactivex.rxjava3.functions.Consumer
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final void accept(@NotNull Set<String> it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        this.f50409e.addAll(it2);
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends VirtualPage> list) {
                    return invoke2((List<VirtualPage>) list);
                }

                @NotNull
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final Observable<? extends Object> invoke2(@NotNull List<VirtualPage> it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    BuildTextIndexBaseAction.this.setVirtualPageList(it2);
                    Observable<Set<? extends String>> doOnNext = BuildTextIndexBaseAction.this.build().doOnNext(new C9826a(linkedHashSet));
                    Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
                    return doOnNext;
                }
            }).map(new C9825b(linkedHashSet));
            Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
            return RxjavaKt.onErrorReturnItemWithLog(map2, linkedHashSet);
        }

        public final void savePageContent(@NotNull EditorBundle editorBundle, @NotNull Collection<FTSContentModel> models, @NotNull Collection<String> pageIds, @NotNull TextContentType type, @NotNull String lang) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(models, "models");
            Intrinsics.checkNotNullParameter(pageIds, "pageIds");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(lang, "lang");
            EditorBundleKt.getDocFtsProvider(editorBundle).deleteFtsContent(pageIds, type);
            EditorBundleKt.getDocFtsProvider(editorBundle).deletePageState(pageIds, type);
            EditorBundleKt.getDocFtsProvider(editorBundle).saveFtsContent(models);
            EditorBundleKt.getDocFtsProvider(editorBundle).savePageStates(pageIds, type);
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexBaseAction$a */
    /* loaded from: classes8.dex */
    public static final class C9827a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<FTSContentModel> f50411f;

        /* renamed from: g */
        public final /* synthetic */ Collection<String> f50412g;

        public C9827a(List<FTSContentModel> list, Collection<String> collection) {
            this.f50411f = list;
            this.f50412g = collection;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BuildTextIndexBaseAction.this.saveToDatabase(this.f50411f, this.f50412g);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuildTextIndexBaseAction(@NotNull EditorBundle editorBundle, @NotNull List<VirtualPage> virtualPageList, @NotNull NoteSearchArgs noteSearchArgs, @NotNull TextContentType type) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(virtualPageList, "virtualPageList");
        Intrinsics.checkNotNullParameter(noteSearchArgs, "noteSearchArgs");
        Intrinsics.checkNotNullParameter(type, "type");
        this.virtualPageList = virtualPageList;
        this.noteSearchArgs = noteSearchArgs;
        this.type = type;
        this.indexedPageIds = new LinkedHashSet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Observable saveToDatabaseObservable$default(BuildTextIndexBaseAction buildTextIndexBaseAction, List list, Collection collection, int i, Object obj) {
        int collectionSizeOrDefault;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: saveToDatabaseObservable");
        }
        if ((i & 2) != 0) {
            List list2 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(((FTSContentModel) it2.next()).getPageUniqueId());
            }
            collection = arrayList;
        }
        return buildTextIndexBaseAction.saveToDatabaseObservable(list, collection);
    }

    @NotNull
    public final Set<String> getIndexedPageIds() {
        return this.indexedPageIds;
    }

    @NotNull
    public final NoteSearchArgs getNoteSearchArgs() {
        return this.noteSearchArgs;
    }

    @NotNull
    public final TextContentType getType() {
        return this.type;
    }

    @NotNull
    public final List<VirtualPage> getVirtualPageList() {
        return this.virtualPageList;
    }

    @NotNull
    public final Collection<String> saveToDatabase(@NotNull List<FTSContentModel> models, @NotNull Collection<String> pageIds) {
        int collectionSizeOrDefault;
        boolean contains;
        List emptyList;
        Intrinsics.checkNotNullParameter(models, "models");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        if (pageIds.isEmpty() && models.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        INSTANCE.savePageContent(getEditorBundle(), models, pageIds, this.type, this.noteSearchArgs.getHwrArgs().getLang());
        ArrayList arrayList = new ArrayList();
        for (Object obj : models) {
            contains = StringsKt__StringsKt.contains((CharSequence) ((FTSContentModel) obj).getContent(), (CharSequence) this.noteSearchArgs.getKeyword(), true);
            if (contains) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((FTSContentModel) it2.next()).getPageUniqueId());
        }
        ArrayList arrayList3 = null;
        if (!(!arrayList2.isEmpty())) {
            arrayList2 = null;
        }
        if (arrayList2 != null) {
            this.indexedPageIds.addAll(arrayList2);
            arrayList3 = arrayList2;
        }
        return CollectionKt.ensureList(arrayList3);
    }

    @NotNull
    public Observable<?> saveToDatabaseObservable(@NotNull List<FTSContentModel> models, @NotNull Collection<String> pageIds) {
        Intrinsics.checkNotNullParameter(models, "models");
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        Observable<?> doOnNext = Observable.just(Unit.INSTANCE).observeOn(ClusterManager.INSTANCE.getDataObserveOn()).doOnNext(new C9827a(models, pageIds));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public final void setIndexedPageIds(@NotNull Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.indexedPageIds = set;
    }

    public final void setVirtualPageList(@NotNull List<VirtualPage> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.virtualPageList = list;
    }
}
