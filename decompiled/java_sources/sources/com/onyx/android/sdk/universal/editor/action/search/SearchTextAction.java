package com.onyx.android.sdk.universal.editor.action.search;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.data.DelegatedValueProvider;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.SearchProgressResult;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.search.SearchTextAction;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.data.NoteSearchContext;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.events.note.UpdateSearchProgressEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 <2\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001<B\u001f\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010#\u001a\u00020 ¢\u0006\u0004\b:\u0010;J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\f\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0002J\f\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0002J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0006H\u0002J\u001a\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00060\u0002H\u0002J0\u0010\u000f\u001a\u00020\u00042\u0018\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00060\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u0002H\u0002J0\u0010\u0010\u001a\u00020\u00042\u0018\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00060\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u0002H\u0002J0\u0010\u0011\u001a\u00020\u00042\u0018\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00060\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u0002H\u0002J\"\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0002H\u0002J\"\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0002H\u0002J\"\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0002H\u0002J(\u0010\u0019\u001a\u00020\u00042\u001e\u0010\u0018\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0017H\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0002J\u0014\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0006H\u0014R\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R3\u0010)\u001a!\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0003 %*\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u00020$¢\u0006\u0002\b&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u001b\u00107\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106¨\u0006="}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "", "A", "Lio/reactivex/rxjava3/core/Observable;", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "t", "F", "w", "", "searchObservables", "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "contentTypes", "q", "s", "r", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPageList", "G", "I", "H", "Lkotlin/Pair;", "pair", "y", "z", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", C6999h.f39688c, "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "i", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "j", "Lio/reactivex/rxjava3/subjects/ReplaySubject;", "publisher", "Lio/reactivex/rxjava3/disposables/Disposable;", C4921e.f26537n, "Lio/reactivex/rxjava3/disposables/Disposable;", "dispose", "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;", "l", "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;", "searchProgressResult", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;", "m", "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;", "x", "()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;", "searchContext", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextAction\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,211:1\n97#2:212\n1#3:213\n766#4:214\n857#4,2:215\n1045#4:217\n1045#4:218\n1045#4:219\n*S KotlinDebug\n*F\n+ 1 SearchTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextAction\n*L\n43#1:212\n117#1:214\n117#1:215,2\n118#1:217\n134#1:218\n151#1:219\n*E\n"})
/* loaded from: classes8.dex */
public final class SearchTextAction extends RxBaseAppAction<List<? extends NoteSearchBean>> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final SyncNoteModel noteModel;

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
    public final SearchProgressResult searchProgressResult;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final DelegatedValueProvider searchContext;

    /* renamed from: n */
    public static final /* synthetic */ KProperty<Object>[] f50486n = {Reflection.property1(new PropertyReference1Impl(SearchTextAction.class, "searchContext", "getSearchContext()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;", 0))};

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$Companion;", "", "()V", "postSearchProgressEvent", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "deltaProgress", "", "totalProgress", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void postSearchProgressEvent(@NotNull EditorBundle editorBundle, @NotNull Number deltaProgress) {
            Intrinsics.checkNotNullParameter(editorBundle, "<this>");
            Intrinsics.checkNotNullParameter(deltaProgress, "deltaProgress");
            postSearchProgressEvent(editorBundle, Float.valueOf(0.0f), deltaProgress);
        }

        public Companion() {
        }

        public final void postSearchProgressEvent(@NotNull EditorBundle editorBundle, @NotNull Number totalProgress, @NotNull Number deltaProgress) {
            Intrinsics.checkNotNullParameter(editorBundle, "<this>");
            Intrinsics.checkNotNullParameter(totalProgress, "totalProgress");
            Intrinsics.checkNotNullParameter(deltaProgress, "deltaProgress");
            EditorBundleKt.postEvent(editorBundle, new UpdateSearchProgressEvent(totalProgress.floatValue(), deltaProgress.floatValue()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$a */
    /* loaded from: classes8.dex */
    public static final class C9865a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<VirtualPage> f50494f;

        /* renamed from: g */
        public final /* synthetic */ List<String> f50495g;

        public C9865a(List<VirtualPage> list, List<String> list2) {
            this.f50494f = list;
            this.f50495g = list2;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Set<String>> apply(@NotNull SearchTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return BuildTextIndexBaseAction.INSTANCE.buildIndex(new BuildScribbleTextIndexAction(SearchTextAction.this.getEditorBundle(), this.f50494f, SearchTextAction.this.noteSearchArgs), this.f50495g);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$b */
    /* loaded from: classes8.dex */
    public static final class C9867b<T, R> implements Function {
        public C9867b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NoteSearchBean>> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchTextAction.this.m39812H(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$c */
    /* loaded from: classes8.dex */
    public static final class C9868c<T> implements Consumer {
        public C9868c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchTextAction.this.m39808A();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$d */
    /* loaded from: classes8.dex */
    public static final class C9869d<T> implements Consumer {
        public C9869d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchTextAction.this.searchProgressResult.setCurrentSearchId(SearchTextAction.this.noteModel.getUniqueId());
            SearchProgressResult searchProgressResult = SearchTextAction.this.searchProgressResult;
            String title = SearchTextAction.this.noteModel.getTitle();
            if (title == null) {
                title = "";
            }
            searchProgressResult.setCurrentSearchName(title);
            SearchTextAction.INSTANCE.postSearchProgressEvent(SearchTextAction.this.getEditorBundle(), Float.valueOf(0.0f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$e */
    /* loaded from: classes8.dex */
    public static final class C9870e<T, R> implements Function {
        public C9870e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CreateSearchContextAction> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CreateSearchContextAction(SearchTextAction.this.getEditorBundle(), SearchTextAction.this.noteModel, SearchTextAction.this.noteSearchArgs).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$f */
    /* loaded from: classes8.dex */
    public static final class C9871f<T, R> implements Function {
        public C9871f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull CreateSearchContextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchTextAction.this.m39809C();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$g */
    /* loaded from: classes8.dex */
    public static final class C9872g<T, R> implements Function {
        public C9872g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull SearchTextAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchTextAction.this.m39817t();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$h */
    /* loaded from: classes8.dex */
    public static final class C9873h<T, R> implements Function {
        public C9873h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NoteSearchBean>> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchTextAction.this.m39810F();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$i */
    /* loaded from: classes8.dex */
    public static final class C9874i<T> implements Consumer {
        public C9874i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchTextAction.this.publisher.onError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$j */
    /* loaded from: classes8.dex */
    public static final class C9875j<T> implements Consumer {
        public C9875j() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchTextAction.INSTANCE.postSearchProgressEvent(SearchTextAction.this.getEditorBundle(), Float.valueOf(SearchTextAction.this.searchProgressResult.getMaxSearchProgress()), 0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchTextAction(@NotNull EditorBundle editorBundle, @NotNull SyncNoteModel noteModel, @NotNull NoteSearchArgs noteSearchArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        Intrinsics.checkNotNullParameter(noteSearchArgs, "noteSearchArgs");
        this.noteModel = noteModel;
        this.noteSearchArgs = noteSearchArgs;
        ReplaySubject<List<NoteSearchBean>> create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.publisher = create;
        this.searchProgressResult = new SearchProgressResult();
        this.searchContext = new DelegatedValueProvider() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$special$$inlined$delegate$1
            @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
            public RESULT getValue(CONTEXT context, @NotNull KProperty<?> kProperty) {
                return (RESULT) DelegatedValueProvider.DefaultImpls.getValue(this, context, kProperty);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.onyx.android.sdk.base.data.DelegatedValueProvider
            public final NoteSearchContext provideValue(CONTEXT context) {
                return ((SearchTextAction) context).noteSearchArgs.getSearchContext();
            }
        };
    }

    /* renamed from: B */
    public static final void m39798B(SearchTextAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m39819x().clear();
    }

    /* renamed from: D */
    public static final void m39799D(SearchTextAction this$0) {
        List emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ReplaySubject<List<NoteSearchBean>> replaySubject = this$0.publisher;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        RxjavaKt.done(replaySubject, emptyList);
    }

    /* renamed from: E */
    public static final void m39800E(SearchTextAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m39821z();
    }

    /* renamed from: u */
    public static final void m39806u(SearchTextAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Disposable disposable = this$0.dispose;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: v */
    public static final void m39807v(SearchTextAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.noteSearchArgs.getFtsIndexArgs().getPauseBackgroundTask()) {
            BuildTextIndexInBackgroundAction.INSTANCE.pauseTask(false);
        }
    }

    /* renamed from: A */
    public final void m39808A() {
        this.dispose = Observable.just(Unit.INSTANCE).observeOn(getMainUIScheduler()).doOnNext(new C9869d()).flatMap(new C9870e()).flatMap(new C9871f()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.a8m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SearchTextAction.m39798B(SearchTextAction.this);
            }
        }).subscribe();
    }

    /* renamed from: C */
    public final Observable<?> m39809C() {
        Observable<?> doFinally = Observable.just(this).flatMap(new C9872g()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9873h()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.b8m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SearchTextAction.m39799D(SearchTextAction.this);
            }
        }).doOnError(new C9874i()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.c8m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SearchTextAction.m39800E(SearchTextAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: F */
    public final Observable<List<NoteSearchBean>> m39810F() {
        List emptyList;
        List<Observable<List<NoteSearchBean>>> m39818w = m39818w();
        if (!m39818w.isEmpty()) {
            Observable<List<NoteSearchBean>> doOnSubscribe = Observable.merge(m39818w).doOnSubscribe(new C9875j());
            Intrinsics.checkNotNullExpressionValue(doOnSubscribe, "doOnSubscribe(...)");
            return doOnSubscribe;
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Observable<List<NoteSearchBean>> just = Observable.just(emptyList);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: G */
    public final Observable<List<NoteSearchBean>> m39811G(List<VirtualPage> virtualPageList) {
        List emptyList;
        Observable<List<? extends NoteSearchBean>> build = new SearchReaderTextAction(getEditorBundle(), this.noteSearchArgs, this.noteModel, virtualPageList, new SearchTextAction$searchReader$1(this)).build();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return RxjavaKt.onErrorReturnItemWithLog(build, emptyList);
    }

    /* renamed from: H */
    public final Observable<List<NoteSearchBean>> m39812H(List<VirtualPage> virtualPageList) {
        List emptyList;
        Observable<List<? extends NoteSearchBean>> build = new SearchScribbleTextAction(getEditorBundle(), this.noteSearchArgs, this.noteModel, virtualPageList, new SearchTextAction$searchScribble$1(this)).build();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return RxjavaKt.onErrorReturnItemWithLog(build, emptyList);
    }

    /* renamed from: I */
    public final Observable<List<NoteSearchBean>> m39813I(List<VirtualPage> virtualPageList) {
        List emptyList;
        Observable<List<? extends NoteSearchBean>> build = new SearchTextBoxAction(getEditorBundle(), this.noteSearchArgs, this.noteModel, virtualPageList, new SearchTextAction$searchTextBox$1(this)).build();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return RxjavaKt.onErrorReturnItemWithLog(build, emptyList);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<NoteSearchBean>> create() {
        if (this.noteSearchArgs.getFtsIndexArgs().getPauseBackgroundTask()) {
            BuildTextIndexInBackgroundAction.INSTANCE.pauseTask(true);
        }
        Observable<List<NoteSearchBean>> doFinally = this.publisher.doOnSubscribe(new C9868c()).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.d8m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SearchTextAction.m39806u(SearchTextAction.this);
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.e8m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                SearchTextAction.m39807v(SearchTextAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: q */
    public final void m39814q(List<Observable<List<NoteSearchBean>>> searchObservables, List<? extends TextContentType> contentTypes) {
        List<VirtualPage> sortedWith;
        if (CollectionKt.containsAnyElement(contentTypes, TextContentType.PDF)) {
            List<VirtualPage> virtualPageList = m39819x().getVirtualPageList(m39819x().getPageIdsForSearchReader());
            ArrayList arrayList = new ArrayList();
            for (Object obj : virtualPageList) {
                if (ContentConstants.INSTANCE.isPDF(((VirtualPage) obj).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentType())) {
                    arrayList.add(obj);
                }
            }
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$addSearchReaderObservable$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(((VirtualPage) t).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_ORDER_INDEX java.lang.String()), Float.valueOf(((VirtualPage) t2).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_ORDER_INDEX java.lang.String()));
                    return compareValues;
                }
            });
            if (!(!sortedWith.isEmpty())) {
                sortedWith = null;
            }
            if (sortedWith != null) {
                SearchProgressResult searchProgressResult = this.searchProgressResult;
                searchProgressResult.setMaxSearchProgress(searchProgressResult.getMaxSearchProgress() + sortedWith.size());
                searchObservables.add(m39811G(sortedWith));
            }
        }
    }

    /* renamed from: r */
    public final void m39815r(List<Observable<List<NoteSearchBean>>> searchObservables, List<? extends TextContentType> contentTypes) {
        List sortedWith;
        final List mutableList;
        if (CollectionKt.containsAnyElement(contentTypes, TextContentType.HANDWRITING, TextContentType.HWR_FONT_TEXT)) {
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(m39819x().getVirtualPageList(m39819x().getPageIdsForSearchScribble()), new Comparator() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$addSearchScribbleObservable$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(((VirtualPage) t).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_ORDER_INDEX java.lang.String()), Float.valueOf(((VirtualPage) t2).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_ORDER_INDEX java.lang.String()));
                    return compareValues;
                }
            });
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) sortedWith);
            List filterPageIdsForBuildIndex$default = NoteSearchContext.filterPageIdsForBuildIndex$default(m39819x(), null, 1, null);
            SearchProgressResult searchProgressResult = this.searchProgressResult;
            searchProgressResult.setMaxSearchProgress(searchProgressResult.getMaxSearchProgress() + mutableList.size());
            Observable<List<NoteSearchBean>> flatMap = Observable.just(this).flatMap(new C9865a(mutableList, filterPageIdsForBuildIndex$default)).map(new Function() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$addSearchScribbleObservable$observable$2
                @Override // io.reactivex.rxjava3.functions.Function
                @NotNull
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public final List<VirtualPage> apply(@NotNull Set<String> indexedPageIds) {
                    Intrinsics.checkNotNullParameter(indexedPageIds, "indexedPageIds");
                    final SearchTextAction searchTextAction = this;
                    final List<VirtualPage> list = mutableList;
                    CollectionKt.ifNotEmpty(indexedPageIds, new Function1<Set<? extends String>, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$addSearchScribbleObservable$observable$2.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Set<? extends String> set) {
                            invoke2((Set<String>) set);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull Set<String> set) {
                            NoteSearchContext m39819x;
                            Intrinsics.checkNotNullParameter(set, "set");
                            SearchProgressResult searchProgressResult2 = SearchTextAction.this.searchProgressResult;
                            searchProgressResult2.setMaxSearchProgress(searchProgressResult2.getMaxSearchProgress() + set.size());
                            List<VirtualPage> list2 = list;
                            m39819x = SearchTextAction.this.m39819x();
                            list2.addAll(m39819x.getVirtualPageList(set));
                        }
                    });
                    return mutableList;
                }
            }).flatMap(new C9867b());
            Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
            searchObservables.add(flatMap);
        }
    }

    /* renamed from: s */
    public final void m39816s(List<Observable<List<NoteSearchBean>>> searchObservables, List<? extends TextContentType> contentTypes) {
        List<VirtualPage> sortedWith;
        if (CollectionKt.containsAnyElement(contentTypes, TextContentType.TEXT_BOX)) {
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(m39819x().getVirtualPageList(m39819x().getPageIdsForSearchTextBox()), new Comparator() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$addSearchTextBoxObservable$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(((VirtualPage) t).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_ORDER_INDEX java.lang.String()), Float.valueOf(((VirtualPage) t2).getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_ORDER_INDEX java.lang.String()));
                    return compareValues;
                }
            });
            if (!(!sortedWith.isEmpty())) {
                sortedWith = null;
            }
            if (sortedWith != null) {
                SearchProgressResult searchProgressResult = this.searchProgressResult;
                searchProgressResult.setMaxSearchProgress(searchProgressResult.getMaxSearchProgress() + sortedWith.size());
                searchObservables.add(m39813I(sortedWith));
            }
        }
    }

    /* renamed from: t */
    public final Observable<?> m39817t() {
        BuildTextIndexByPageAction buildTextIndexByPageAction = new BuildTextIndexByPageAction(getEditorBundle(), m39819x().getAllPageIds(), this.noteSearchArgs);
        buildTextIndexByPageAction.getContentTypes().remove(TextContentType.HANDWRITING);
        return buildTextIndexByPageAction.build();
    }

    /* renamed from: w */
    public final List<Observable<List<NoteSearchBean>>> m39818w() {
        List<TextContentType> contentTypes = TextSearchType.INSTANCE.getContentTypes(this.noteSearchArgs.getSearchTypes());
        ArrayList arrayList = new ArrayList();
        m39814q(arrayList, contentTypes);
        m39816s(arrayList, contentTypes);
        m39815r(arrayList, contentTypes);
        return arrayList;
    }

    /* renamed from: x */
    public final NoteSearchContext m39819x() {
        return (NoteSearchContext) this.searchContext.getValue(this, f50486n[0]);
    }

    /* renamed from: y */
    public final void m39820y(Pair<? extends List<VirtualPage>, ? extends List<NoteSearchBean>> pair) {
        INSTANCE.postSearchProgressEvent(getEditorBundle(), Float.valueOf(this.searchProgressResult.getMaxSearchProgress()), Integer.valueOf(pair.getFirst().size()));
        this.publisher.onNext(pair.getSecond());
    }

    /* renamed from: z */
    public final void m39821z() {
        DocCommonActionsKt.createReaderObservable(getEditorBundle(), new Function1<ReaderBundle, Unit>() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchTextAction$reopenReaderDocument$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ReaderBundle readerBundle) {
                invoke2(readerBundle);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ReaderBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                it2.reopenReader();
            }
        }).subscribe();
    }
}
