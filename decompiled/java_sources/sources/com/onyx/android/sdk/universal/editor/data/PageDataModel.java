package com.onyx.android.sdk.universal.editor.data;

import android.graphics.RectF;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.reader.api.ReaderSelection;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 +2\u00020\u0001:\u0001+B7\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\u0006\u0010&\u001a\u00020\u0000J\b\u0010'\u001a\u0004\u0018\u00010\u0007J\u0006\u0010(\u001a\u00020\u0007J\u0006\u0010)\u001a\u00020*R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0011\"\u0004\b\u001d\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006,"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "pageIndex", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", "pageDisplayRectF", "Landroid/graphics/RectF;", "noteSearchBean", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "extraCacheKey", "getExtraCacheKey", "()Ljava/lang/String;", "setExtraCacheKey", "(Ljava/lang/String;)V", "getNoteSearchBean", "()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "setNoteSearchBean", "(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V", "getPageDisplayRectF", "()Landroid/graphics/RectF;", "setPageDisplayRectF", "(Landroid/graphics/RectF;)V", "getPageId", "setPageId", "getPageIndex", "()I", "updatedAt", "", "getUpdatedAt", "()J", "setUpdatedAt", "(J)V", "copy", "getDocId", "toObjectCacheKey", "updateExtraCacheKey", "", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PageDataModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Nullable
    private final EditorBundle editorBundle;

    @NotNull
    private String extraCacheKey;

    @Nullable
    private NoteSearchBean noteSearchBean;

    @NotNull
    private RectF pageDisplayRectF;

    @NotNull
    private String pageId;
    private final int pageIndex;
    private long updatedAt;

    @Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\n2\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\nJ\u001e\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\"\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\n2\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00100\nJ\u0012\u0010\u0013\u001a\u00020\u0014*\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004J\u0012\u0010\u0016\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;", "", "()V", "fromNoteSearchBean", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "noteSearchBean", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "fromNoteSearchBeanList", "", "noteSearchBeanList", "fromVirtualPage", FirebaseAnalytics.Param.INDEX, "", "virtualPage", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "fromVirtualPageList", "virtualPageList", "merge", "", "data", "updateByVirtualPage", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    @SourceDebugExtension({"SMAP\nPageDataModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageDataModel.kt\ncom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,141:1\n1559#2:142\n1590#2,4:143\n1549#2:147\n1620#2,3:148\n*S KotlinDebug\n*F\n+ 1 PageDataModel.kt\ncom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion\n*L\n92#1:142\n92#1:143,4\n101#1:147\n101#1:148,3\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PageDataModel fromNoteSearchBean(@NotNull EditorBundle editorBundle, @NotNull NoteSearchBean noteSearchBean) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(noteSearchBean, "noteSearchBean");
            RectF copy = RectFKt.copy(noteSearchBean.getPageDisplayRect());
            int pageIndex = noteSearchBean.getPageIndex();
            String pageId = noteSearchBean.getPageId();
            if (pageId == null) {
                pageId = "";
            }
            PageDataModel pageDataModel = new PageDataModel(editorBundle, pageIndex, pageId, copy, null, 16, null);
            pageDataModel.setNoteSearchBean(noteSearchBean);
            NoteSearchBean noteSearchBean2 = pageDataModel.getNoteSearchBean();
            if (noteSearchBean2 != null) {
                noteSearchBean2.setEditorBundle(editorBundle);
            }
            pageDataModel.setExtraCacheKey(NoteSearchBean.Companion.toObjectCacheKey$default(NoteSearchBean.INSTANCE, noteSearchBean, null, 1, null));
            return pageDataModel;
        }

        @NotNull
        public final List<PageDataModel> fromNoteSearchBeanList(@NotNull EditorBundle editorBundle, @NotNull List<NoteSearchBean> noteSearchBeanList) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(noteSearchBeanList, "noteSearchBeanList");
            List<NoteSearchBean> list = noteSearchBeanList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(PageDataModel.INSTANCE.fromNoteSearchBean(editorBundle, (NoteSearchBean) it2.next()));
            }
            return arrayList;
        }

        @NotNull
        public final PageDataModel fromVirtualPage(@NotNull EditorBundle editorBundle, int index, @NotNull VirtualPageModel virtualPage) {
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
            PageDataModel pageDataModel = new PageDataModel(editorBundle, index, virtualPage.getUniqueId(), new RectF(), null, 16, null);
            PageDataModel.INSTANCE.updateByVirtualPage(pageDataModel, virtualPage);
            return pageDataModel;
        }

        @NotNull
        public final List<PageDataModel> fromVirtualPageList(@NotNull EditorBundle editorBundle, @NotNull List<VirtualPageModel> virtualPageList) {
            int collectionSizeOrDefault;
            Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
            Intrinsics.checkNotNullParameter(virtualPageList, "virtualPageList");
            List<VirtualPageModel> list = virtualPageList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                arrayList.add(PageDataModel.INSTANCE.fromVirtualPage(editorBundle, i, (VirtualPageModel) obj));
                i = i2;
            }
            return arrayList;
        }

        public final void merge(@NotNull PageDataModel pageDataModel, @NotNull PageDataModel data) {
            Intrinsics.checkNotNullParameter(pageDataModel, "<this>");
            Intrinsics.checkNotNullParameter(data, "data");
            if (pageDataModel.getNoteSearchBean() == null) {
                pageDataModel.setNoteSearchBean(data.getNoteSearchBean());
                return;
            }
            ArrayList arrayList = new ArrayList();
            NoteSearchBean noteSearchBean = pageDataModel.getNoteSearchBean();
            Intrinsics.checkNotNull(noteSearchBean);
            if (noteSearchBean.getSelections() != null) {
                NoteSearchBean noteSearchBean2 = pageDataModel.getNoteSearchBean();
                Intrinsics.checkNotNull(noteSearchBean2);
                List<ReaderSelection> selections = noteSearchBean2.getSelections();
                Intrinsics.checkNotNull(selections);
                arrayList.addAll(selections);
            }
            NoteSearchBean noteSearchBean3 = data.getNoteSearchBean();
            Intrinsics.checkNotNull(noteSearchBean3);
            if (noteSearchBean3.getSelections() != null) {
                NoteSearchBean noteSearchBean4 = data.getNoteSearchBean();
                Intrinsics.checkNotNull(noteSearchBean4);
                List<ReaderSelection> selections2 = noteSearchBean4.getSelections();
                Intrinsics.checkNotNull(selections2);
                arrayList.addAll(selections2);
            }
            NoteSearchBean noteSearchBean5 = pageDataModel.getNoteSearchBean();
            if (noteSearchBean5 != null) {
                noteSearchBean5.setSelections(arrayList);
            }
            ArrayList arrayList2 = new ArrayList();
            NoteSearchBean noteSearchBean6 = pageDataModel.getNoteSearchBean();
            if (CollectionKt.isNonBlank(noteSearchBean6 != null ? noteSearchBean6.getSelectionRegions() : null)) {
                NoteSearchBean noteSearchBean7 = pageDataModel.getNoteSearchBean();
                CollectionKt.safeAddAll(arrayList2, noteSearchBean7 != null ? noteSearchBean7.getSelectionRegions() : null);
            }
            NoteSearchBean noteSearchBean8 = data.getNoteSearchBean();
            if (CollectionKt.isNonBlank(noteSearchBean8 != null ? noteSearchBean8.getSelectionRegions() : null)) {
                NoteSearchBean noteSearchBean9 = data.getNoteSearchBean();
                CollectionKt.safeAddAll(arrayList2, noteSearchBean9 != null ? noteSearchBean9.getSelectionRegions() : null);
            }
            NoteSearchBean noteSearchBean10 = pageDataModel.getNoteSearchBean();
            if (noteSearchBean10 == null) {
                return;
            }
            noteSearchBean10.setSelectionRegions(arrayList2);
        }

        @NotNull
        public final PageDataModel updateByVirtualPage(@NotNull PageDataModel pageDataModel, @NotNull VirtualPageModel virtualPage) {
            Intrinsics.checkNotNullParameter(pageDataModel, "<this>");
            Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
            pageDataModel.setPageDisplayRectF(RectFKt.copy(virtualPage.getPageSizeWithMargin()));
            pageDataModel.setPageId(virtualPage.getUniqueId());
            pageDataModel.setUpdatedAt(virtualPage.getUpdatedAt());
            pageDataModel.setExtraCacheKey(String.valueOf(pageDataModel.getUpdatedAt()));
            return pageDataModel;
        }

        private Companion() {
        }
    }

    public PageDataModel(@Nullable EditorBundle editorBundle, int i, @NotNull String pageId, @NotNull RectF pageDisplayRectF, @Nullable NoteSearchBean noteSearchBean) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(pageDisplayRectF, "pageDisplayRectF");
        this.editorBundle = editorBundle;
        this.pageIndex = i;
        this.pageId = pageId;
        this.pageDisplayRectF = pageDisplayRectF;
        this.noteSearchBean = noteSearchBean;
        this.extraCacheKey = "";
    }

    @NotNull
    public final PageDataModel copy() {
        EditorBundle editorBundle = this.editorBundle;
        int i = this.pageIndex;
        String str = this.pageId;
        RectF copy = RectFKt.copy(this.pageDisplayRectF);
        NoteSearchBean noteSearchBean = this.noteSearchBean;
        return new PageDataModel(editorBundle, i, str, copy, noteSearchBean != null ? noteSearchBean.copy() : null);
    }

    @Nullable
    public final String getDocId() {
        SyncNoteModel noteModel;
        String docId;
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null && (docId = EditorBundleKt.docId(editorBundle)) != null) {
            return docId;
        }
        NoteSearchBean noteSearchBean = this.noteSearchBean;
        if (noteSearchBean == null || (noteModel = noteSearchBean.getNoteModel()) == null) {
            return null;
        }
        return noteModel.getUniqueId();
    }

    @Nullable
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
    public final String getExtraCacheKey() {
        return this.extraCacheKey;
    }

    @Nullable
    public final NoteSearchBean getNoteSearchBean() {
        return this.noteSearchBean;
    }

    @NotNull
    public final RectF getPageDisplayRectF() {
        return this.pageDisplayRectF;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    public final long getUpdatedAt() {
        return this.updatedAt;
    }

    public final void setExtraCacheKey(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.extraCacheKey = str;
    }

    public final void setNoteSearchBean(@Nullable NoteSearchBean noteSearchBean) {
        this.noteSearchBean = noteSearchBean;
    }

    public final void setPageDisplayRectF(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.pageDisplayRectF = rectF;
    }

    public final void setPageId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.pageId = str;
    }

    public final void setUpdatedAt(long j) {
        this.updatedAt = j;
    }

    @NotNull
    public final String toObjectCacheKey() {
        String str = this.pageId;
        if (str.length() == 0) {
            StringBuilder sb = new StringBuilder();
            EditorBundle editorBundle = this.editorBundle;
            String docId = editorBundle != null ? EditorBundleKt.docId(editorBundle) : null;
            if (docId == null) {
                docId = "";
            }
            sb.append(docId);
            sb.append(this.pageIndex);
            str = sb.toString();
        }
        return str + this.pageDisplayRectF.toShortString() + this.extraCacheKey;
    }

    public final void updateExtraCacheKey() {
        long millisOfNow = DateTimeUtil.INSTANCE.millisOfNow();
        this.updatedAt = millisOfNow;
        this.extraCacheKey = String.valueOf(millisOfNow);
    }

    public /* synthetic */ PageDataModel(EditorBundle editorBundle, int i, String str, RectF rectF, NoteSearchBean noteSearchBean, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(editorBundle, i, (i2 & 4) != 0 ? "" : str, (i2 & 8) != 0 ? new RectF() : rectF, (i2 & 16) != 0 ? null : noteSearchBean);
    }
}
