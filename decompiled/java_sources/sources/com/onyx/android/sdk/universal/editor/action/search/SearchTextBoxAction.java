package com.onyx.android.sdk.universal.editor.action.search;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.SelectionRegion;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.ReferenceShape;
import com.onyx.android.sdk.note.common.utils.ShapeConvertUtils;
import com.onyx.android.sdk.note.extension.NoteDocumentKt;
import com.onyx.android.sdk.note.request.excerpt.LoadShapeRequest;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeConnectionBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.onyx.android.sdk.textbox.action.NativeTextRunAction;
import com.onyx.android.sdk.textbox.richtext.RichTextRun;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.NoteSearchArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001HB{\u0012\u0006\u0010E\u001a\u00020D\u0012\u0006\u00100\u001a\u00020-\u0012\u0006\u00104\u001a\u000201\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0002\u0012L\u0010<\u001aH\u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000208\u0012\u0004\u0012\u00020\u001c07j \u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000208`9¢\u0006\u0004\bF\u0010GJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0002J \u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\"\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0002H\u0002J\"\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00042\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0002H\u0002J\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00022\u0006\u0010\u0013\u001a\u00020\u000eH\u0002J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J$\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0013\u001a\u00020\u000e2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00140\u0002H\u0002J\u001e\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u00032\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00140\u0002H\u0002J6\u0010$\u001a\u00020\u001c2\u0006\u0010\u0013\u001a\u00020\u000e2\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00140\u001ej\b\u0012\u0004\u0012\u00020\u0014`\u001f2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!H\u0002J6\u0010%\u001a\u00020\u001c2\u0006\u0010\u0013\u001a\u00020\u000e2\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00140\u001ej\b\u0012\u0004\u0012\u00020\u0014`\u001f2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!H\u0002J\u0012\u0010'\u001a\u0004\u0018\u00010\u00142\u0006\u0010&\u001a\u00020\"H\u0002J\u0018\u0010,\u001a\u00020\u00142\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H\u0002R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106RZ\u0010<\u001aH\u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000208\u0012\u0004\u0012\u00020\u001c07j \u0012\u001c\u0012\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000208`98\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R2\u0010A\u001a\u001e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020>0=j\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020>`?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010@R\u001a\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00030B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u00106¨\u0006I"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Landroid/graphics/RectF;", "rectList", "mergeKeywordRect", "textBoundRect", "shapeBoundRect", "Landroid/graphics/Matrix;", "shapeMatrix", "getScaledTextRect", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPageList", "q", "virtualPages", "t", "virtualPage", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "r", "shape", "", "l", "shapes", "u", "searchBean", "", "s", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "shapeList", "", "", "excludedShapeIds", C4921e.f26528e, GoogleApiAvailabilityLight.f29016b, "targetShapeId", "m", "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;", "providerHolder", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "model", "p", "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;", "noteSearchArgs", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "i", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "j", "Ljava/util/List;", "Lkotlin/Function1;", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;", C4921e.f26537n, "Lkotlin/jvm/functions/Function1;", EventHandlerManager.OBSERVER, "Ljava/util/HashMap;", "Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "richTextMap", "", "resultList", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "a", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchTextBoxAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchTextBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,274:1\n766#2:275\n857#2,2:276\n766#2:278\n857#2,2:279\n766#2:281\n857#2,2:282\n766#2:284\n857#2,2:285\n766#2:287\n857#2,2:288\n1855#2:290\n1855#2:291\n1855#2,2:293\n1549#2:295\n1620#2,3:296\n1726#2,3:299\n1856#2:302\n1549#2:303\n1620#2,3:304\n1549#2:307\n1620#2,3:308\n1856#2:311\n1855#2,2:312\n1549#2:314\n1620#2,3:315\n1549#2:318\n1620#2,3:319\n1549#2:322\n1620#2,3:323\n1549#2:326\n1620#2,3:327\n1#3:292\n*S KotlinDebug\n*F\n+ 1 SearchTextBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction\n*L\n114#1:275\n114#1:276,2\n115#1:278\n115#1:279,2\n122#1:281\n122#1:282,2\n138#1:284\n138#1:285,2\n142#1:287\n142#1:288,2\n144#1:290\n156#1:291\n164#1:293,2\n169#1:295\n169#1:296,3\n174#1:299,3\n156#1:302\n184#1:303\n184#1:304,3\n185#1:307\n185#1:308,3\n144#1:311\n198#1:312,2\n222#1:314\n222#1:315,3\n227#1:318\n227#1:319,3\n238#1:322\n238#1:323,3\n241#1:326\n241#1:327,3\n*E\n"})
/* loaded from: classes8.dex */
public final class SearchTextBoxAction extends RxBaseAppAction<List<? extends NoteSearchBean>> {

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
    public HashMap<String, C9876a> richTextMap;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final List<NoteSearchBean> resultList;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextBoxAction$a */
    /* loaded from: classes8.dex */
    public static final class C9876a {

        /* renamed from: a */
        @NotNull
        public final String f50513a;

        /* renamed from: b */
        @NotNull
        public final RichTextRun f50514b;

        /* renamed from: c */
        @NotNull
        public final List<Integer> f50515c;

        public C9876a(@NotNull String sentence, @NotNull RichTextRun richTextRun, @NotNull List<Integer> keywordIndexList) {
            Intrinsics.checkNotNullParameter(sentence, "sentence");
            Intrinsics.checkNotNullParameter(richTextRun, "richTextRun");
            Intrinsics.checkNotNullParameter(keywordIndexList, "keywordIndexList");
            this.f50513a = sentence;
            this.f50514b = richTextRun;
            this.f50515c = keywordIndexList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: e */
        public static /* synthetic */ C9876a m39843e(C9876a c9876a, String str, RichTextRun richTextRun, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = c9876a.f50513a;
            }
            if ((i & 2) != 0) {
                richTextRun = c9876a.f50514b;
            }
            if ((i & 4) != 0) {
                list = c9876a.f50515c;
            }
            return c9876a.m39847d(str, richTextRun, list);
        }

        @NotNull
        /* renamed from: a */
        public final String m39844a() {
            return this.f50513a;
        }

        @NotNull
        /* renamed from: b */
        public final RichTextRun m39845b() {
            return this.f50514b;
        }

        @NotNull
        /* renamed from: c */
        public final List<Integer> m39846c() {
            return this.f50515c;
        }

        @NotNull
        /* renamed from: d */
        public final C9876a m39847d(@NotNull String sentence, @NotNull RichTextRun richTextRun, @NotNull List<Integer> keywordIndexList) {
            Intrinsics.checkNotNullParameter(sentence, "sentence");
            Intrinsics.checkNotNullParameter(richTextRun, "richTextRun");
            Intrinsics.checkNotNullParameter(keywordIndexList, "keywordIndexList");
            return new C9876a(sentence, richTextRun, keywordIndexList);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C9876a)) {
                return false;
            }
            C9876a c9876a = (C9876a) obj;
            return Intrinsics.areEqual(this.f50513a, c9876a.f50513a) && Intrinsics.areEqual(this.f50514b, c9876a.f50514b) && Intrinsics.areEqual(this.f50515c, c9876a.f50515c);
        }

        @NotNull
        /* renamed from: f */
        public final List<Integer> m39848f() {
            return this.f50515c;
        }

        @NotNull
        /* renamed from: g */
        public final RichTextRun m39849g() {
            return this.f50514b;
        }

        @NotNull
        /* renamed from: h */
        public final String m39850h() {
            return this.f50513a;
        }

        public int hashCode() {
            return (((this.f50513a.hashCode() * 31) + this.f50514b.hashCode()) * 31) + this.f50515c.hashCode();
        }

        @NotNull
        public String toString() {
            return "RichTextRunWrapper(sentence=" + this.f50513a + ", richTextRun=" + this.f50514b + ", keywordIndexList=" + this.f50515c + ')';
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextBoxAction$b */
    /* loaded from: classes8.dex */
    public static final class C9877b<T, R> implements Function {
        public C9877b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NoteSearchBean>> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchTextBoxAction.this.m39838q(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextBoxAction$c */
    /* loaded from: classes8.dex */
    public static final class C9878c<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ List<VirtualPage> f50518f;

        public C9878c(List<VirtualPage> list) {
            this.f50518f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<NoteSearchBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchTextBoxAction.this.observer.invoke(TuplesKt.m61535to(this.f50518f, it2));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextBoxAction$d */
    /* loaded from: classes8.dex */
    public static final class C9879d<T, R> implements Function {
        public C9879d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<NoteSearchBean>> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchTextBoxAction.this.m39841t(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextBoxAction$e */
    /* loaded from: classes8.dex */
    public static final class C9880e<T, R> implements Function {
        public C9880e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteSearchBean> apply(@NotNull List<NoteSearchBean> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SearchTextBoxAction.this.resultList;
        }
    }

    @SourceDebugExtension({"SMAP\nSearchTextBoxAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchTextBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$searchPages$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,274:1\n1360#2:275\n1446#2,5:276\n1#3:281\n*S KotlinDebug\n*F\n+ 1 SearchTextBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$searchPages$1\n*L\n95#1:275\n95#1:276,5\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextBoxAction$f */
    /* loaded from: classes8.dex */
    public static final class C9881f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ List<VirtualPage> f50521e;

        /* renamed from: f */
        public final /* synthetic */ SearchTextBoxAction f50522f;

        public C9881f(List<VirtualPage> list, SearchTextBoxAction searchTextBoxAction) {
            this.f50521e = list;
            this.f50522f = searchTextBoxAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<List<VirtualPage>, List<NoteSearchBean>> apply(@NotNull List<VirtualPage> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            List<VirtualPage> list = this.f50521e;
            SearchTextBoxAction searchTextBoxAction = this.f50522f;
            ArrayList arrayList = new ArrayList();
            for (VirtualPage virtualPage : list) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, searchTextBoxAction.m39842u(virtualPage, searchTextBoxAction.m39839r(virtualPage)));
            }
            if (!(!arrayList.isEmpty())) {
                arrayList = null;
            }
            return TuplesKt.m61535to(this.f50521e, CollectionKt.ensureList(arrayList));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.search.SearchTextBoxAction$g */
    /* loaded from: classes8.dex */
    public static final class C9882g<T, R> implements Function {
        public C9882g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<NoteSearchBean> apply(@NotNull Pair<? extends List<VirtualPage>, ? extends List<NoteSearchBean>> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            SearchTextBoxAction.this.resultList.addAll(it2.getSecond());
            SearchTextBoxAction.this.observer.invoke(it2);
            return it2.getSecond();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SearchTextBoxAction(@NotNull EditorBundle editorBundle, @NotNull NoteSearchArgs noteSearchArgs, @NotNull SyncNoteModel noteModel, @NotNull List<VirtualPage> virtualPageList, @NotNull Function1<? super Pair<? extends List<VirtualPage>, ? extends List<NoteSearchBean>>, Unit> observer) {
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
        this.richTextMap = new HashMap<>();
        this.resultList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<List<NoteSearchBean>> create() {
        Observable<List<NoteSearchBean>> flatMap = Observable.just(this.virtualPageList).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9877b());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    @NotNull
    public final RectF getScaledTextRect(@NotNull RectF textBoundRect, @NotNull RectF shapeBoundRect, @Nullable Matrix shapeMatrix) {
        Intrinsics.checkNotNullParameter(textBoundRect, "textBoundRect");
        Intrinsics.checkNotNullParameter(shapeBoundRect, "shapeBoundRect");
        Matrix matrix = new Matrix();
        matrix.postScale(MatrixKt.getScaleX(shapeMatrix), MatrixKt.getScaleY(shapeMatrix), shapeBoundRect.left, shapeBoundRect.top);
        return RectFKt.concatTransform(textBoundRect, matrix);
    }

    /* renamed from: l */
    public final boolean m39833l(Shape shape) {
        boolean contains;
        String text = ShapeTypes.INSTANCE.getTargetShape(shape).getText();
        if (text == null) {
            text = "";
        }
        contains = StringsKt__StringsKt.contains((CharSequence) text, (CharSequence) this.noteSearchArgs.getKeyword(), true);
        return contains;
    }

    /* renamed from: m */
    public final Shape m39834m(String targetShapeId) {
        LoadShapeRequest loadShapeRequest = new LoadShapeRequest(EditorBundleKt.noteBundle(getEditorBundle()), targetShapeId);
        loadShapeRequest.execute2();
        return loadShapeRequest.getShape();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.graphics.RectF, T] */
    @NotNull
    public final List<RectF> mergeKeywordRect(@NotNull List<? extends RectF> rectList) {
        ?? first;
        Intrinsics.checkNotNullParameter(rectList, "rectList");
        if (rectList.size() <= 1) {
            return rectList;
        }
        final ArrayList arrayList = new ArrayList();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        first = CollectionsKt___CollectionsKt.first((List<? extends ??>) rectList);
        objectRef.element = first;
        Iterator it2 = rectList.iterator();
        while (it2.hasNext()) {
            ?? r2 = (RectF) it2.next();
            float f = ((RectF) r2).top;
            T t = objectRef.element;
            if (f == ((RectF) t).top) {
                ((RectF) t).union(r2);
            } else {
                arrayList.add(t);
                objectRef.element = r2;
            }
        }
        CollectionKt.addIf(arrayList, objectRef.element, new Function0<Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchTextBoxAction$mergeKeywordRect$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(!arrayList.contains(objectRef.element));
            }
        });
        return arrayList;
    }

    /* renamed from: n */
    public final void m39835n(VirtualPage virtualPage, LinkedHashSet<Shape> shapeList, Collection<String> excludedShapeIds) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List filterNotNull;
        boolean contains;
        ShapeReferenceBean shapeReferenceBean;
        NoteProviderHolder providerHolder = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getProviderHolder();
        Set<String> shapeIdsForSearchTextBox = this.noteSearchArgs.getSearchContext().getShapeIdsForSearchTextBox();
        CBQueryArgs loadShapeListQuery$default = ShapeQueryArgsExtKt.loadShapeListQuery$default(this.noteModel.getUniqueId(), 0, 0, (Long) null, 14, (Object) null);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = loadShapeListQuery$default.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PAGE_ID, virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId())).andWith(couchUtils.equalExpression("shapeType", 2000));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(shapeList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = shapeList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Shape) it2.next()).getShapeUniqueId());
        }
        List<ShapeModel> loadShapeList = providerHolder.getNoteShapeProvider().loadShapeList(andWith.andWith(couchUtils.notInExpression(CouchFieldKey.KEY_UNIQUE_ID, arrayList)).andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_CONNECTION_SHAPE_ID, shapeIdsForSearchTextBox)));
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadShapeList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (ShapeModel shapeModel : loadShapeList) {
            ShapeConnectionBean shapeConnectionBean = shapeModel.getShapeConnectionBean();
            Shape shape = null;
            String shapeId = (shapeConnectionBean == null || (shapeReferenceBean = shapeConnectionBean.getShapeReferenceBean()) == null) ? null : shapeReferenceBean.getShapeId();
            contains = CollectionsKt___CollectionsKt.contains(excludedShapeIds, shapeId);
            if (!contains) {
                shape = m39837p(providerHolder, shapeModel);
                if ((shape instanceof ReferenceShape) && StringKt.isNotBlank(shapeId)) {
                    ((ReferenceShape) shape).setTargetShape(m39834m(shapeId));
                }
            }
            arrayList2.add(shape);
        }
        filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(arrayList2);
        CollectionKt.safeAddAll(shapeList, filterNotNull);
    }

    /* renamed from: o */
    public final void m39836o(VirtualPage virtualPage, LinkedHashSet<Shape> shapeList, Collection<String> excludedShapeIds) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        NoteProviderHolder providerHolder = EditorBundleKt.noteBundle(getEditorBundle()).getNoteDoc().getProviderHolder();
        CBQueryArgs loadShapeListQuery$default = ShapeQueryArgsExtKt.loadShapeListQuery$default(this.noteModel.getUniqueId(), 0, 0, (Long) null, 14, (Object) null);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = loadShapeListQuery$default.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PAGE_ID, virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId())).andWith(couchUtils.equalExpression("shapeType", 16));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(shapeList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = shapeList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((Shape) it2.next()).getShapeUniqueId());
        }
        CBQueryArgs andWith2 = andWith.andWith(couchUtils.notInExpression(CouchFieldKey.KEY_UNIQUE_ID, arrayList));
        CouchUtils couchUtils2 = CouchUtils.INSTANCE;
        CBQueryArgs andWith3 = andWith2.andWith(couchUtils2.notInExpression(CouchFieldKey.KEY_UNIQUE_ID, excludedShapeIds)).andWith(couchUtils2.fuzzyMatchExpression("text", this.noteSearchArgs.getKeyword()));
        Benchmark benchmark = new Benchmark();
        List<ShapeModel> loadShapeList = providerHolder.getNoteShapeProvider().loadShapeList(andWith3);
        List<ShapeModel> list = loadShapeList;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list.iterator();
        while (it3.hasNext()) {
            arrayList2.add(m39837p(providerHolder, (ShapeModel) it3.next()));
        }
        CollectionKt.safeAddAll(shapeList, arrayList2);
        benchmark.reportDebug("search " + this.noteSearchArgs.getKeyword() + " ShapeList from db:" + CollectionKt.getSize(loadShapeList));
    }

    /* renamed from: p */
    public final Shape m39837p(NoteProviderHolder providerHolder, ShapeModel model) {
        Shape shapeFromModel = ShapeConvertUtils.INSTANCE.shapeFromModel(providerHolder, model);
        RectF copy = RectFKt.copy(shapeFromModel.getBoundingRect());
        MatrixKt.invertMatrix(shapeFromModel.getShapeMatrix()).mapRect(copy);
        shapeFromModel.setOriginRect(copy);
        return shapeFromModel;
    }

    /* renamed from: q */
    public final Observable<List<NoteSearchBean>> m39838q(List<VirtualPage> virtualPageList) {
        List emptyList;
        if (virtualPageList.isEmpty()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            Observable<List<NoteSearchBean>> doOnNext = Observable.just(emptyList).doOnNext(new C9878c(virtualPageList));
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return doOnNext;
        }
        Observable concatMap = Observable.fromIterable(CollectionKt.split(virtualPageList, 3)).concatMap(new C9879d());
        Intrinsics.checkNotNullExpressionValue(concatMap, "concatMap(...)");
        Observable<List<NoteSearchBean>> map = RxjavaKt.takeLastOne(concatMap).map(new C9880e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: r */
    public final List<Shape> m39839r(VirtualPage virtualPage) {
        List emptyList;
        List list;
        Map<String, Shape> removedShapeMap;
        NotePage notePage = getEditorBundle().getWorkBundle().getVirtualPolicy().getNotePage(virtualPage);
        LinkedHashSet<Shape> linkedHashSet = new LinkedHashSet<>();
        if (notePage != null) {
            NoteDocumentKt.ensureInitReferenceShape$default(getEditorBundle().getWorkBundle().getNoteBundle().getNoteDoc(), notePage.getShapeList(), null, 2, null);
            List<Shape> shapeList = notePage.getShapeList();
            ArrayList arrayList = new ArrayList();
            for (Object obj : shapeList) {
                ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                if (shapeTypes.isTextShape(shapeTypes.getTargetShape((Shape) obj))) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                if (m39833l((Shape) obj2)) {
                    arrayList2.add(obj2);
                }
            }
            CollectionKt.safeAddAll(linkedHashSet, arrayList2);
        }
        if (notePage == null || (removedShapeMap = notePage.getRemovedShapeMap()) == null || (list = removedShapeMap.keySet()) == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            list = emptyList;
        }
        m39836o(virtualPage, linkedHashSet, list);
        m39835n(virtualPage, linkedHashSet, list);
        PageInfo pageInfo = getEditorBundle().getWorkBundle().getVirtualPolicy().ensureGlobalNotePage().getPageInfo();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : linkedHashSet) {
            Shape shape = (Shape) obj3;
            if (ShapeOptions.INSTANCE.isVisible(shape) && pageInfo.isLayerVisible(shape.getLayerId()) && !shape.getBoundingRect().isEmpty()) {
                arrayList3.add(obj3);
            }
        }
        return arrayList3;
    }

    /* renamed from: s */
    public final void m39840s(NoteSearchBean searchBean, List<? extends Shape> shapes) {
        RichTextRun richTextRun;
        String standardSentence;
        List<Integer> allIndexesOf;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Object obj;
        int collectionSizeOrDefault3;
        boolean z;
        RichTextRun.TextRunChar textRunChar;
        List<RichTextRun.TextRunChar> items;
        Object orNull;
        ArrayList<Shape> arrayList = new ArrayList();
        for (Object obj2 : shapes) {
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            if (shapeTypes.isTextShape(shapeTypes.getTargetShape((Shape) obj2))) {
                arrayList.add(obj2);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Shape shape : arrayList) {
            Shape targetShape = ShapeTypes.INSTANCE.getTargetShape(shape);
            RectF boundingRect = shape.getBoundingRect();
            C9876a c9876a = this.richTextMap.get(targetShape.getShapeUniqueId());
            if (c9876a == null || (richTextRun = c9876a.m39849g()) == null) {
                richTextRun = new NativeTextRunAction(targetShape).renderContent().getRichTextRun();
            }
            if (c9876a == null || (standardSentence = c9876a.m39850h()) == null) {
                standardSentence = richTextRun != null ? richTextRun.toStandardSentence() : null;
            }
            if (c9876a == null || (allIndexesOf = c9876a.m39848f()) == null) {
                allIndexesOf = standardSentence != null ? StringKt.allIndexesOf(standardSentence, this.noteSearchArgs.getKeyword(), true) : null;
            }
            if (richTextRun != null) {
                if (standardSentence == null) {
                    standardSentence = "";
                }
                this.richTextMap.put(targetShape.getShapeUniqueId(), new C9876a(standardSentence, richTextRun, CollectionKt.ensureList(allIndexesOf)));
            }
            ArrayList arrayList3 = new ArrayList();
            int i = 10;
            if (allIndexesOf != null) {
                Iterator<T> it2 = allIndexesOf.iterator();
                while (it2.hasNext()) {
                    int intValue = ((Number) it2.next()).intValue();
                    ArrayList<RichTextRun.TextRunChar> arrayList4 = new ArrayList();
                    int length = this.noteSearchArgs.getKeyword().length();
                    for (int i2 = 0; i2 < length; i2++) {
                        if (richTextRun == null || (items = richTextRun.getItems()) == null) {
                            textRunChar = null;
                        } else {
                            orNull = CollectionsKt___CollectionsKt.getOrNull(items, i2 + intValue);
                            textRunChar = (RichTextRun.TextRunChar) orNull;
                        }
                        CollectionKt.safeAdd(arrayList4, textRunChar);
                    }
                    Iterator it3 = arrayList4.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            obj = it3.next();
                            if (((RichTextRun.TextRunChar) obj).getWidth() > 0.0f) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    RichTextRun.TextRunChar textRunChar2 = (RichTextRun.TextRunChar) obj;
                    float floatValue = ((Number) AnyKt.getOrElse(textRunChar2 != null ? (Float) AnyKt.transform(textRunChar2, new Function1<RichTextRun.TextRunChar, Float>() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchTextBoxAction$searchPageTextBoxShapes$1$2$width$2
                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final Float invoke(@NotNull RichTextRun.TextRunChar it4) {
                            Intrinsics.checkNotNullParameter(it4, "it");
                            return Float.valueOf(it4.getWidth());
                        }
                    }) : null, new Function0<Float>() { // from class: com.onyx.android.sdk.universal.editor.action.search.SearchTextBoxAction$searchPageTextBoxShapes$1$2$width$3
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        @NotNull
                        public final Float invoke() {
                            return Float.valueOf(0.0f);
                        }
                    })).floatValue();
                    for (RichTextRun.TextRunChar textRunChar3 : arrayList4) {
                        if (textRunChar3.getWidth() < 0.0f) {
                            textRunChar3.setWidth(floatValue);
                        }
                    }
                    collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList4, i);
                    ArrayList arrayList5 = new ArrayList(collectionSizeOrDefault3);
                    for (RichTextRun.TextRunChar textRunChar4 : arrayList4) {
                        RectF rectF = new RectF(textRunChar4.getX(), textRunChar4.getY(), textRunChar4.getX() + textRunChar4.getWidth(), textRunChar4.getY() + textRunChar4.getHeight());
                        rectF.offset(boundingRect.left, boundingRect.top);
                        arrayList5.add(rectF);
                    }
                    if (!arrayList5.isEmpty()) {
                        Iterator it4 = arrayList5.iterator();
                        while (it4.hasNext()) {
                            if (!(!RectF.intersects((RectF) it4.next(), searchBean.getPageDisplayRect()))) {
                                z = false;
                                break;
                            }
                        }
                    }
                    z = true;
                    if (!z) {
                        CollectionKt.safeAddAll(arrayList3, mergeKeywordRect(arrayList5));
                    }
                    i = 10;
                }
            }
            ArrayList arrayList6 = arrayList3.isEmpty() ^ true ? arrayList3 : null;
            if (arrayList6 != null) {
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList6, 10);
                ArrayList arrayList7 = new ArrayList(collectionSizeOrDefault);
                Iterator it5 = arrayList6.iterator();
                while (it5.hasNext()) {
                    arrayList7.add(getScaledTextRect((RectF) it5.next(), boundingRect, targetShape.getShapeMatrix()));
                }
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList7, 10);
                ArrayList arrayList8 = new ArrayList(collectionSizeOrDefault2);
                Iterator it6 = arrayList7.iterator();
                while (it6.hasNext()) {
                    arrayList8.add(new SelectionRegion((RectF) it6.next(), null, TextContentType.TEXT_BOX.name(), 2, null));
                }
                arrayList2.addAll(arrayList8);
            }
        }
        searchBean.setSelectionRegions(arrayList2);
    }

    /* renamed from: t */
    public final Observable<List<NoteSearchBean>> m39841t(List<VirtualPage> virtualPages) {
        Observable<List<NoteSearchBean>> observeOn = Observable.just(virtualPages).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C9881f(virtualPages, this)).map(new C9882g()).observeOn(getMainUIScheduler());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: u */
    public final List<NoteSearchBean> m39842u(VirtualPage virtualPage, List<? extends Shape> shapes) {
        NoteSearchBean.Companion companion = NoteSearchBean.INSTANCE;
        NoteSearchBean from = companion.from(this.noteModel, virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId());
        from.setPageIndex(this.noteSearchArgs.getSearchContext().getPageIndex(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getPageId()));
        companion.updatePageInfo(from, virtualPage);
        m39840s(from, shapes);
        List asList = CollectionKt.asList(from);
        ArrayList arrayList = new ArrayList();
        for (Object obj : asList) {
            if (CollectionKt.isNonBlank(((NoteSearchBean) obj).getSelectionRegions())) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
