package com.onyx.android.sdk.universal.editor.action.search;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.fts.model.FTSContentModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.util.FTSContentSearcher;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B{\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002\u0012L\u0010\u001c\u001aH\u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016j \u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0017`\u0019¢\u0006\u0004\b!\u0010\"J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\"\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\"\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015RZ\u0010\u001c\u001aH\u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016j \u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0017`\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00030\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0015¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/SearchScribbleTextAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPageList", "l", "virtualPages", GoogleApiAvailabilityLight.f29016b, "m", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "i", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "j", "Ljava/util/List;", "Lkotlin/Function1;", "Lkotlin/Pair;", "", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", C4921e.f26537n, "Lkotlin/jvm/functions/Function1;", EventHandlerManager.OBSERVER, "", "resultList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchScribbleTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchScribbleTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchScribbleTextAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n1477#2:85\n1502#2,3:86\n1505#2,3:96\n372#3,7:89\n135#4,9:99\n215#4:108\n216#4:110\n144#4:111\n1#5:109\n*S KotlinDebug\n*F\n+ 1 SearchScribbleTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchScribbleTextAction\n*L\n72#1:85\n72#1:86,3\n72#1:96,3\n72#1:89,7\n73#1:99,9\n73#1:108\n73#1:110\n73#1:111\n73#1:109\n*E\n"})
/* loaded from: classes8.dex */
public final class SearchScribbleTextAction extends RxBaseAppAction<List<? extends NoteSearchBean>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NoteSearchArgs noteSearchArgs;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final SyncNoteModel noteModel;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final List<VirtualPage> virtualPageList;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Function1<Pair<? extends List<VirtualPage>, ? extends List<NoteSearchBean>>, Unit> observer;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final List<NoteSearchBean> resultList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchScribbleTextAction$a */
    /* loaded from: classes8.dex */
    public static final class C9859a<T, R> implements Function {
        public C9859a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NoteSearchBean>> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchScribbleTextAction.this.m39789l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchScribbleTextAction$b */
    /* loaded from: classes8.dex */
    public static final class C9860b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<VirtualPage> f50481f;

        public C9860b(List<VirtualPage> list) {
            this.f50481f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NoteSearchBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchScribbleTextAction.this.observer.invoke(TuplesKt.m61535to(this.f50481f, it2));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchScribbleTextAction$c */
    /* loaded from: classes8.dex */
    public static final class C9861c<T, R> implements Function {
        public C9861c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NoteSearchBean>> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchScribbleTextAction.this.m39791n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchScribbleTextAction$d */
    /* loaded from: classes8.dex */
    public static final class C9862d<T, R> implements Function {
        public C9862d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteSearchBean> apply(@NotNull List<NoteSearchBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchScribbleTextAction.this.resultList;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchScribbleTextAction$e */
    /* loaded from: classes8.dex */
    public static final class C9863e<T, R> implements Function {
        public C9863e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<List<VirtualPage>, List<NoteSearchBean>> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return TuplesKt.m61535to(it2, SearchScribbleTextAction.this.m39790m(it2));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchScribbleTextAction$f */
    /* loaded from: classes8.dex */
    public static final class C9864f<T, R> implements Function {
        public C9864f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteSearchBean> apply(@NotNull Pair<? extends List<VirtualPage>, ? extends List<NoteSearchBean>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchScribbleTextAction.this.resultList.addAll(it2.getSecond());
            SearchScribbleTextAction.this.observer.invoke(it2);
            return it2.getSecond();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SearchScribbleTextAction(@NotNull EditorBundle editorBundle, @NotNull NoteSearchArgs noteSearchArgs, @NotNull SyncNoteModel noteModel, @NotNull List<VirtualPage> virtualPageList, @NotNull Function1<? super Pair<? extends List<VirtualPage>, ? extends List<NoteSearchBean>>, Unit> observer) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(noteSearchArgs, "noteSearchArgs");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        Intrinsics.checkNotNullParameter(virtualPageList, "virtualPageList");
        Intrinsics.checkNotNullParameter(observer, "observer");
        this.noteSearchArgs = noteSearchArgs;
        this.noteModel = noteModel;
        this.virtualPageList = virtualPageList;
        this.observer = observer;
        this.resultList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<NoteSearchBean>> create() {
        Observable<List<NoteSearchBean>> flatMap = Observable.just(this.virtualPageList).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9859a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<List<NoteSearchBean>> m39789l(List<VirtualPage> virtualPageList) {
        List emptyList;
        if (virtualPageList.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            Observable<List<NoteSearchBean>> doOnNext = Observable.just(emptyList).doOnNext(new C9860b(virtualPageList));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        Observable concatMap = Observable.fromIterable(CollectionKt.split(virtualPageList, 100)).concatMap(new C9861c());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<List<NoteSearchBean>> map = RxjavaKt.takeLastOne(concatMap).map(new C9862d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final List<NoteSearchBean> m39790m(List<VirtualPage> virtualPageList) {
        List<? extends TextContentType> listOf;
        List<NoteSearchBean> flatten;
        Integer num;
        final Set<String> allPageIds = this.noteSearchArgs.getSearchContext().getAllPageIds();
        Map<String, VirtualPage> pageIdMap = VirtualPage.INSTANCE.toPageIdMap(virtualPageList);
        Map map = CollectionKt.toMap(pageIdMap.keySet(), new Function1<String, String>() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchScribbleTextAction$searchFromDatabase$pageIndexMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, new Function1<String, Integer>() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchScribbleTextAction$searchFromDatabase$pageIndexMap$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull String it2) {
                int indexOf;
                Intrinsics.checkNotNullParameter(it2, "it");
                indexOf = CollectionsKt___CollectionsKt.indexOf((Iterable<? extends String>) ((Iterable<? extends Object>) allPageIds), it2);
                return Integer.valueOf(indexOf);
            }
        });
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TextContentType[]{TextContentType.HANDWRITING, TextContentType.HWR_FONT_TEXT});
        List<FTSContentModel> queryFtsContentByArgs = EditorBundleKt.getDocFtsProvider(getEditorBundle()).queryFtsContentByArgs(EditorBundleKt.getDocFtsProvider(getEditorBundle()).createTypesWithKeywordQueryArgs(listOf, this.noteSearchArgs.getKeyword()).andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_PAGE_ID, pageIdMap.keySet())));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : queryFtsContentByArgs) {
            String pageUniqueId = ((FTSContentModel) obj).getPageUniqueId();
            Object obj2 = linkedHashMap.get(pageUniqueId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageUniqueId, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            VirtualPage virtualPage = pageIdMap.get(entry.getKey());
            List<NoteSearchBean> list = null;
            if (virtualPage != null && (num = (Integer) map.get(entry.getKey())) != null) {
                list = NoteSearchBean.INSTANCE.mergeByPage(FTSContentSearcher.INSTANCE.searchKeywordRect((List<FTSContentModel>) entry.getValue(), this.noteSearchArgs.getKeyword(), this.noteModel, virtualPage, num.intValue()));
            }
            if (list != null) {
                arrayList.add(list);
            }
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList);
        return flatten;
    }

    /* renamed from: n */
    public final Observable<List<NoteSearchBean>> m39791n(List<VirtualPage> virtualPages) {
        Observable<List<NoteSearchBean>> observeOn = Observable.just(virtualPages).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C9863e()).map(new C9864f()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }
}
