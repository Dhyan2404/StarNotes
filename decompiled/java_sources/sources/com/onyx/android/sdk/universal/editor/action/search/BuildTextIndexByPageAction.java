package com.onyx.android.sdk.universal.editor.action.search;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.cluster.ClusterManager;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexBaseAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0014J\u001a\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006H\u0002J\u001a\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006H\u0002J\u001a\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006H\u0002R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR(\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction;", "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", "", "", BaiduYunConstant.CREATE, "", "pageIds", "m", GoogleApiAvailabilityLight.f29016b, "l", "Ljava/util/Collection;", "", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "Ljava/util/List;", "getContentTypes", "()Ljava/util/List;", "setContentTypes", "(Ljava/util/List;)V", "contentTypes", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Collection;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBuildTextIndexByPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildTextIndexByPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,64:1\n637#2:65\n637#2:66\n637#2:67\n*S KotlinDebug\n*F\n+ 1 BuildTextIndexByPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexByPageAction\n*L\n37#1:65\n47#1:66\n57#1:67\n*E\n"})
/* loaded from: classes8.dex */
public final class BuildTextIndexByPageAction extends BuildTextIndexBaseAction {

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Collection<String> pageIds;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public List<TextContentType> contentTypes;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexByPageAction$a */
    /* loaded from: classes8.dex */
    public static final class C9828a<T, R> implements Function {
        public C9828a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> apply(@NotNull Collection<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildTextIndexByPageAction.this.getNoteSearchArgs().getSearchContext().filterPageIdsForBuildIndex(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexByPageAction$b */
    /* loaded from: classes8.dex */
    public static final class C9829b<T, R> implements Function {
        public C9829b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<String> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildTextIndexByPageAction.this.getIndexedPageIds();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexByPageAction$c */
    /* loaded from: classes8.dex */
    public static final class C9830c<T> implements Consumer {
        public C9830c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Set<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BuildTextIndexByPageAction.this.getIndexedPageIds().addAll(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexByPageAction$d */
    /* loaded from: classes8.dex */
    public static final class C9831d<T> implements Consumer {
        public C9831d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Set<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BuildTextIndexByPageAction.this.getIndexedPageIds().addAll(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexByPageAction$e */
    /* loaded from: classes8.dex */
    public static final class C9832e<T> implements Consumer {
        public C9832e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Set<String> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            BuildTextIndexByPageAction.this.getIndexedPageIds().addAll(it2);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BuildTextIndexByPageAction(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.EditorBundle r3, @org.jetbrains.annotations.NotNull java.util.Collection<java.lang.String> r4, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.data.NoteSearchArgs r5) {
        /*
            r2 = this;
            java.lang.String r0 = "editorBundle"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "pageIds"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "noteSearchArgs"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
            com.onyx.android.sdk.data.common.data.TextContentType r1 = com.onyx.android.sdk.data.common.data.TextContentType.UNDEFINED
            r2.<init>(r3, r0, r5, r1)
            r2.pageIds = r4
            com.onyx.android.sdk.universal.editor.data.TextSearchType$Companion r3 = com.onyx.android.sdk.universal.editor.data.TextSearchType.INSTANCE
            java.util.List r4 = r5.getSearchTypes()
            java.util.List r3 = r3.getContentTypes(r4)
            r2.contentTypes = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexByPageAction.<init>(com.onyx.android.sdk.universal.editor.EditorBundle, java.util.Collection, com.onyx.android.sdk.universal.editor.data.NoteSearchArgs):void");
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Set<String>> create() {
        Observable map = Observable.just(this.pageIds).observeOn(ClusterManager.INSTANCE.getDataObserveOn()).map(new C9828a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable map2 = RxjavaKt.flatMapIf(map, new Function1<List<? extends String>, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexByPageAction$create$2
            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(@NotNull List<String> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(List<? extends String> list) {
                return invoke2((List<String>) list);
            }
        }, new Function1<List<? extends String>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.search.BuildTextIndexByPageAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(List<? extends String> list) {
                return invoke2((List<String>) list);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Observable<? extends Object> invoke2(@NotNull List<String> it2) {
                Observable m39722m;
                Observable m39723n;
                Observable m39721l;
                Intrinsics.checkNotNullParameter(it2, "it");
                List<String> list = it2;
                m39722m = BuildTextIndexByPageAction.this.m39722m(list);
                m39723n = BuildTextIndexByPageAction.this.m39723n(list);
                m39721l = BuildTextIndexByPageAction.this.m39721l(list);
                Observable merge = Observable.merge(m39722m, m39723n, m39721l);
                Intrinsics.checkNotNullExpressionValue(merge, "merge(...)");
                return RxjavaKt.takeLastOne(merge);
            }
        }).map(new C9829b());
        Intrinsics.checkNotNullExpressionValue(map2, "map(...)");
        return map2;
    }

    @NotNull
    public final List<TextContentType> getContentTypes() {
        return this.contentTypes;
    }

    /* renamed from: l */
    public final Observable<?> m39721l(Collection<String> pageIds) {
        List emptyList;
        if (!this.contentTypes.contains(TextContentType.HWR_FONT_TEXT)) {
            Observable<?> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        BuildTextIndexBaseAction.Companion companion = BuildTextIndexBaseAction.INSTANCE;
        EditorBundle editorBundle = getEditorBundle();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Observable<Set<String>> doOnNext = companion.buildIndex(new BuildHwrShapeIndexAction(editorBundle, emptyList, getNoteSearchArgs()), pageIds).doOnNext(new C9830c());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: m */
    public final Observable<?> m39722m(Collection<String> pageIds) {
        List emptyList;
        if (!this.contentTypes.contains(TextContentType.PDF)) {
            Observable<?> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        BuildTextIndexBaseAction.Companion companion = BuildTextIndexBaseAction.INSTANCE;
        EditorBundle editorBundle = getEditorBundle();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Observable<Set<String>> doOnNext = companion.buildIndex(new BuildReaderTextIndexAction(editorBundle, emptyList, getNoteSearchArgs()), pageIds).doOnNext(new C9831d());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: n */
    public final Observable<?> m39723n(Collection<String> pageIds) {
        List emptyList;
        if (!this.contentTypes.contains(TextContentType.HANDWRITING)) {
            Observable<?> just = Observable.just(Unit.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        BuildTextIndexBaseAction.Companion companion = BuildTextIndexBaseAction.INSTANCE;
        EditorBundle editorBundle = getEditorBundle();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Observable<Set<String>> doOnNext = companion.buildIndex(new BuildScribbleTextIndexAction(editorBundle, emptyList, getNoteSearchArgs()), pageIds).doOnNext(new C9832e());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public final void setContentTypes(@NotNull List<TextContentType> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.contentTypes = list;
    }
}
