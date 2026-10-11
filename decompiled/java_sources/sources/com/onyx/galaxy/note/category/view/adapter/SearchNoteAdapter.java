package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.SpanUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.editor.EditorBundleCache;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.LoadNoteCoverAction;
import com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter;
import com.onyx.galaxy.note.common.extension.BaseQuickAdapterKt;
import com.onyx.galaxy.note.databinding.ItemSearchNoteDividerBinding;
import com.onyx.galaxy.note.databinding.ItemSearchNoteSectionHwrBinding;
import com.onyx.galaxy.note.databinding.ItemSearchNoteSectionTextBinding;
import com.onyx.galaxy.note.databinding.ItemSearchNoteSectionTitleBinding;
import com.onyx.galaxy.note.databinding.ItemSearchNoteTitleBinding;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 92\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00079:;<=>?B\u0007¢\u0006\u0004\b7\u00108J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0003H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0003H\u0002J\b\u0010\u0014\u001a\u00020\u0003H\u0002J\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00022\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0015H\u0002J\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00022\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0015H\u0002J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0002H\u0002J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u0019H\u0002J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010!\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\b\u0010\"\u001a\u00020\u0003H\u0002J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010$\u001a\u00020#H\u0016J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010$\u001a\u00020#H\u0016J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020'H\u0016J\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00020)2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0015J\u0014\u0010+\u001a\u00020\u00032\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0015J\u0014\u0010,\u001a\u00020\u00032\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0015J\u0014\u0010-\u001a\u00020\u00032\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0015R\"\u00103\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0016\u00106\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u00105¨\u0006@"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;", "Lcom/chad/library/adapter4/BaseMultiItemAdapter;", "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;", "", "v", "u", "t", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "noteSearchBean", "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;", C4921e.f26528e, "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;", "holder", "", "title", "r", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "model", "A", "w", "s", "", "resultList", SardineUtil.DEFAULT_NAMESPACE_PREFIX, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "", "type", "y", "newEntity", "x", "sectionTitleType", "q", "z", "p", "B", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "onDetachedFromRecyclerView", "onAttachedToRecyclerView", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onViewRecycled", "", "toTitleEntities", "addTitleEntities", "addTextEntities", "addHWREntities", Constants.STRING_SIG, "getKeyword", "()Ljava/lang/String;", "setKeyword", "(Ljava/lang/String;)V", "keyword", "Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;", "Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;", "editorBundleCache", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "DividerVH", "SearchNoteEntity", "SectionHWRVH", "SectionTextVH", "SectionTitleVH", "TitleVH", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,567:1\n1#2:568\n766#3:569\n857#3,2:570\n1549#3:572\n1620#3,3:573\n378#3,7:576\n350#3,7:584\n1002#3,2:591\n1002#3,2:593\n766#3:596\n857#3,2:597\n350#3,7:600\n1002#3,2:607\n1002#3,2:609\n766#3:612\n857#3,2:613\n766#3:615\n857#3,2:616\n378#3,7:618\n350#3,7:625\n378#3,7:632\n215#4:583\n216#4:595\n215#4:599\n216#4:611\n*S KotlinDebug\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter\n*L\n398#1:569\n398#1:570,2\n409#1:572\n409#1:573,3\n422#1:576,7\n440#1:584,7\n445#1:591,2\n448#1:593,2\n456#1:596\n456#1:597,2\n476#1:600,7\n481#1:607,2\n484#1:609,2\n492#1:612\n492#1:613,2\n511#1:615\n511#1:616,2\n517#1:618,7\n540#1:625,7\n544#1:632,7\n435#1:583\n435#1:595\n472#1:599\n472#1:611\n*E\n"})
/* loaded from: classes9.dex */
public final class SearchNoteAdapter extends BaseMultiItemAdapter<SearchNoteEntity> {
    public static final int ITEM_DIVIDER = 1;
    public static final int ITEM_SECTION_HANDWRITE = 3;
    public static final int ITEM_SECTION_TEXT = 4;
    public static final int ITEM_SECTION_TITLE = 2;
    public static final int ITEM_TITLE = 0;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public String keyword;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public EditorBundleCache editorBundleCache;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$DividerVH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteDividerBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteDividerBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteDividerBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemSearchNoteDividerBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class DividerVH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSearchNoteDividerBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DividerVH(@NotNull ItemSearchNoteDividerBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemSearchNoteDividerBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b/\b\u0086\b\u0018\u00002\u00020\u0001Bs\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0014\u001a\u00020\b\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002¢\u0006\u0004\b:\u0010;J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J\t\u0010\n\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0003J\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\fHÆ\u0003J\t\u0010\u0010\u001a\u00020\u0002HÆ\u0003Ju\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0011\u001a\u00020\u00022\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0014\u001a\u00020\b2\b\b\u0002\u0010\u0015\u001a\u00020\u00022\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\b\u0002\u0010\u0019\u001a\u00020\u0002HÆ\u0001J\t\u0010\u001b\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u001e\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0011\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0017\u0010\u0014\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b\u0014\u0010-R\u0017\u0010\u0015\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b.\u0010 \u001a\u0004\b/\u0010\"R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b0\u0010(\u001a\u0004\b1\u0010*R\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006¢\u0006\f\n\u0004\b6\u00103\u001a\u0004\b7\u00105R\u0017\u0010\u0019\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b8\u0010 \u001a\u0004\b9\u0010\"¨\u0006<"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;", "", "", "component1", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "component2", "", "component3", "", "component4", "component5", "component6", "", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "component7", "component8", "component9", "type", "model", "title", "isDivider", "pageIndex", CouchFieldKey.KEY_TOC_PAGE_ID, "textList", "hwrList", "sectionTitleType", "copy", "toString", "hashCode", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "equals", "a", "I", "getType", "()I", "b", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "c", Constants.STRING_SIG, "getTitle", "()Ljava/lang/String;", "d", Constants.HASIDCALL_INDEX_SIG, Constants.BOOLEAN_VALUE_SIG, "e", "getPageIndex", C6997f.f39671c, "getPageId", C6998g.f39679a, "Ljava/util/List;", "getTextList", "()Ljava/util/List;", C6999h.f39688c, "getHwrList", "i", "getSectionTitleType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Ljava/lang/String;ZILjava/lang/String;Ljava/util/List;Ljava/util/List;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final /* data */ class SearchNoteEntity {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        public final int type;

        /* renamed from: b, reason: from kotlin metadata and from toString */
        @Nullable
        public final SyncNoteModel model;

        /* renamed from: c, reason: from kotlin metadata and from toString */
        @Nullable
        public final String title;

        /* renamed from: d, reason: from kotlin metadata and from toString */
        public final boolean isDivider;

        /* renamed from: e, reason: from kotlin metadata and from toString */
        public final int pageIndex;

        /* renamed from: f, reason: from kotlin metadata and from toString */
        @Nullable
        public final String pageId;

        /* renamed from: g, reason: from kotlin metadata and from toString */
        @NotNull
        public final List<NoteSearchBean> textList;

        /* renamed from: h, reason: from kotlin metadata and from toString */
        @NotNull
        public final List<NoteSearchBean> hwrList;

        /* renamed from: i, reason: from kotlin metadata and from toString */
        public final int sectionTitleType;

        public SearchNoteEntity() {
            this(0, null, null, false, 0, null, null, null, 0, 511, null);
        }

        /* renamed from: component1, reason: from getter */
        public final int getType() {
            return this.type;
        }

        @Nullable
        /* renamed from: component2, reason: from getter */
        public final SyncNoteModel getModel() {
            return this.model;
        }

        @Nullable
        /* renamed from: component3, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        /* renamed from: component4, reason: from getter */
        public final boolean getIsDivider() {
            return this.isDivider;
        }

        /* renamed from: component5, reason: from getter */
        public final int getPageIndex() {
            return this.pageIndex;
        }

        @Nullable
        /* renamed from: component6, reason: from getter */
        public final String getPageId() {
            return this.pageId;
        }

        @NotNull
        public final List<NoteSearchBean> component7() {
            return this.textList;
        }

        @NotNull
        public final List<NoteSearchBean> component8() {
            return this.hwrList;
        }

        /* renamed from: component9, reason: from getter */
        public final int getSectionTitleType() {
            return this.sectionTitleType;
        }

        @NotNull
        public final SearchNoteEntity copy(int type, @Nullable SyncNoteModel model, @Nullable String title, boolean isDivider, int pageIndex, @Nullable String pageId, @NotNull List<NoteSearchBean> textList, @NotNull List<NoteSearchBean> hwrList, int sectionTitleType) {
            Intrinsics.checkNotNullParameter(textList, "textList");
            Intrinsics.checkNotNullParameter(hwrList, "hwrList");
            return new SearchNoteEntity(type, model, title, isDivider, pageIndex, pageId, textList, hwrList, sectionTitleType);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SearchNoteEntity)) {
                return false;
            }
            SearchNoteEntity searchNoteEntity = (SearchNoteEntity) other;
            return this.type == searchNoteEntity.type && Intrinsics.areEqual(this.model, searchNoteEntity.model) && Intrinsics.areEqual(this.title, searchNoteEntity.title) && this.isDivider == searchNoteEntity.isDivider && this.pageIndex == searchNoteEntity.pageIndex && Intrinsics.areEqual(this.pageId, searchNoteEntity.pageId) && Intrinsics.areEqual(this.textList, searchNoteEntity.textList) && Intrinsics.areEqual(this.hwrList, searchNoteEntity.hwrList) && this.sectionTitleType == searchNoteEntity.sectionTitleType;
        }

