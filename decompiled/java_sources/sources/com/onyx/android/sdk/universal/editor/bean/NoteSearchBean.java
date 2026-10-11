package com.onyx.android.sdk.universal.editor.bean;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.alibaba.fastjson2.annotation.JSONField;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ColorTheme;
import com.onyx.android.sdk.base.data.SearchHighlightRegion;
import com.onyx.android.sdk.base.data.SearchHighlightRegionData;
import com.onyx.android.sdk.base.data.SelectionRegion;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 a2\u00020\u0001:\u0001aB\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0014\u0012\u0006\u0010 \u001a\u00020\u001b¢\u0006\u0004\b_\u0010`J\u0006\u0010\u0002\u001a\u00020\u0000J\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\b\u001a\u00020\u0007J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\u0005J\u0006\u0010\u000f\u001a\u00020\u000eJ\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u0010J\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\u0010J\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\t0\u0010J\u0006\u0010\u0015\u001a\u00020\u0014R\u0017\u0010\u001a\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010 \u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR$\u0010(\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u0010/\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u00104\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u0017\u001a\u0004\b1\u0010\u0019\"\u0004\b2\u00103R\"\u0010;\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\"\u0010?\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u00106\u001a\u0004\b=\u00108\"\u0004\b>\u0010:R\"\u0010G\u001a\u00020@8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\"\u0010K\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u00106\u001a\u0004\bI\u00108\"\u0004\bJ\u0010:R\"\u0010N\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR*\u0010Y\u001a\n\u0012\u0004\u0012\u00020R\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR(\u0010^\u001a\b\u0012\u0004\u0012\u00020Z0\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010T\u001a\u0004\b\\\u0010V\"\u0004\b]\u0010X¨\u0006b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "", "copy", "", "getCacheKey", "", "hasSelections", "", "getPageContentScale", "Landroid/graphics/RectF;", "rectF", "applyMargin", "", "contentMapToPageRect", "Landroid/graphics/Matrix;", "getPageMarginMatrix", "", "contentMapToPageRectList", "shapeMapToPageRectList", "getPageRectList", "", "getRegionSize", "a", "I", "getType", "()I", "type", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "b", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getNoteModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "noteModel", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "c", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "d", Constants.STRING_SIG, "getPageId", "()Ljava/lang/String;", "setPageId", "(Ljava/lang/String;)V", CouchFieldKey.KEY_TOC_PAGE_ID, "e", "getPageIndex", "setPageIndex", "(I)V", "pageIndex", C6997f.f39671c, "Landroid/graphics/RectF;", "getPageDisplayRect", "()Landroid/graphics/RectF;", "setPageDisplayRect", "(Landroid/graphics/RectF;)V", "pageDisplayRect", C6998g.f39679a, "getPageOriginRect", "setPageOriginRect", "pageOriginRect", "", C6999h.f39688c, "J", "getPageUpdatedAt", "()J", "setPageUpdatedAt", "(J)V", "pageUpdatedAt", "i", "getPageContentOriginRectF", "setPageContentOriginRectF", "pageContentOriginRectF", "j", Constants.HASIDCALL_INDEX_SIG, "isPageDarkTheme", Constants.BOOLEAN_VALUE_SIG, "setPageDarkTheme", "(Z)V", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", C4921e.f26537n, "Ljava/util/List;", "getSelections", "()Ljava/util/List;", "setSelections", "(Ljava/util/List;)V", "selections", "Lcom/onyx/android/sdk/base/data/SelectionRegion;", "l", "getSelectionRegions", "setSelectionRegions", "selectionRegions", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteSearchBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteSearchBean.kt\ncom/onyx/android/sdk/universal/editor/bean/NoteSearchBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,256:1\n1549#2:257\n1620#2,3:258\n1855#2,2:263\n1549#2:265\n1620#2,3:266\n364#3:261\n1#4:262\n*S KotlinDebug\n*F\n+ 1 NoteSearchBean.kt\ncom/onyx/android/sdk/universal/editor/bean/NoteSearchBean\n*L\n74#1:257\n74#1:258,3\n103#1:263,2\n112#1:265\n112#1:266,3\n91#1:261\n91#1:262\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteSearchBean {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int TYPE_HANDWRITING = 1;
    public static final int TYPE_TEXT = 2;
    public static final int TYPE_TITLE = 0;

    /* renamed from: a, reason: from kotlin metadata */
    public final int type;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final SyncNoteModel noteModel;

    /* renamed from: c, reason: from kotlin metadata */
    @JSONField(deserialize = false, serialize = false)
    @Nullable
    public transient EditorBundle editorBundle;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String pageId;

    /* renamed from: e, reason: from kotlin metadata */
    public int pageIndex;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public RectF pageDisplayRect;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public RectF pageOriginRect;

    /* renamed from: h, reason: from kotlin metadata */
    public long pageUpdatedAt;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public RectF pageContentOriginRectF;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isPageDarkTheme;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public List<? extends ReaderSelection> selections;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public List<SelectionRegion> selectionRegions;

    @Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u001c\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u000eJ\u0010\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u000e*\u00020\bJ\u0010\u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u000eJ\f\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u00020\bJ\n\u0010\u0018\u001a\u00020\f*\u00020\bJ\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u000e*\b\u0012\u0004\u0012\u00020\b0\u000eJ\u0014\u0010\u001a\u001a\u00020\f*\u00020\b2\b\b\u0002\u0010\u001b\u001a\u00020\fJ\n\u0010\u001c\u001a\u00020\u001d*\u00020\bJ\u0016\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\f0\u001f*\b\u0012\u0004\u0012\u00020\b0\u000eJ\u0012\u0010 \u001a\u00020\u0013*\u00020\b2\u0006\u0010!\u001a\u00020\u0013J\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00130\u000e*\u00020\b2\b\u0010\"\u001a\u0004\u0018\u00010\u000fJ\u0012\u0010#\u001a\u00020$*\u00020\b2\u0006\u0010%\u001a\u00020&R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;", "", "()V", "TYPE_HANDWRITING", "", "TYPE_TEXT", "TYPE_TITLE", "from", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "noteModel", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", CouchFieldKey.KEY_TOC_PAGE_ID, "", "list", "", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "", "noteList", "allSortedHighlightRegions", "Lcom/onyx/android/sdk/base/data/SelectionRegion;", "createSearchHighlightRegionData", "Lcom/onyx/android/sdk/base/data/SearchHighlightRegionData;", "findFirstHighlightRect", "Landroid/graphics/RectF;", "getPageThumbPath", "mergeByPage", "toObjectCacheKey", "extraCacheKey", "toPageDataModel", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "toPageIdSet", "", "toPageRegion", "selectionRegion", "readerSelection", "updatePageInfo", "", "virtualPage", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nNoteSearchBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteSearchBean.kt\ncom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,256:1\n1549#2:257\n1620#2,3:258\n1855#2,2:261\n1549#2:263\n1620#2,3:264\n1855#2,2:268\n1855#2,2:270\n766#2:272\n857#2,2:273\n1045#2:275\n1855#2:276\n1549#2:277\n1620#2,3:278\n1856#2:281\n1549#2:282\n1620#2,3:283\n1549#2:286\n1620#2,3:287\n1549#2:290\n1620#2,3:291\n1477#2:294\n1502#2,3:295\n1505#2,3:305\n1549#2:311\n1620#2,3:312\n1549#2:315\n1620#2,3:316\n1#3:267\n372#4,7:298\n125#5:308\n152#5,2:309\n154#5:319\n*S KotlinDebug\n*F\n+ 1 NoteSearchBean.kt\ncom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion\n*L\n135#1:257\n135#1:258,3\n153#1:261,2\n154#1:263\n154#1:264,3\n169#1:268,2\n172#1:270,2\n181#1:272\n181#1:273,2\n186#1:275\n186#1:276\n188#1:277\n188#1:278,3\n186#1:281\n206#1:282\n206#1:283,3\n209#1:286\n209#1:287,3\n241#1:290\n241#1:291,3\n245#1:294\n245#1:295,3\n245#1:305,3\n250#1:311\n250#1:312,3\n251#1:315\n251#1:316,3\n245#1:298,7\n247#1:308\n247#1:309,2\n247#1:319\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: b */
        public static final int m40606b(Function2 tmp0, Object obj, Object obj2) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return ((Number) tmp0.invoke(obj, obj2)).intValue();
        }

        public static /* synthetic */ String toObjectCacheKey$default(Companion companion, NoteSearchBean noteSearchBean, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = "";
            }
            return companion.toObjectCacheKey(noteSearchBean, str);
        }

        @NotNull
        public final List<SelectionRegion> allSortedHighlightRegions(@NotNull NoteSearchBean noteSearchBean) {
            Intrinsics.checkNotNullParameter(noteSearchBean, "<this>");
            ArrayList arrayList = new ArrayList();
            List<ReaderSelection> selections = noteSearchBean.getSelections();
            if (selections != null) {
                Iterator<T> it2 = selections.iterator();
                while (it2.hasNext()) {
                    arrayList.addAll(NoteSearchBean.INSTANCE.toPageRegion(noteSearchBean, (ReaderSelection) it2.next()));
                }
            }
            Iterator<T> it3 = noteSearchBean.getSelectionRegions().iterator();
            while (it3.hasNext()) {
                arrayList.add(NoteSearchBean.INSTANCE.toPageRegion(noteSearchBean, (SelectionRegion) it3.next()));
            }
            final NoteSearchBean$Companion$allSortedHighlightRegions$3 noteSearchBean$Companion$allSortedHighlightRegions$3 = new Function2<SelectionRegion, SelectionRegion, Integer>() { // from class: com.onyx.android.sdk.universal.editor.bean.NoteSearchBean$Companion$allSortedHighlightRegions$3
                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final Integer invoke(SelectionRegion selectionRegion, SelectionRegion selectionRegion2) {
                    if (!(selectionRegion.getRect().top == selectionRegion2.getRect().top)) {
                        return Integer.valueOf(MathUtils.INSTANCE.signFactor(Float.valueOf(selectionRegion.getRect().top - selectionRegion2.getRect().top)));
                    }
                    return Integer.valueOf(MathUtils.INSTANCE.signFactor(Float.valueOf(selectionRegion.getRect().left - selectionRegion2.getRect().left)));
                }
            };
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: com.sunia.HTREnginev2.v1k
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m40606b;
                    m40606b = NoteSearchBean.Companion.m40606b(Function2.this, obj, obj2);
                    return m40606b;
                }
            });
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (!((SelectionRegion) obj).getRect().isEmpty()) {
                    arrayList2.add(obj);
                }
            }
            return arrayList2;
        }

        @NotNull
        public final SearchHighlightRegionData createSearchHighlightRegionData(@NotNull List<NoteSearchBean> list) {
            List<NoteSearchBean> sortedWith;
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(list, "<this>");
            SearchHighlightRegionData searchHighlightRegionData = new SearchHighlightRegionData();
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.bean.NoteSearchBean$Companion$createSearchHighlightRegionData$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((NoteSearchBean) t).getPageIndex()), Integer.valueOf(((NoteSearchBean) t2).getPageIndex()));
                    return compareValues;
                }
            });
            for (NoteSearchBean noteSearchBean : sortedWith) {
                List<SelectionRegion> allSortedHighlightRegions = NoteSearchBean.INSTANCE.allSortedHighlightRegions(noteSearchBean);
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(allSortedHighlightRegions, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (SelectionRegion selectionRegion : allSortedHighlightRegions) {
                    SearchHighlightRegion searchHighlightRegion = new SearchHighlightRegion();
                    String pageId = noteSearchBean.getPageId();
                    if (pageId == null) {
                        pageId = "";
                    }
                    searchHighlightRegion.setPageId(pageId);
                    searchHighlightRegion.setPageIndex(noteSearchBean.getPageIndex());
                    searchHighlightRegion.setRect(selectionRegion.getRect());
                    searchHighlightRegion.setMatrix(MatrixKt.nonNull(selectionRegion.getMatrix()));
                    arrayList.add(searchHighlightRegion);
                }
                searchHighlightRegionData.getRegions().addAll(arrayList);
            }
            return searchHighlightRegionData;
        }

        @Nullable
        public final RectF findFirstHighlightRect(@NotNull NoteSearchBean noteSearchBean) {
            ReaderSelection readerSelection;
            Object firstOrNull;
            Object firstOrNull2;
            Object firstOrNull3;
            Intrinsics.checkNotNullParameter(noteSearchBean, "<this>");
            List<ReaderSelection> selections = noteSearchBean.getSelections();
            if (selections != null) {
                firstOrNull3 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) selections);
                readerSelection = (ReaderSelection) firstOrNull3;
            } else {
                readerSelection = null;
            }
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) toPageRegion(noteSearchBean, readerSelection));
            SelectionRegion selectionRegion = (SelectionRegion) firstOrNull;
            if (selectionRegion != null) {
                return selectionRegion.getRect();
            }
            firstOrNull2 = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) noteSearchBean.getSelectionRegions());
            SelectionRegion selectionRegion2 = (SelectionRegion) firstOrNull2;
            if (selectionRegion2 == null) {
                return null;
            }
            return toPageRegion(noteSearchBean, selectionRegion2).getRect();
        }

        @NotNull
        public final List<NoteSearchBean> from(@NotNull List<? extends SyncNoteModel> noteList) {
            int collectionSizeOrDefault;
            List<NoteSearchBean> mutableList;
            Intrinsics.checkNotNullParameter(noteList, "noteList");
            List<? extends SyncNoteModel> list = noteList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(new NoteSearchBean(0, (SyncNoteModel) it2.next()));
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            return mutableList;
        }

        @NotNull
        public final String getPageThumbPath(@NotNull NoteSearchBean noteSearchBean) {
            Intrinsics.checkNotNullParameter(noteSearchBean, "<this>");
            ThumbnailPaths thumbnailPaths = ThumbnailPaths.INSTANCE;
            String uniqueId = noteSearchBean.getNoteModel().getUniqueId();
            String pageId = noteSearchBean.getPageId();
            if (pageId == null) {
                pageId = "";
            }
            return thumbnailPaths.appPageThumbnailPath(uniqueId, pageId).toAbsolutePath().toString();
        }

        @NotNull
        public final List<NoteSearchBean> mergeByPage(@NotNull List<NoteSearchBean> list) {
            List mutableList;
            Object first;
            int collectionSizeOrDefault;
            List filterNotNull;
            List<? extends ReaderSelection> flatten;
            int collectionSizeOrDefault2;
            List<SelectionRegion> flatten2;
            Intrinsics.checkNotNullParameter(list, "<this>");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list) {
                NoteSearchBean noteSearchBean = (NoteSearchBean) obj;
                String[] strArr = new String[4];
                strArr[0] = noteSearchBean.getNoteModel().getUniqueId();
                String pageId = noteSearchBean.getPageId();
                if (pageId == null) {
                    pageId = "";
                }
                strArr[1] = pageId;
                strArr[2] = "-";
                strArr[3] = String.valueOf(noteSearchBean.getType());
                String concat = StringKt.concat(strArr);
                Object obj2 = linkedHashMap.get(concat);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap.put(concat, obj2);
                }
                ((List) obj2).add(obj);
            }
            ArrayList arrayList = new ArrayList(linkedHashMap.size());
            Iterator it2 = linkedHashMap.entrySet().iterator();
            while (it2.hasNext()) {
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) ((Map.Entry) it2.next()).getValue());
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) mutableList);
                NoteSearchBean noteSearchBean2 = (NoteSearchBean) first;
                List list2 = mutableList;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                Iterator it3 = list2.iterator();
                while (it3.hasNext()) {
                    arrayList2.add(((NoteSearchBean) it3.next()).getSelections());
                }
                filterNotNull = CollectionsKt___CollectionsKt.filterNotNull(arrayList2);
                flatten = CollectionsKt__IterablesKt.flatten(filterNotNull);
                noteSearchBean2.setSelections(flatten);
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
                Iterator it4 = list2.iterator();
                while (it4.hasNext()) {
                    arrayList3.add(((NoteSearchBean) it4.next()).getSelectionRegions());
                }
                flatten2 = CollectionsKt__IterablesKt.flatten(arrayList3);
                noteSearchBean2.setSelectionRegions(flatten2);
                arrayList.add(noteSearchBean2);
            }
            return arrayList;
        }

        @NotNull
        public final String toObjectCacheKey(@NotNull NoteSearchBean noteSearchBean, @NotNull String extraCacheKey) {
            int collectionSizeOrDefault;
            int collectionSizeOrDefault2;
            Intrinsics.checkNotNullParameter(noteSearchBean, "<this>");
            Intrinsics.checkNotNullParameter(extraCacheKey, "extraCacheKey");
            String uniqueId = noteSearchBean.getNoteModel().getUniqueId();
            String pageId = noteSearchBean.getPageId();
            if (pageId != null) {
                if (pageId.length() == 0) {
                    pageId = String.valueOf(noteSearchBean.getPageIndex());
                }
            } else {
                pageId = null;
            }
            String str = noteSearchBean.getPageContentOriginRectF().toShortString() + noteSearchBean.getPageDisplayRect().toShortString();
            String valueOf = String.valueOf(noteSearchBean.getPageUpdatedAt());
            List ensureList = CollectionKt.ensureList(noteSearchBean.getSelections());
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(ensureList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator it2 = ensureList.iterator();
            while (it2.hasNext()) {
                arrayList.add(((ReaderSelection) it2.next()).rectangles().toString());
            }
            List<SelectionRegion> selectionRegions = noteSearchBean.getSelectionRegions();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(selectionRegions, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            Iterator<T> it3 = selectionRegions.iterator();
            while (it3.hasNext()) {
                arrayList2.add(((SelectionRegion) it3.next()).toString());
            }
            return uniqueId + pageId + str + arrayList + arrayList2 + valueOf + extraCacheKey;
        }

        @NotNull
        public final PageDataModel toPageDataModel(@NotNull NoteSearchBean noteSearchBean) {
            Intrinsics.checkNotNullParameter(noteSearchBean, "<this>");
            EditorBundle editorBundle = noteSearchBean.getEditorBundle();
            int pageIndex = noteSearchBean.getPageIndex();
            String pageId = noteSearchBean.getPageId();
            if (pageId == null) {
                pageId = "";
            }
            PageDataModel pageDataModel = new PageDataModel(editorBundle, pageIndex, pageId, noteSearchBean.getPageDisplayRect(), noteSearchBean);
            pageDataModel.setUpdatedAt(noteSearchBean.getPageUpdatedAt());
            pageDataModel.setExtraCacheKey(String.valueOf(noteSearchBean.getPageUpdatedAt()));
            return pageDataModel;
        }

        @NotNull
        public final Set<String> toPageIdSet(@NotNull List<NoteSearchBean> list) {
            int collectionSizeOrDefault;
            Set<String> set;
            Intrinsics.checkNotNullParameter(list, "<this>");
            List<NoteSearchBean> list2 = list;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                String pageId = ((NoteSearchBean) it2.next()).getPageId();
                if (pageId == null) {
                    pageId = "";
                }
                arrayList.add(pageId);
            }
            set = CollectionsKt___CollectionsKt.toSet(arrayList);
            return set;
        }

        @NotNull
        public final List<SelectionRegion> toPageRegion(@NotNull NoteSearchBean noteSearchBean, @Nullable ReaderSelection readerSelection) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(noteSearchBean, "<this>");
            List<RectF> copyRectFList = RectFKt.copyRectFList(readerSelection != null ? readerSelection.rectangles() : null);
            Iterator<T> it2 = copyRectFList.iterator();
            while (it2.hasNext()) {
                NoteSearchBean.contentMapToPageRect$default(noteSearchBean, (RectF) it2.next(), false, 2, null);
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(copyRectFList, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it3 = copyRectFList.iterator();
            while (it3.hasNext()) {
                arrayList.add(new SelectionRegion((RectF) it3.next(), null, null, 6, null));
            }
            return arrayList;
        }

        public final void updatePageInfo(@NotNull NoteSearchBean noteSearchBean, @NotNull VirtualPage virtualPage) {
            Intrinsics.checkNotNullParameter(noteSearchBean, "<this>");
            Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
            noteSearchBean.setPageDisplayRect(virtualPage.getBox().getOriginRectFWithMargin());
            noteSearchBean.setPageOriginRect(virtualPage.getBox().getOriginRectF());
            noteSearchBean.setPageContentOriginRectF(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentOriginRectF());
            noteSearchBean.setPageUpdatedAt(virtualPage.getUpdatedAt());
            noteSearchBean.setPageDarkTheme(ColorTheme.INSTANCE.isDarkTheme(virtualPage.getColorTheme()));
        }

        public Companion() {
        }

        @NotNull
        public final NoteSearchBean from(@NotNull SyncNoteModel noteModel, @NotNull List<? extends ReaderSelection> list) {
            Intrinsics.checkNotNullParameter(noteModel, "noteModel");
            Intrinsics.checkNotNullParameter(list, "list");
            NoteSearchBean noteSearchBean = new NoteSearchBean(2, noteModel);
            noteSearchBean.setSelections(CollectionKt.copy(list));
            return noteSearchBean;
        }

        @NotNull
        public final NoteSearchBean from(@NotNull SyncNoteModel noteModel, @NotNull String pageId) {
            Intrinsics.checkNotNullParameter(noteModel, "noteModel");
            Intrinsics.checkNotNullParameter(pageId, "pageId");
            NoteSearchBean noteSearchBean = new NoteSearchBean(2, noteModel);
            noteSearchBean.setPageId(pageId);
            return noteSearchBean;
        }

        @NotNull
        public final SelectionRegion toPageRegion(@NotNull NoteSearchBean noteSearchBean, @NotNull SelectionRegion selectionRegion) {
            Intrinsics.checkNotNullParameter(noteSearchBean, "<this>");
            Intrinsics.checkNotNullParameter(selectionRegion, "selectionRegion");
            return selectionRegion.concatTransform(noteSearchBean.getPageMarginMatrix());
        }
    }

    public NoteSearchBean(int i, @NotNull SyncNoteModel noteModel) {
        List<SelectionRegion> emptyList;
        Intrinsics.checkNotNullParameter(noteModel, "noteModel");
        this.type = i;
        this.noteModel = noteModel;
        this.pageIndex = -1;
        this.pageDisplayRect = new RectF();
        this.pageOriginRect = new RectF();
        this.pageContentOriginRectF = new RectF();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.selectionRegions = emptyList;
    }

    public static /* synthetic */ void contentMapToPageRect$default(NoteSearchBean noteSearchBean, RectF rectF, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        noteSearchBean.contentMapToPageRect(rectF, z);
    }

    public final void contentMapToPageRect(@NotNull RectF rectF, boolean applyMargin) {
        Intrinsics.checkNotNullParameter(rectF, "rectF");
        RectFKt.scaleRect(rectF, getPageContentScale());
        if (applyMargin) {
            getPageMarginMatrix().mapRect(rectF);
        }
    }

    @NotNull
    public final List<RectF> contentMapToPageRectList() {
        ArrayList arrayList = new ArrayList();
        List<? extends ReaderSelection> list = this.selections;
        if (list != null) {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                RectF union = RectUtils.INSTANCE.union(((ReaderSelection) it2.next()).rectangles());
                contentMapToPageRect(union, false);
                arrayList.add(union);
            }
        }
        return arrayList;
    }

    @NotNull
    public final NoteSearchBean copy() {
        NoteSearchBean noteSearchBean = new NoteSearchBean(this.type, this.noteModel);
        noteSearchBean.pageId = this.pageId;
        noteSearchBean.pageIndex = this.pageIndex;
        noteSearchBean.pageDisplayRect = RectFKt.copy(this.pageDisplayRect);
        noteSearchBean.pageOriginRect = RectFKt.copy(this.pageOriginRect);
        noteSearchBean.pageUpdatedAt = this.pageUpdatedAt;
        noteSearchBean.pageContentOriginRectF = RectFKt.copy(this.pageContentOriginRectF);
        noteSearchBean.isPageDarkTheme = this.isPageDarkTheme;
        List<? extends ReaderSelection> list = this.selections;
        noteSearchBean.selections = list != null ? CollectionKt.copy(list) : null;
        noteSearchBean.selectionRegions = CollectionKt.copy(this.selectionRegions);
        noteSearchBean.editorBundle = this.editorBundle;
        return noteSearchBean;
    }

    @NotNull
    public final String getCacheKey() {
        int collectionSizeOrDefault;
        List listOf;
        String joinToString$default;
        String[] strArr = new String[3];
        strArr[0] = String.valueOf(this.type);
        String str = this.pageId;
        if (str == null) {
            str = "";
        }
        strArr[1] = str;
        List<SelectionRegion> list = this.selectionRegions;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((SelectionRegion) it2.next()).toString());
        }
        strArr[2] = arrayList.toString();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) strArr);
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(listOf, "-", null, null, 0, null, null, 62, null);
        return joinToString$default;
    }

    @Nullable
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final SyncNoteModel getNoteModel() {
        return this.noteModel;
    }

    @NotNull
    public final RectF getPageContentOriginRectF() {
        return this.pageContentOriginRectF;
    }

    public final float getPageContentScale() {
        return this.pageOriginRect.width() / this.pageContentOriginRectF.width();
    }

    @NotNull
    public final RectF getPageDisplayRect() {
        return this.pageDisplayRect;
    }

    @Nullable
    public final String getPageId() {
        return this.pageId;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @NotNull
    public final Matrix getPageMarginMatrix() {
        RectF rectF = this.pageOriginRect;
        float f = rectF.left;
        RectF rectF2 = this.pageDisplayRect;
        return androidx.core.graphics.MatrixKt.translationMatrix(f - rectF2.left, rectF.top - rectF2.top);
    }

    @NotNull
    public final RectF getPageOriginRect() {
        return this.pageOriginRect;
    }

    @NotNull
    public final List<RectF> getPageRectList() {
        ArrayList arrayList = new ArrayList();
        CollectionKt.safeAddAll(arrayList, contentMapToPageRectList());
        CollectionKt.safeAddAll(arrayList, shapeMapToPageRectList());
        return arrayList;
    }

    public final long getPageUpdatedAt() {
        return this.pageUpdatedAt;
    }

    public final int getRegionSize() {
        List<? extends ReaderSelection> list = this.selections;
        return ((Number) AnyKt.getOrElse(list != null ? Integer.valueOf(list.size()) : null, new Function0<Integer>() { // from class: com.onyx.android.sdk.universal.editor.bean.NoteSearchBean$getRegionSize$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return 0;
            }
        })).intValue() + this.selectionRegions.size();
    }

    @NotNull
    public final List<SelectionRegion> getSelectionRegions() {
        return this.selectionRegions;
    }

    @Nullable
    public final List<ReaderSelection> getSelections() {
        return this.selections;
    }

    public final int getType() {
        return this.type;
    }

    public final boolean hasSelections() {
        return CollectionKt.isNonBlank(this.selections) || CollectionKt.isNonBlank(this.selectionRegions);
    }

    /* renamed from: isPageDarkTheme, reason: from getter */
    public final boolean getIsPageDarkTheme() {
        return this.isPageDarkTheme;
    }

    public final void setEditorBundle(@Nullable EditorBundle editorBundle) {
        this.editorBundle = editorBundle;
    }

    public final void setPageContentOriginRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pageContentOriginRectF = rectF;
    }

    public final void setPageDarkTheme(boolean z) {
        this.isPageDarkTheme = z;
    }

    public final void setPageDisplayRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pageDisplayRect = rectF;
    }

    public final void setPageId(@Nullable String str) {
        this.pageId = str;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public final void setPageOriginRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pageOriginRect = rectF;
    }

    public final void setPageUpdatedAt(long j) {
        this.pageUpdatedAt = j;
    }

    public final void setSelectionRegions(@NotNull List<SelectionRegion> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.selectionRegions = list;
    }

    public final void setSelections(@Nullable List<? extends ReaderSelection> list) {
        this.selections = list;
    }

    @NotNull
    public final List<RectF> shapeMapToPageRectList() {
        int collectionSizeOrDefault;
        List<SelectionRegion> list = this.selectionRegions;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (SelectionRegion selectionRegion : list) {
            arrayList.add(RectFKt.concatTransform(selectionRegion.getRect(), selectionRegion.getMatrix()));
        }
        return arrayList;
    }
}
