package com.onyx.android.sdk.universal.editor.action.search;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.api.ReaderNavigator;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.helper.ReaderSearch;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import kotlin.time.TimedValue;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010&\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u00012B{\u0012\u0006\u0010/\u001a\u00020.\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\u0006\u0010\"\u001a\u00020\u001f\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002\u0012L\u0010+\u001aH\u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020&\u0012\u0004\u0012\u00020'0%j \u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020&`(¢\u0006\u0004\b0\u00101J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\"\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J&\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00042\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00020\tH\u0002J\"\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00042\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002H\u0002J0\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00160\u00020\u00152\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J$\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0018\u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00160\u0002H\u0002R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$RZ\u0010+\u001aH\u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020&\u0012\u0004\u0012\u00020'0%j \u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020&`(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u001a\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00030,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010$¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPageList", "l", "", "", "entry", GoogleApiAvailabilityLight.f29016b, "", "batch", C4921e.f26528e, "virtualPages", "Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;", "m", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "readerBundle", "", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "p", "virtualPage", "selections", "q", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "i", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "j", "Ljava/util/List;", "Lkotlin/Function1;", "Lkotlin/Pair;", "", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", C4921e.f26537n, "Lkotlin/jvm/functions/Function1;", EventHandlerManager.OBSERVER, "", "resultList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "SearchResult", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchReaderTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,161:1\n1477#2:162\n1502#2,3:163\n1505#2,3:173\n1855#2:177\n1855#2:178\n1855#2,2:179\n1856#2:181\n1856#2:182\n372#3,7:166\n1#4:176\n*S KotlinDebug\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction\n*L\n58#1:162\n58#1:163,3\n58#1:173,3\n110#1:177\n118#1:178\n119#1:179,2\n118#1:181\n110#1:182\n58#1:166,7\n*E\n"})
/* loaded from: classes8.dex */
public final class SearchReaderTextAction extends RxBaseAppAction<List<? extends NoteSearchBean>> {

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

    /* loaded from: classes8.dex */
    public static final class SearchResult {

        /* renamed from: d */
        @NotNull
        public static final Companion f50456d = new Companion(null);

        /* renamed from: e */
        public static final int f50457e = 3;

        /* renamed from: f */
        public static final int f50458f = 3000;

        /* renamed from: g */
        public static final int f50459g = 100;

        /* renamed from: a */
        @NotNull
        public final List<VirtualPage> f50460a;

        /* renamed from: b */
        @NotNull
        public final List<NoteSearchBean> f50461b;

        /* renamed from: c */
        public final long f50462c;

        @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult$Companion;", "", "()V", "TEST_SEARCH_MAX_BATCH", "", "TEST_SEARCH_TIME_PAGES_COUNT", "TEST_SEARCH_TOTAL_TIME", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        public /* synthetic */ SearchResult(List list, List list2, long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, list2, j);
        }

        /* renamed from: a */
        public final int m39776a() {
            int coerceIn;
            coerceIn = RangesKt___RangesKt.coerceIn(3000 / (((int) Duration.m73993getInWholeMillisecondsimpl(this.f50462c)) / this.f50460a.size()), 1, 100);
            return coerceIn;
        }

        @NotNull
        /* renamed from: b */
        public final Pair<List<VirtualPage>, List<NoteSearchBean>> m39777b() {
            return TuplesKt.m61535to(this.f50460a, this.f50461b);
        }

        @NotNull
        /* renamed from: c */
        public final List<NoteSearchBean> m39778c() {
            return this.f50461b;
        }

        /* renamed from: d */
        public final long m39779d() {
            return this.f50462c;
        }

        @NotNull
        /* renamed from: e */
        public final List<VirtualPage> m39780e() {
            return this.f50460a;
        }

        public SearchResult(List<VirtualPage> virtualPages, List<NoteSearchBean> searchBeanList, long j) {
            Intrinsics.checkNotNullParameter(virtualPages, "virtualPages");
            Intrinsics.checkNotNullParameter(searchBeanList, "searchBeanList");
            this.f50460a = virtualPages;
            this.f50461b = searchBeanList;
            this.f50462c = j;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchReaderTextAction$a */
    /* loaded from: classes8.dex */
    public static final class C9851a<T, R> implements Function {
        public C9851a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NoteSearchBean>> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchReaderTextAction.this.m39770l(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchReaderTextAction$b */
    /* loaded from: classes8.dex */
    public static final class C9852b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<VirtualPage> f50465f;

        public C9852b(List<VirtualPage> list) {
            this.f50465f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NoteSearchBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchReaderTextAction.this.observer.invoke(TuplesKt.m61535to(this.f50465f, it2));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchReaderTextAction$c */
    /* loaded from: classes8.dex */
    public static final class C9853c<T, R> implements Function {
        public C9853c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Map.Entry<String, ? extends List<VirtualPage>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchReaderTextAction.this.m39772n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchReaderTextAction$d */
    /* loaded from: classes8.dex */
    public static final class C9854d<T, R> implements Function {
        public C9854d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteSearchBean> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchReaderTextAction.this.resultList;
        }
    }

    @SourceDebugExtension({"SMAP\nSearchReaderTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$searchPages$1\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,161:1\n98#2,4:162\n*S KotlinDebug\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$searchPages$1\n*L\n71#1:162,4\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchReaderTextAction$e */
    /* loaded from: classes8.dex */
    public static final class C9855e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Map.Entry<String, List<VirtualPage>> f50469f;

        /* JADX WARN: Multi-variable type inference failed */
        public C9855e(Map.Entry<String, ? extends List<VirtualPage>> entry) {
            this.f50469f = entry;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull SearchResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            int m39776a = it2.m39776a();
            Debug debug = Debug.INSTANCE;
            Class<?> cls = SearchReaderTextAction.this.getClass();
            Map.Entry<String, List<VirtualPage>> entry = this.f50469f;
            if (debug.getDebug()) {
                debug.m32035d(cls, "search reader (" + entry.getKey() + ") time:" + ((Object) Duration.m74024toStringimpl(it2.m39779d())) + " ,determine batch:" + m39776a, new Object[0]);
            }
            return Integer.valueOf(m39776a);
        }
    }

    @SourceDebugExtension({"SMAP\nSearchReaderTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$searchPages$4\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,161:1\n79#2,5:162\n113#2,6:167\n119#2:179\n76#3:173\n96#3,5:174\n*S KotlinDebug\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$searchPages$4\n*L\n89#1:162,5\n89#1:167,6\n89#1:179\n91#1:173\n91#1:174,5\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchReaderTextAction$f */
    /* loaded from: classes8.dex */
    public static final class C9856f<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<VirtualPage> f50471f;

        public C9856f(List<VirtualPage> list) {
            this.f50471f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SearchResult apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchReaderTextAction searchReaderTextAction = SearchReaderTextAction.this;
            List<VirtualPage> list = this.f50471f;
            long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
            Map m39774p = searchReaderTextAction.m39774p(list, EditorBundleKt.readerBundle(searchReaderTextAction.getEditorBundle()));
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : m39774p.entrySet()) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, searchReaderTextAction.m39775q((VirtualPage) entry.getKey(), (List) entry.getValue()));
            }
            TimedValue timedValue = new TimedValue(TuplesKt.m61535to(list, arrayList), TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto), null);
            return new SearchResult((List) ((Pair) timedValue.getValue()).getFirst(), (List) ((Pair) timedValue.getValue()).getSecond(), timedValue.m74136getDurationUwyO8pc(), null);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchReaderTextAction$g */
    /* loaded from: classes8.dex */
    public static final class C9857g<T, R> implements Function {
        public C9857g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SearchResult apply(@NotNull SearchResult it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchReaderTextAction.this.resultList.addAll(it2.m39778c());
            SearchReaderTextAction.this.observer.invoke(it2.m39777b());
            return it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchReaderTextAction$h */
    /* loaded from: classes8.dex */
    public static final class C9858h<T, R> implements Function {
        public C9858h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends SearchResult> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchReaderTextAction.this.m39771m(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SearchReaderTextAction(@NotNull EditorBundle editorBundle, @NotNull NoteSearchArgs noteSearchArgs, @NotNull SyncNoteModel noteModel, @NotNull List<VirtualPage> virtualPageList, @NotNull Function1<? super Pair<? extends List<VirtualPage>, ? extends List<NoteSearchBean>>, Unit> observer) {
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
        Observable<List<NoteSearchBean>> flatMap = Observable.just(this.virtualPageList).observeOn(EditorBundleKt.readerScheduler(getEditorBundle())).flatMap(new C9851a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: l */
    public final Observable<List<NoteSearchBean>> m39770l(List<VirtualPage> virtualPageList) {
        List emptyList;
        if (virtualPageList.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            Observable<List<NoteSearchBean>> doOnNext = Observable.just(emptyList).doOnNext(new C9852b(virtualPageList));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : virtualPageList) {
            String contentPath = ((VirtualPage) obj).getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath();
            Object obj2 = linkedHashMap.get(contentPath);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(contentPath, obj2);
            }
            ((List) obj2).add(obj);
        }
        Observable concatMap = Observable.fromIterable(linkedHashMap.entrySet()).concatMap(new C9853c());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<List<NoteSearchBean>> map = RxjavaKt.takeLastOne(concatMap).map(new C9854d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: m */
    public final Observable<SearchResult> m39771m(List<VirtualPage> virtualPages) {
        Observable<SearchResult> observeOn = Observable.just(virtualPages).observeOn(EditorBundleKt.readerScheduler(getEditorBundle())).map(new C9856f(virtualPages)).map(new C9857g()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: n */
    public final Observable<?> m39772n(Map.Entry<String, ? extends List<VirtualPage>> entry) {
        List<VirtualPage> safelySubList = CollectionKt.safelySubList(entry.getValue(), 0, 3);
        final List safelySubList2 = CollectionKt.safelySubList(entry.getValue(), 3);
        Observable<R> map = m39771m(safelySubList).map(new C9855e(entry));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.flatMapIf(map, new Function1<Integer, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchReaderTextAction$searchPages$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Integer it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!safelySubList2.isEmpty());
            }
        }, new Function1<Integer, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchReaderTextAction$searchPages$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull Integer it2) {
                Observable<? extends Object> m39773o;
                Intrinsics.checkNotNullParameter(it2, "it");
                m39773o = SearchReaderTextAction.this.m39773o(it2.intValue(), safelySubList2);
                return m39773o;
            }
        });
    }

    /* renamed from: o */
    public final Observable<?> m39773o(int batch, List<VirtualPage> virtualPageList) {
        Observable concatMap = Observable.fromIterable(CollectionKt.split(virtualPageList, batch)).concatMap(new C9858h());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        return RxjavaKt.takeLastOne(concatMap);
    }

    /* renamed from: p */
    public final Map<VirtualPage, List<ReaderSelection>> m39774p(List<VirtualPage> virtualPages, ReaderBundle readerBundle) {
        List list;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (VirtualPage virtualPage : virtualPages) {
            Reader ensureReaderByPath$default = ReaderBundle.ensureReaderByPath$default(readerBundle, virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath(), null, 2, null);
            if (ensureReaderByPath$default != null) {
                BoxInfo contentInfo = virtualPage.getBox().getContentInfo();
                Matrix copy = MatrixKt.copy(contentInfo != null ? BoxInfo.INSTANCE.getRotatedMatrix(contentInfo) : null);
                ReaderPosition positionByPositionString$default = ReaderNavigator.DefaultImpls.positionByPositionString$default(ensureReaderByPath$default.getNavigator(), virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPageId(), false, 2, null);
                ensureReaderByPath$default.getSearchManager().searchInPage(positionByPositionString$default.getPageIndex(), ReaderSearch.INSTANCE.createReaderSearchOptions(positionByPositionString$default, this.noteSearchArgs.getKeyword()), true);
                list = CollectionsKt___CollectionsKt.toList(ensureReaderByPath$default.getSearchManager().searchResults());
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    Iterator<T> it3 = ((ReaderSelection) it2.next()).rectangles().iterator();
                    while (it3.hasNext()) {
                        copy.mapRect((RectF) it3.next());
                    }
                }
                linkedHashMap.put(virtualPage, list);
            }
        }
        return linkedHashMap;
    }

    /* renamed from: q */
    public final List<NoteSearchBean> m39775q(VirtualPage virtualPage, List<? extends ReaderSelection> selections) {
        List<NoteSearchBean> emptyList;
        if (CollectionKt.isNullOrEmpty(selections)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        String id = virtualPage.getBox().getId();
        NoteSearchBean.Companion companion = NoteSearchBean.INSTANCE;
        NoteSearchBean from = companion.from(this.noteModel, selections);
        from.setPageIndex(this.noteSearchArgs.getSearchContext().getPageIndex(id));
        from.setPageId(id);
        companion.updatePageInfo(from, virtualPage);
        return CollectionKt.asList(from);
    }
}
