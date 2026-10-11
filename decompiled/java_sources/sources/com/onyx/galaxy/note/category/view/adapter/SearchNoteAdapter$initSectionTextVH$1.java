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
import com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$initSectionTextVH$1;
import com.onyx.galaxy.note.category.view.adapter.SearchNoteTextAdapter;
import com.onyx.galaxy.note.databinding.ItemSearchNoteSectionTextBinding;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000G\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J0\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J \u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J*\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¨\u0006\u0019"}, m61528d2 = {"com/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1", "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;", "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTextVH;", "holder", "", "position", "item", "", "onBind", "", "", "payloads", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreate", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "model", "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;", "viewBinding", "e", "c", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SearchNoteAdapter$initSectionTextVH$1 implements BaseMultiItemAdapter.OnMultiItemAdapterListener<SearchNoteAdapter.SearchNoteEntity, SearchNoteAdapter.SectionTextVH> {

    /* renamed from: a */
    public final /* synthetic */ SearchNoteAdapter f55289a;

    @SourceDebugExtension({"SMAP\nSearchNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1$bindTextNote$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,567:1\n277#2,2:568\n277#2,2:570\n*S KotlinDebug\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTextVH$1$bindTextNote$1\n*L\n208#1:568,2\n209#1:570,2\n*E\n"})
    /* renamed from: com.onyx.galaxy.note.category.view.adapter.SearchNoteAdapter$initSectionTextVH$1$a */
    /* loaded from: classes9.dex */
    public static final class C11402a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ SearchNoteAdapter.SectionTextVH f55290e;

        public C11402a(SearchNoteAdapter.SectionTextVH sectionTextVH) {
            this.f55290e = sectionTextVH;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            Group groupNoteThumbnail = this.f55290e.getViewBinding().groupNoteThumbnail;
            Intrinsics.checkNotNullExpressionValue(groupNoteThumbnail, "groupNoteThumbnail");
            groupNoteThumbnail.setVisibility(0);
            Group groupNoteThumbnailLand = this.f55290e.getViewBinding().groupNoteThumbnailLand;
            Intrinsics.checkNotNullExpressionValue(groupNoteThumbnailLand, "groupNoteThumbnailLand");
            groupNoteThumbnailLand.setVisibility(4);
        }
    }

    public SearchNoteAdapter$initSectionTextVH$1(SearchNoteAdapter searchNoteAdapter) {
        this.f55289a = searchNoteAdapter;
    }

    /* renamed from: d */
    public static final void m44177d(SearchNoteTextAdapter searchNoteTextAdapter, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(searchNoteTextAdapter, "$searchNoteTextAdapter");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        NoteSearchBean noteSearchBean = searchNoteTextAdapter.getItems().get(i);
        DocCollectionBundle.INSTANCE.postEvent(new OpenSearchResultEvent(noteSearchBean.getNoteModel(), noteSearchBean, TextSearchType.TEXT));
    }

    /* renamed from: f */
    public static final void m44178f(SearchNoteAdapter.SearchNoteEntity item, View view) {
        Intrinsics.checkNotNullParameter(item, "$item");
        DocCollectionBundle.INSTANCE.postEvent(new OpenSearchResultEvent(item.getModel(), null, TextSearchType.TEXT, 2, null));
    }

    /* renamed from: c */
    public final void m44179c(SearchNoteAdapter.SearchNoteEntity item, ItemSearchNoteSectionTextBinding viewBinding) {
        EditorBundleCache editorBundleCache;
        editorBundleCache = this.f55289a.editorBundleCache;
        final SearchNoteTextAdapter searchNoteTextAdapter = new SearchNoteTextAdapter(editorBundleCache);
        searchNoteTextAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() { // from class: com.sunia.HTREnginev2.d7m
            @Override // com.chad.library.adapter4.BaseQuickAdapter.OnItemClickListener
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SearchNoteAdapter$initSectionTextVH$1.m44177d(SearchNoteTextAdapter.this, baseQuickAdapter, view, i);
            }
        });
        searchNoteTextAdapter.submitList(CollectionKt.copy(item.getTextList()));
        viewBinding.rvTexts.setHasFixedSize(true);
        viewBinding.rvTexts.setNestedScrollingEnabled(false);
        viewBinding.rvTexts.setAdapter(searchNoteTextAdapter);
    }

    /* renamed from: e */
    public final void m44180e(SearchNoteAdapter.SectionTextVH holder, final SearchNoteAdapter.SearchNoteEntity item, SyncNoteModel model, ItemSearchNoteSectionTextBinding viewBinding) {
        TintTextView tintTextView = holder.getViewBinding().tvName;
        SyncNoteModel model2 = item.getModel();
        tintTextView.setText(model2 != null ? model2.getTitle() : null);
        TintConstraintLayout root = holder.getViewBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        RxBaseAction.execute$default(new LoadNoteCoverAction(model, root, 0, 4, null), null, new C11402a(holder), null, 5, null);
        ConstraintLayout clsNote = viewBinding.clsNote;
        Intrinsics.checkNotNullExpressionValue(clsNote, "clsNote");
        ViewKt.click$default(clsNote, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.c7m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchNoteAdapter$initSectionTextVH$1.m44178f(SearchNoteAdapter.SearchNoteEntity.this, view);
            }
        }, 1, null);
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    public /* bridge */ /* synthetic */ void onBind(SearchNoteAdapter.SectionTextVH sectionTextVH, int i, SearchNoteAdapter.SearchNoteEntity searchNoteEntity, List list) {
        onBind2(sectionTextVH, i, searchNoteEntity, (List<? extends Object>) list);
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    @NotNull
    public SearchNoteAdapter.SectionTextVH onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemSearchNoteSectionTextBinding inflate = ItemSearchNoteSectionTextBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new SearchNoteAdapter.SectionTextVH(inflate);
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
    public void onBind(@NotNull SearchNoteAdapter.SectionTextVH holder, int position, @Nullable SearchNoteAdapter.SearchNoteEntity item) {
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
        ItemSearchNoteSectionTextBinding viewBinding = holder.getViewBinding();
        m44180e(holder, item, item.getModel(), viewBinding);
        m44179c(item, viewBinding);
    }

    /* renamed from: onBind, reason: avoid collision after fix types in other method */
    public void onBind2(@NotNull SearchNoteAdapter.SectionTextVH holder, int position, @Nullable SearchNoteAdapter.SearchNoteEntity item, @NotNull List<? extends Object> payloads) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBind(holder, position, item);
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull(payloads);
        if (firstOrNull instanceof Map) {
            Object obj = ((Map) firstOrNull).get(SearchNoteTextAdapter.PAY_LOAD_KEY_UPDATE_TEXT_LIST);
            List list = obj instanceof List ? (List) obj : null;
            if (list == null) {
                return;
            }
            RecyclerView.Adapter adapter = holder.getViewBinding().rvTexts.getAdapter();
            SearchNoteTextAdapter searchNoteTextAdapter = adapter instanceof SearchNoteTextAdapter ? (SearchNoteTextAdapter) adapter : null;
            if (searchNoteTextAdapter == null) {
                return;
            }
            searchNoteTextAdapter.submitList(list);
        }
    }
}
