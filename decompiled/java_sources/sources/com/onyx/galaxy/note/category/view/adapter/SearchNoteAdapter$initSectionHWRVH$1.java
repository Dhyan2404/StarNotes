package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.EditorBundleCache;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import com.onyx.android.sdk.universal.editor.data.TextSearchType;
import com.onyx.galaxy.note.category.action.LoadNoteCoverAction;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.OpenSearchResultEvent;
import com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter;
import com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$initSectionHWRVH$1;
import com.onyx.galaxy.note.category.view.adapter.SearchNoteHWRAdapter;
import com.onyx.galaxy.note.databinding.ItemSearchNoteSectionHwrBinding;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000G\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J0\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J \u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J*\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¨\u0006\u0019"}, m61528d2 = {"com/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1", "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;", "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;", "holder", "", "position", "item", "", "onBind", "", "", "payloads", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreate", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "model", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;", "viewBinding", "e", "c", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SearchNoteAdapter$initSectionHWRVH$1 implements BaseMultiItemAdapter.OnMultiItemAdapterListener<SearchNoteAdapter.SearchNoteEntity, SearchNoteAdapter.SectionHWRVH> {

    /* renamed from: a */
    public final /* synthetic */ SearchNoteAdapter f55287a;

    @SourceDebugExtension({"SMAP\nSearchNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1$bindHWRNote$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,567:1\n277#2,2:568\n277#2,2:570\n*S KotlinDebug\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1$bindHWRNote$1\n*L\n299#1:568,2\n300#1:570,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$initSectionHWRVH$1$a */
    /* loaded from: classes9.dex */
    public static final class C11401a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ SearchNoteAdapter.SectionHWRVH f55288e;

        public C11401a(SearchNoteAdapter.SectionHWRVH sectionHWRVH) {
            this.f55288e = sectionHWRVH;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Group groupNoteThumbnail = this.f55288e.getViewBinding().groupNoteThumbnail;
            Intrinsics.checkNotNullExpressionValue(groupNoteThumbnail, "groupNoteThumbnail");
            groupNoteThumbnail.setVisibility(0);
            Group groupNoteThumbnailLand = this.f55288e.getViewBinding().groupNoteThumbnailLand;
            Intrinsics.checkNotNullExpressionValue(groupNoteThumbnailLand, "groupNoteThumbnailLand");
            groupNoteThumbnailLand.setVisibility(4);
        }
    }

    public SearchNoteAdapter$initSectionHWRVH$1(SearchNoteAdapter searchNoteAdapter) {
        this.f55287a = searchNoteAdapter;
    }

    /* renamed from: d */
    public static final void m44170d(SearchNoteHWRAdapter searchNoteHWRAdapter, SearchNoteAdapter this$0, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        TextSearchType m44155o;
        Intrinsics.checkNotNullParameter(searchNoteHWRAdapter, "$searchNoteHWRAdapter");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        NoteSearchBean noteSearchBean = searchNoteHWRAdapter.getItems().get(i);
        DocCollectionBundle docCollectionBundle = DocCollectionBundle.INSTANCE;
        SyncNoteModel noteModel = noteSearchBean.getNoteModel();
        m44155o = this$0.m44155o(noteSearchBean);
        docCollectionBundle.postEvent(new OpenSearchResultEvent(noteModel, noteSearchBean, m44155o));
    }

    /* renamed from: f */
    public static final void m44171f(SearchNoteAdapter.SearchNoteEntity item, View view) {
        Intrinsics.checkNotNullParameter(item, "$item");
        DocCollectionBundle.INSTANCE.postEvent(new OpenSearchResultEvent(item.getModel(), null, TextSearchType.ALL, 2, null));
    }

    /* renamed from: c */
    public final void m44172c(SearchNoteAdapter.SearchNoteEntity item, ItemSearchNoteSectionHwrBinding viewBinding) {
        EditorBundleCache editorBundleCache;
        editorBundleCache = this.f55287a.editorBundleCache;
        final SearchNoteHWRAdapter searchNoteHWRAdapter = new SearchNoteHWRAdapter(editorBundleCache);
        final SearchNoteAdapter searchNoteAdapter = this.f55287a;
        searchNoteHWRAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.b7m
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SearchNoteAdapter$initSectionHWRVH$1.m44170d(SearchNoteHWRAdapter.this, searchNoteAdapter, baseQuickAdapter, view, i);
            }
        });
        searchNoteHWRAdapter.submitList(CollectionKt.copy(item.getHwrList()));
        viewBinding.rvHwrs.setHasFixedSize(true);
        viewBinding.rvHwrs.setNestedScrollingEnabled(false);
        viewBinding.rvHwrs.setAdapter(searchNoteHWRAdapter);
    }

    /* renamed from: e */
    public final void m44173e(SearchNoteAdapter.SectionHWRVH holder, final SearchNoteAdapter.SearchNoteEntity item, SyncNoteModel model, ItemSearchNoteSectionHwrBinding viewBinding) {
        TintTextView tintTextView = holder.getViewBinding().tvName;
        SyncNoteModel model2 = item.getModel();
        tintTextView.setText(model2 != null ? model2.getTitle() : null);
        TintConstraintLayout root = holder.getViewBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        RxBaseAction.execute$default(new LoadNoteCoverAction(model, root, 0, 4, null), null, new C11401a(holder), null, 5, null);
        ConstraintLayout clsNote = viewBinding.clsNote;
        Intrinsics.checkNotNullExpressionValue(clsNote, "clsNote");
        ViewKt.click$default(clsNote, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.a7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteAdapter$initSectionHWRVH$1.m44171f(SearchNoteAdapter.SearchNoteEntity.this, view);
            }
        }, 1, null);
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    public /* bridge */ /* synthetic */ void onBind(SearchNoteAdapter.SectionHWRVH sectionHWRVH, int i, SearchNoteAdapter.SearchNoteEntity searchNoteEntity, List list) {
        onBind2(sectionHWRVH, i, searchNoteEntity, (List<? extends Object>) list);
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    @NotNull
    public SearchNoteAdapter.SectionHWRVH onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemSearchNoteSectionHwrBinding inflate = ItemSearchNoteSectionHwrBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new SearchNoteAdapter.SectionHWRVH(inflate);
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    public void onBind(@NotNull SearchNoteAdapter.SectionHWRVH holder, int position, @Nullable SearchNoteAdapter.SearchNoteEntity item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        View itemView = holder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        SyncNoteModel model = item.getModel();
        String uniqueId = model != null ? model.getUniqueId() : null;
        if (uniqueId == null) {
            uniqueId = "";
        }
        com.onyx.android.sdk.base.extension.ViewKt.setUniqueIdTag(itemView, uniqueId);
        ItemSearchNoteSectionHwrBinding viewBinding = holder.getViewBinding();
        m44173e(holder, item, item.getModel(), viewBinding);
        m44172c(item, viewBinding);
    }

    /* renamed from: onBind, reason: avoid collision after fix types in other method */
    public void onBind2(@NotNull SearchNoteAdapter.SectionHWRVH holder, int position, @Nullable SearchNoteAdapter.SearchNoteEntity item, @NotNull List<? extends Object> payloads) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (!payloads.isEmpty()) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull(payloads);
            if (firstOrNull instanceof Map) {
                Object obj = ((Map) firstOrNull).get(SearchNoteHWRAdapter.PAY_LOAD_KEY_UPDATE_HWR_LIST);
                List list = obj instanceof List ? (List) obj : null;
                if (list == null) {
                    return;
                }
                RecyclerView.Adapter adapter = holder.getViewBinding().rvHwrs.getAdapter();
                SearchNoteHWRAdapter searchNoteHWRAdapter = adapter instanceof SearchNoteHWRAdapter ? (SearchNoteHWRAdapter) adapter : null;
                if (searchNoteHWRAdapter == null) {
                    return;
                }
                searchNoteHWRAdapter.submitList(list);
                return;
            }
            return;
        }
        onBind(holder, position, item);
    }
}