        @NotNull
        public final List<NoteSearchBean> getHwrList() {
            return this.hwrList;
        }

        @Nullable
        public final SyncNoteModel getModel() {
            return this.model;
        }

        @Nullable
        public final String getPageId() {
            return this.pageId;
        }

        public final int getPageIndex() {
            return this.pageIndex;
        }

        public final int getSectionTitleType() {
            return this.sectionTitleType;
        }

        @NotNull
        public final List<NoteSearchBean> getTextList() {
            return this.textList;
        }

        @Nullable
        public final String getTitle() {
            return this.title;
        }

        public final int getType() {
            return this.type;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = Integer.hashCode(this.type) * 31;
            SyncNoteModel syncNoteModel = this.model;
            int hashCode2 = (hashCode + (syncNoteModel == null ? 0 : syncNoteModel.hashCode())) * 31;
            String str = this.title;
            int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
            boolean z = this.isDivider;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int hashCode4 = (((hashCode3 + i) * 31) + Integer.hashCode(this.pageIndex)) * 31;
            String str2 = this.pageId;
            return ((((((hashCode4 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.textList.hashCode()) * 31) + this.hwrList.hashCode()) * 31) + Integer.hashCode(this.sectionTitleType);
        }

        public final boolean isDivider() {
            return this.isDivider;
        }

        @NotNull
        public String toString() {
            return "SearchNoteEntity(type=" + this.type + ", model=" + this.model + ", title=" + this.title + ", isDivider=" + this.isDivider + ", pageIndex=" + this.pageIndex + ", pageId=" + this.pageId + ", textList=" + this.textList + ", hwrList=" + this.hwrList + ", sectionTitleType=" + this.sectionTitleType + ')';
        }

        public SearchNoteEntity(int i, @Nullable SyncNoteModel syncNoteModel, @Nullable String str, boolean z, int i2, @Nullable String str2, @NotNull List<NoteSearchBean> textList, @NotNull List<NoteSearchBean> hwrList, int i3) {
            Intrinsics.checkNotNullParameter(textList, "textList");
            Intrinsics.checkNotNullParameter(hwrList, "hwrList");
            this.type = i;
            this.model = syncNoteModel;
            this.title = str;
            this.isDivider = z;
            this.pageIndex = i2;
            this.pageId = str2;
            this.textList = textList;
            this.hwrList = hwrList;
            this.sectionTitleType = i3;
        }

        public /* synthetic */ SearchNoteEntity(int i, SyncNoteModel syncNoteModel, String str, boolean z, int i2, String str2, List list, List list2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this((i4 & 1) != 0 ? -1 : i, (i4 & 2) != 0 ? null : syncNoteModel, (i4 & 4) != 0 ? null : str, (i4 & 8) != 0 ? false : z, (i4 & 16) != 0 ? -1 : i2, (i4 & 32) != 0 ? null : str2, (i4 & 64) != 0 ? new ArrayList() : list, (i4 & 128) != 0 ? new ArrayList() : list2, (i4 & 256) != 0 ? -1 : i3);
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class SectionHWRVH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSearchNoteSectionHwrBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SectionHWRVH(@NotNull ItemSearchNoteSectionHwrBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemSearchNoteSectionHwrBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTextVH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class SectionTextVH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSearchNoteSectionTextBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SectionTextVH(@NotNull ItemSearchNoteSectionTextBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemSearchNoteSectionTextBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class SectionTitleVH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSearchNoteSectionTitleBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SectionTitleVH(@NotNull ItemSearchNoteSectionTitleBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemSearchNoteSectionTitleBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$TitleVH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteTitleBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteTitleBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteTitleBinding;", "viewBinding", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemSearchNoteTitleBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class TitleVH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSearchNoteTitleBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TitleVH(@NotNull ItemSearchNoteTitleBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemSearchNoteTitleBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @SourceDebugExtension({"SMAP\nSearchNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$loadNoteCover$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,567:1\n277#2,2:568\n277#2,2:570\n*S KotlinDebug\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$loadNoteCover$1\n*L\n347#1:568,2\n348#1:570,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C11400a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ SectionTitleVH f55286e;

        public C11400a(SectionTitleVH sectionTitleVH) {
            this.f55286e = sectionTitleVH;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Group groupNoteThumbnail = this.f55286e.getViewBinding().groupNoteThumbnail;
            Intrinsics.checkNotNullExpressionValue(groupNoteThumbnail, "groupNoteThumbnail");
            groupNoteThumbnail.setVisibility(0);
            Group groupNoteThumbnailLand = this.f55286e.getViewBinding().groupNoteThumbnailLand;
            Intrinsics.checkNotNullExpressionValue(groupNoteThumbnailLand, "groupNoteThumbnailLand");
            groupNoteThumbnailLand.setVisibility(4);
        }
    }

    public SearchNoteAdapter() {
        super(null, 1, null);
        this.keyword = "";
        this.editorBundleCache = new EditorBundleCache(7);
        m44163w();
        m44159s();
        m44162v();
        m44161u();
        m44160t();
        onItemViewType(new BaseMultiItemAdapter.OnItemViewTypeListener() { // from class: com.sunia.HTREnginev2.z6m
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnItemViewTypeListener
            public final int onItemViewType(int i, List list) {
                int m44150n;
                m44150n = SearchNoteAdapter.m44150n(i, list);
                return m44150n;
            }
        });
    }

    /* renamed from: n */
    public static final int m44150n(int i, List list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return ((SearchNoteEntity) list.get(i)).getType();
    }

    /* renamed from: A */
    public final void m44151A(SectionTitleVH holder, SyncNoteModel model) {
        FrameLayout root = holder.getViewBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        RxBaseAction.execute$default(new LoadNoteCoverAction(model, root, 0, 4, null), null, new C11400a(holder), null, 5, null);
    }

    /* renamed from: B */
    public final void m44152B() {
        RecyclerView recyclerViewSafely = BaseQuickAdapterKt.getRecyclerViewSafely(this);
        if (recyclerViewSafely != null) {
            ViewKt.postSelf(recyclerViewSafely, new Function1<RecyclerView, Unit>() { // from class: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$resizeEditorCacheSize$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(RecyclerView recyclerView) {
                    invoke2(recyclerView);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull RecyclerView it2) {
                    EditorBundleCache editorBundleCache;
                    Intrinsics.checkNotNullParameter(it2, "it");
                    int max = Math.max(it2.getMeasuredHeight(), it2.getHeight()) / ResManager.INSTANCE.getDimens(C7384R.dimen.dp_170);
                    if (max <= 0) {
                        return;
                    }
                    Debug debug = Debug.INSTANCE;
                    Class<?> cls = SearchNoteAdapter.this.getClass();
                    if (debug.getDebug()) {
                        debug.m32035d(cls, "resizeEditorCacheSize:" + max, new Object[0]);
                    }
                    editorBundleCache = SearchNoteAdapter.this.editorBundleCache;
                    editorBundleCache.resize(max);
                }
            });
        }
    }

    /* renamed from: C */
    public final SearchNoteEntity m44153C(List<NoteSearchBean> resultList) {
        Object first;
        List mutableList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : resultList) {
            if (((NoteSearchBean) obj).getType() == 1) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return new SearchNoteEntity(3, ((NoteSearchBean) first).getNoteModel(), null, false, 0, null, null, mutableList, 0, 380, null);
    }

    /* renamed from: D */
    public final SearchNoteEntity m44154D(List<NoteSearchBean> resultList) {
        Object first;
        List mutableList;
        ArrayList arrayList = new ArrayList();
        for (Object obj : resultList) {
            if (((NoteSearchBean) obj).getType() == 2) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return new SearchNoteEntity(4, ((NoteSearchBean) first).getNoteModel(), null, false, 0, null, mutableList, null, 0, 444, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006d A[LOOP:1: B:8:0x003d->B:19:0x006d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0071 A[EDGE_INSN: B:20:0x0071->B:21:0x0071 BREAK  A[LOOP:1: B:8:0x003d->B:19:0x006d], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void addHWREntities(@org.jetbrains.annotations.NotNull java.util.List<com.onyx.android.sdk.universal.editor.bean.NoteSearchBean> r11) {
        /*
            r10 = this;
            java.lang.String r0 = "resultList"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.util.Collection r11 = (java.util.Collection) r11
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$1 r0 = new kotlin.jvm.functions.Function1<com.onyx.android.sdk.universal.editor.bean.NoteSearchBean, java.lang.String>() { // from class: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$1
                static {
                    /*
                        com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$1 r0 = new com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$1) com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$1.INSTANCE com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$1.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$1.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ java.lang.String invoke(com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r1) {
                    /*
                        r0 = this;
                        com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r1 = (com.onyx.android.sdk.universal.editor.bean.NoteSearchBean) r1
                        java.lang.String r0 = r0.invoke(r1)
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$1.invoke(java.lang.Object):java.lang.Object");
                }

                @Override // kotlin.jvm.functions.Function1
                @org.jetbrains.annotations.NotNull
                public final java.lang.String invoke(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r1) {
                    /*
                        r0 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                        com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel r0 = r1.getNoteModel()
                        java.lang.String r0 = r0.getUniqueId()
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$1.invoke(com.onyx.android.sdk.universal.editor.bean.NoteSearchBean):java.lang.String");
                }
            }
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$2 r1 = new kotlin.jvm.functions.Function1<com.onyx.android.sdk.universal.editor.bean.NoteSearchBean, com.onyx.android.sdk.universal.editor.bean.NoteSearchBean>() { // from class: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$2
                static {
                    /*
                        com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$2 r0 = new com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$2) com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$2.INSTANCE com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$2.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$2.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                @org.jetbrains.annotations.NotNull
                public final com.onyx.android.sdk.universal.editor.bean.NoteSearchBean invoke(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r1) {
                    /*
                        r0 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$2.invoke(com.onyx.android.sdk.universal.editor.bean.NoteSearchBean):com.onyx.android.sdk.universal.editor.bean.NoteSearchBean");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ com.onyx.android.sdk.universal.editor.bean.NoteSearchBean invoke(com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r1) {
                    /*
                        r0 = this;
                        com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r1 = (com.onyx.android.sdk.universal.editor.bean.NoteSearchBean) r1
                        com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r0 = r0.invoke(r1)
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$2.invoke(java.lang.Object):java.lang.Object");
                }
            }
            java.util.Map r11 = com.onyx.android.sdk.base.extension.CollectionKt.toMapList(r11, r0, r1)
            java.util.Set r11 = r11.entrySet()
            java.util.Iterator r11 = r11.iterator()
        L17:
            boolean r0 = r11.hasNext()
            if (r0 == 0) goto Lca
            java.lang.Object r0 = r11.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r1 = r0.getValue()
            java.util.List r1 = (java.util.List) r1
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$SearchNoteEntity r1 = r10.m44153C(r1)
            if (r1 == 0) goto L17
            r2 = 3
            r10.m44165y(r2)
            java.util.List r3 = r10.getItems()
            java.util.Iterator r3 = r3.iterator()
            r4 = 0
            r5 = r4
        L3d:
            boolean r6 = r3.hasNext()
            r7 = 0
            r8 = 1
            if (r6 == 0) goto L70
            java.lang.Object r6 = r3.next()
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$SearchNoteEntity r6 = (com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter.SearchNoteEntity) r6
            int r9 = r6.getType()
            if (r9 != r2) goto L69
            com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel r6 = r6.getModel()
            if (r6 == 0) goto L5c
            java.lang.String r6 = r6.getUniqueId()
            goto L5d
        L5c:
            r6 = r7
        L5d:
            java.lang.Object r9 = r0.getKey()
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r9)
            if (r6 == 0) goto L69
            r6 = r8
            goto L6a
        L69:
            r6 = r4
        L6a:
            if (r6 == 0) goto L6d
            goto L71
        L6d:
            int r5 = r5 + 1
            goto L3d
        L70:
            r5 = -1
        L71:
            if (r5 >= 0) goto L74
            goto L7f
        L74:
            java.util.List r0 = r10.getItems()
            java.lang.Object r0 = r0.get(r5)
            r7 = r0
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$SearchNoteEntity r7 = (com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter.SearchNoteEntity) r7
        L7f:
            if (r7 == 0) goto Lb3
            java.util.List r0 = r7.getHwrList()
            java.util.List r1 = r1.getHwrList()
            java.util.Collection r1 = (java.util.Collection) r1
            r0.addAll(r1)
            java.util.List r0 = r7.getHwrList()
            int r1 = r0.size()
            if (r1 <= r8) goto La0
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$lambda$16$lambda$15$$inlined$sortBy$1 r1 = new com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$lambda$16$lambda$15$$inlined$sortBy$1
            r1.<init>()
            kotlin.collections.CollectionsKt.sortWith(r0, r1)
        La0:
            java.lang.String r0 = "pay_load_key_update_hwr_list"
            java.util.List r1 = r7.getHwrList()
            kotlin.Pair r0 = kotlin.TuplesKt.m61535to(r0, r1)
            java.util.Map r0 = kotlin.collections.MapsKt.mapOf(r0)
            r10.notifyItemChanged(r5, r0)
            goto L17
        Lb3:
            java.util.List r0 = r1.getHwrList()
            int r2 = r0.size()
            if (r2 <= r8) goto Lc5
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$lambda$16$lambda$15$$inlined$sortBy$2 r2 = new com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addHWREntities$lambda$16$lambda$15$$inlined$sortBy$2
            r2.<init>()
            kotlin.collections.CollectionsKt.sortWith(r0, r2)
        Lc5:
            r10.m44164x(r1)
            goto L17
        Lca:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter.addHWREntities(java.util.List):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006d A[LOOP:1: B:8:0x003d->B:19:0x006d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0071 A[EDGE_INSN: B:20:0x0071->B:21:0x0071 BREAK  A[LOOP:1: B:8:0x003d->B:19:0x006d], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void addTextEntities(@org.jetbrains.annotations.NotNull java.util.List<com.onyx.android.sdk.universal.editor.bean.NoteSearchBean> r11) {
        /*
            r10 = this;
            java.lang.String r0 = "resultList"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.util.Collection r11 = (java.util.Collection) r11
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$1 r0 = new kotlin.jvm.functions.Function1<com.onyx.android.sdk.universal.editor.bean.NoteSearchBean, java.lang.String>() { // from class: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$1
                static {
                    /*
                        com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$1 r0 = new com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$1) com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$1.INSTANCE com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$1.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$1.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ java.lang.String invoke(com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r1) {
                    /*
                        r0 = this;
                        com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r1 = (com.onyx.android.sdk.universal.editor.bean.NoteSearchBean) r1
                        java.lang.String r0 = r0.invoke(r1)
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$1.invoke(java.lang.Object):java.lang.Object");
                }

                @Override // kotlin.jvm.functions.Function1
                @org.jetbrains.annotations.NotNull
                public final java.lang.String invoke(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r1) {
                    /*
                        r0 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                        com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel r0 = r1.getNoteModel()
                        java.lang.String r0 = r0.getUniqueId()
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$1.invoke(com.onyx.android.sdk.universal.editor.bean.NoteSearchBean):java.lang.String");
                }
            }
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$2 r1 = new kotlin.jvm.functions.Function1<com.onyx.android.sdk.universal.editor.bean.NoteSearchBean, com.onyx.android.sdk.universal.editor.bean.NoteSearchBean>() { // from class: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$2
                static {
                    /*
                        com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$2 r0 = new com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$2) com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$2.INSTANCE com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$2.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$2.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                @org.jetbrains.annotations.NotNull
                public final com.onyx.android.sdk.universal.editor.bean.NoteSearchBean invoke(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r1) {
                    /*
                        r0 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$2.invoke(com.onyx.android.sdk.universal.editor.bean.NoteSearchBean):com.onyx.android.sdk.universal.editor.bean.NoteSearchBean");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ com.onyx.android.sdk.universal.editor.bean.NoteSearchBean invoke(com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r1) {
                    /*
                        r0 = this;
                        com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r1 = (com.onyx.android.sdk.universal.editor.bean.NoteSearchBean) r1
                        com.onyx.android.sdk.universal.editor.bean.NoteSearchBean r0 = r0.invoke(r1)
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$2.invoke(java.lang.Object):java.lang.Object");
                }
            }
            java.util.Map r11 = com.onyx.android.sdk.base.extension.CollectionKt.toMapList(r11, r0, r1)
            java.util.Set r11 = r11.entrySet()
            java.util.Iterator r11 = r11.iterator()
        L17:
            boolean r0 = r11.hasNext()
            if (r0 == 0) goto Lca
            java.lang.Object r0 = r11.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r1 = r0.getValue()
            java.util.List r1 = (java.util.List) r1
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$SearchNoteEntity r1 = r10.m44154D(r1)
            if (r1 == 0) goto L17
            r2 = 4
            r10.m44165y(r2)
            java.util.List r3 = r10.getItems()
            java.util.Iterator r3 = r3.iterator()
            r4 = 0
            r5 = r4
        L3d:
            boolean r6 = r3.hasNext()
            r7 = 0
            r8 = 1
            if (r6 == 0) goto L70
            java.lang.Object r6 = r3.next()
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$SearchNoteEntity r6 = (com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter.SearchNoteEntity) r6
            int r9 = r6.getType()
            if (r9 != r2) goto L69
            com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel r6 = r6.getModel()
            if (r6 == 0) goto L5c
            java.lang.String r6 = r6.getUniqueId()
            goto L5d
        L5c:
            r6 = r7
        L5d:
            java.lang.Object r9 = r0.getKey()
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r9)
            if (r6 == 0) goto L69
            r6 = r8
            goto L6a
        L69:
            r6 = r4
        L6a:
            if (r6 == 0) goto L6d
            goto L71
        L6d:
            int r5 = r5 + 1
            goto L3d
        L70:
            r5 = -1
        L71:
            if (r5 >= 0) goto L74
            goto L7f
        L74:
            java.util.List r0 = r10.getItems()
            java.lang.Object r0 = r0.get(r5)
            r7 = r0
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$SearchNoteEntity r7 = (com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter.SearchNoteEntity) r7
        L7f:
            if (r7 == 0) goto Lb3
            java.util.List r0 = r7.getTextList()
            java.util.List r1 = r1.getTextList()
            java.util.Collection r1 = (java.util.Collection) r1
            r0.addAll(r1)
            java.util.List r0 = r7.getTextList()
            int r1 = r0.size()
            if (r1 <= r8) goto La0
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$lambda$10$lambda$9$$inlined$sortBy$1 r1 = new com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$lambda$10$lambda$9$$inlined$sortBy$1
            r1.<init>()
            kotlin.collections.CollectionsKt.sortWith(r0, r1)
        La0:
            java.lang.String r0 = "pay_load_key_update_text_list"
            java.util.List r1 = r7.getTextList()
            kotlin.Pair r0 = kotlin.TuplesKt.m61535to(r0, r1)
            java.util.Map r0 = kotlin.collections.MapsKt.mapOf(r0)
            r10.notifyItemChanged(r5, r0)
            goto L17
        Lb3:
            java.util.List r0 = r1.getTextList()
            int r2 = r0.size()
            if (r2 <= r8) goto Lc5
            com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$lambda$10$lambda$9$$inlined$sortBy$2 r2 = new com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTextEntities$lambda$10$lambda$9$$inlined$sortBy$2
            r2.<init>()
            kotlin.collections.CollectionsKt.sortWith(r0, r2)
        Lc5:
            r10.m44164x(r1)
            goto L17
        Lca:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter.addTextEntities(java.util.List):void");
    }

    public final void addTitleEntities(@NotNull List<NoteSearchBean> resultList) {
        int i;
        int size;
        Intrinsics.checkNotNullParameter(resultList, "resultList");
        List<SearchNoteEntity> titleEntities = toTitleEntities(resultList);
        List<SearchNoteEntity> items = getItems();
        ListIterator<SearchNoteEntity> listIterator = items.listIterator(items.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                i = -1;
                break;
            } else {
                if (listIterator.previous().getType() == 2) {
                    i = listIterator.nextIndex();
                    break;
                }
            }
        }
        if (i >= 0) {
            size = i + 1;
            CollectionsKt__MutableCollectionsKt.removeAll((List) titleEntities, (Function1) new Function1<SearchNoteEntity, Boolean>() { // from class: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$addTitleEntities$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull SearchNoteAdapter.SearchNoteEntity it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(it2.getType() != 2);
                }
            });
        } else {
            size = getItems().size();
        }
        addAll(size, titleEntities);
    }

    @NotNull
    public final String getKeyword() {
        return this.keyword;
    }

    /* renamed from: o */
    public final TextSearchType m44155o(NoteSearchBean noteSearchBean) {
        int type = noteSearchBean.getType();
        return type != 1 ? type != 2 ? TextSearchType.ALL : TextSearchType.TEXT : TextSearchType.HANDWRITING;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        m44152B();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
        this.editorBundleCache.evictAll();
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled(holder);
        View itemView = holder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        String uniqueIdTag = ViewKt.getUniqueIdTag(itemView);
        if (uniqueIdTag != null) {
            if (!StringKt.isNotEmpty(uniqueIdTag)) {
                uniqueIdTag = null;
            }
            if (uniqueIdTag != null) {
                this.editorBundleCache.remove(uniqueIdTag);
            }
        }
    }

    /* renamed from: p */
    public final String m44156p(int type) {
        String string = ResManager.INSTANCE.getString(type != 2 ? type != 3 ? type != 4 ? C10651R.string.note_search_type_title : C10651R.string.note_search_type_text : C10651R.string.handwriting : C10651R.string.note_search_type_title);
        return string == null ? "" : string;
    }

    /* renamed from: q */
    public final int m44157q(int sectionTitleType) {
        int i = 0;
        for (SearchNoteEntity searchNoteEntity : getItems()) {
            if (searchNoteEntity.getType() == 0 && searchNoteEntity.getSectionTitleType() == sectionTitleType) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: r */
    public final void m44158r(SectionTitleVH holder, String title) {
        holder.getViewBinding().tvName.setText(SpanUtils.highLightKeyword$default(SpanUtils.INSTANCE, title, this.keyword, ThemeUtils.getColorById(C7996R.color.theme_text_color_highlight_01), false, 8, null));
    }

    /* renamed from: s */
    public final void m44159s() {
        addItemType(1, new BaseMultiItemAdapter.OnMultiItemAdapterListener<SearchNoteEntity, DividerVH>() { // from class: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$initDividerVH$1
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull SearchNoteAdapter.DividerVH holder, int position, @Nullable SearchNoteAdapter.SearchNoteEntity item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public SearchNoteAdapter.DividerVH onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemSearchNoteDividerBinding inflate = ItemSearchNoteDividerBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new SearchNoteAdapter.DividerVH(inflate);
            }
        });
    }

    public final void setKeyword(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.keyword = str;
    }

    /* renamed from: t */
    public final void m44160t() {
        addItemType(3, new SearchNoteAdapter$initSectionHWRVH$1(this));
    }

    @NotNull
    public final List<SearchNoteEntity> toTitleEntities(@NotNull List<NoteSearchBean> resultList) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(resultList, "resultList");
        ArrayList arrayList = new ArrayList();
        for (Object obj : resultList) {
            if (((NoteSearchBean) obj).getType() == 0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        if (CollectionKt.isNonBlank(arrayList)) {
            arrayList2.add(new SearchNoteEntity(0, null, ResManager.INSTANCE.getString(C10651R.string.note_search_type_title), false, 0, null, null, null, 2, 250, null));
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
            for (Iterator it2 = arrayList.iterator(); it2.hasNext(); it2 = it2) {
                arrayList3.add(new SearchNoteEntity(2, ((NoteSearchBean) it2.next()).getNoteModel(), null, false, 0, null, null, null, 0, 508, null));
            }
            arrayList2.addAll(arrayList3);
        }
        return arrayList2;
    }

    /* renamed from: u */
    public final void m44161u() {
        addItemType(4, new SearchNoteAdapter$initSectionTextVH$1(this));
    }

    /* renamed from: v */
    public final void m44162v() {
        addItemType(2, new BaseMultiItemAdapter.OnMultiItemAdapterListener<SearchNoteEntity, SectionTitleVH>() { // from class: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$initSectionTitleVH$1
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull SearchNoteAdapter.SectionTitleVH holder, int position, @Nullable SearchNoteAdapter.SearchNoteEntity item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                Group groupNoteThumbnail = holder.getViewBinding().groupNoteThumbnail;
                Intrinsics.checkNotNullExpressionValue(groupNoteThumbnail, "groupNoteThumbnail");
                groupNoteThumbnail.setVisibility(4);
                Group groupNoteThumbnailLand = holder.getViewBinding().groupNoteThumbnailLand;
                Intrinsics.checkNotNullExpressionValue(groupNoteThumbnailLand, "groupNoteThumbnailLand");
                groupNoteThumbnailLand.setVisibility(4);
                SearchNoteAdapter searchNoteAdapter = SearchNoteAdapter.this;
                Intrinsics.checkNotNull(item);
                SyncNoteModel model = item.getModel();
                Intrinsics.checkNotNull(model);
                searchNoteAdapter.m44151A(holder, model);
                SearchNoteAdapter searchNoteAdapter2 = SearchNoteAdapter.this;
                SyncNoteModel model2 = item.getModel();
                Intrinsics.checkNotNull(model2);
                String title = model2.getTitle();
                Intrinsics.checkNotNull(title);
                searchNoteAdapter2.m44158r(holder, title);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public SearchNoteAdapter.SectionTitleVH onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemSearchNoteSectionTitleBinding inflate = ItemSearchNoteSectionTitleBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new SearchNoteAdapter.SectionTitleVH(inflate);
            }
        });
    }

    /* renamed from: w */
    public final void m44163w() {
        addItemType(0, new BaseMultiItemAdapter.OnMultiItemAdapterListener<SearchNoteEntity, TitleVH>() { // from class: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$initTitleVH$1
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull SearchNoteAdapter.TitleVH holder, int position, @Nullable SearchNoteAdapter.SearchNoteEntity item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                holder.getViewBinding().tvTitle.setText(item != null ? item.getTitle() : null);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public SearchNoteAdapter.TitleVH onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemSearchNoteTitleBinding inflate = ItemSearchNoteTitleBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new SearchNoteAdapter.TitleVH(inflate);
            }
        });
    }

    /* renamed from: x */
    public final void m44164x(SearchNoteEntity newEntity) {
        int type = newEntity.getType();
        int m44157q = m44157q(type);
        int m44166z = m44166z(type);
        int min = Math.min(m44166z + 1, getItems().size());
        if (m44166z < 0) {
            min = Math.min(m44157q + 1, getItems().size());
        }
        add(min, newEntity);
    }

    /* renamed from: y */
    public final void m44165y(int type) {
        List listOf;
        int i;
        if (type == 2) {
            return;
        }
        String m44156p = m44156p(type);
        List<SearchNoteEntity> items = getItems();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = items.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            SearchNoteEntity searchNoteEntity = (SearchNoteEntity) next;
            if (searchNoteEntity.getType() == 0 && searchNoteEntity.getSectionTitleType() == type) {
                r5 = 1;
            }
            if (r5 != 0) {
                arrayList.add(next);
            }
        }
        if (!arrayList.isEmpty()) {
            return;
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{2, 3, 4});
        List<SearchNoteEntity> items2 = getItems();
        ListIterator<SearchNoteEntity> listIterator = items2.listIterator(items2.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                i = -1;
                break;
            }
            SearchNoteEntity previous = listIterator.previous();
            if (listOf.indexOf(Integer.valueOf(previous.getType() == 0 ? previous.getSectionTitleType() : previous.getType())) < listOf.indexOf(Integer.valueOf(type))) {
                i = listIterator.nextIndex();
                break;
            }
        }
        add(i >= 0 ? ((Number) MathUtils.INSTANCE.atMost(Integer.valueOf(i + 1), Integer.valueOf(getItems().size()))).intValue() : 0, new SearchNoteEntity(0, null, m44156p, false, 0, null, null, null, type, 250, null));
    }

    /* renamed from: z */
    public final int m44166z(int type) {
        List<SearchNoteEntity> items = getItems();
        ListIterator<SearchNoteEntity> listIterator = items.listIterator(items.size());
        while (listIterator.hasPrevious()) {
            if (listIterator.previous().getType() == type) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }
}
