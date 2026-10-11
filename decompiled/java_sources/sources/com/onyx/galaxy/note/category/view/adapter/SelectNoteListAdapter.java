package com.onyx.galaxy.note.category.view.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter4.BaseMultiItemAdapter;
import com.chad.library.adapter4.QuickAdapterHelper;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.path.ThumbnailPaths;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.utils.ImageManager;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.TagsLinearLayout;
import com.onyx.galaxy.note.category.view.adapter.SelectNoteListAdapter;
import com.onyx.galaxy.note.databinding.ItemSelectNoteListGridNoteLandBinding;
import com.onyx.galaxy.note.databinding.ItemSelectNoteListGridNotePortraitBinding;
import com.onyx.galaxy.note.databinding.ItemSelectNoteListLinearNoteLandBinding;
import com.onyx.galaxy.note.databinding.ItemSelectNoteListLinearNotePortraitBinding;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 ,2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0005,-./0B\u0007¢\u0006\u0004\b*\u0010+J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0006\u0010\b\u001a\u00020\u0007J\b\u0010\t\u001a\u00020\u0005H\u0002J\"\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0002J\u001e\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0015H\u0002J\u0010\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0007H\u0002RB\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u001d0\u001c2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u001d0\u001c8\u0006@GX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010&R\u0016\u0010\u001a\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u00061"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter;", "Lcom/chad/library/adapter4/BaseMultiItemAdapter;", "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "", "onViewRecycled", "", "toggleDisplayType", C4921e.f26528e, "Landroid/view/View;", "itemView", "position", "item", "s", "Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;", "llTags", "", "", CouchFieldKey.KEY_TAG_ID_LIST, "q", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "syncNoteModel", "t", "noteModelBean", "u", "displayType", "setDisplayType", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;", "value", "Ljava/util/Map;", "getTagByIdMap", "()Ljava/util/Map;", "setTagByIdMap", "(Ljava/util/Map;)V", "tagByIdMap", "Lcom/chad/library/adapter4/QuickAdapterHelper;", "Lcom/chad/library/adapter4/QuickAdapterHelper;", "quickAdapterHelper", "v", "I", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "GridNoteLandItemViewHolder", "GridNotePortraitItemViewHolder", "LinearNoteLandItemViewHolder", "LinearNotePortraitItemViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSelectNoteListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectNoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,267:1\n1603#2,9:268\n1855#2:277\n1856#2:279\n1612#2:280\n1549#2:281\n1620#2,3:282\n1#3:278\n277#4,2:285\n*S KotlinDebug\n*F\n+ 1 SelectNoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter\n*L\n214#1:268,9\n214#1:277\n214#1:279\n214#1:280\n216#1:281\n216#1:282,3\n214#1:278\n237#1:285,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SelectNoteListAdapter extends BaseMultiItemAdapter<NoteModelBean> {
    public static final int TYPE_GRID_DISPLAY = 1;
    public static final int TYPE_GRID_NOTE_LAND = 2;
    public static final int TYPE_GRID_NOTE_PORTRAIT = 1;
    public static final int TYPE_LINEAR_NOTE_LAND = 5;
    public static final int TYPE_LINEAR_NOTE_PORTRAIT = 4;
    public static final int TYPE_LIST_DISPLAY = 2;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public Map<String, SyncTagModel> tagByIdMap;

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public QuickAdapterHelper quickAdapterHelper;

    /* renamed from: v, reason: from kotlin metadata */
    public int displayType;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$GridNoteLandItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListGridNoteLandBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListGridNoteLandBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListGridNoteLandBinding;", "viewBinding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListGridNoteLandBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class GridNoteLandItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSelectNoteListGridNoteLandBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridNoteLandItemViewHolder(@NotNull ItemSelectNoteListGridNoteLandBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemSelectNoteListGridNoteLandBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$GridNotePortraitItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListGridNotePortraitBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListGridNotePortraitBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListGridNotePortraitBinding;", "viewBinding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListGridNotePortraitBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class GridNotePortraitItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSelectNoteListGridNotePortraitBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridNotePortraitItemViewHolder(@NotNull ItemSelectNoteListGridNotePortraitBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemSelectNoteListGridNotePortraitBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$LinearNoteLandItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListLinearNoteLandBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListLinearNoteLandBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListLinearNoteLandBinding;", "viewBinding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListLinearNoteLandBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class LinearNoteLandItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSelectNoteListLinearNoteLandBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinearNoteLandItemViewHolder(@NotNull ItemSelectNoteListLinearNoteLandBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemSelectNoteListLinearNoteLandBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/SelectNoteListAdapter$LinearNotePortraitItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListLinearNotePortraitBinding;", "H", "Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListLinearNotePortraitBinding;", "getViewBinding", "()Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListLinearNotePortraitBinding;", "viewBinding", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/databinding/ItemSelectNoteListLinearNotePortraitBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class LinearNotePortraitItemViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final ItemSelectNoteListLinearNotePortraitBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinearNotePortraitItemViewHolder(@NotNull ItemSelectNoteListLinearNotePortraitBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ItemSelectNoteListLinearNotePortraitBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    public SelectNoteListAdapter() {
        super(null, 1, null);
        this.tagByIdMap = new LinkedHashMap();
        this.displayType = 1;
        m44206o();
    }

    /* renamed from: p */
    public static final int m44204p(SelectNoteListAdapter this$0, int i, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "list");
        NoteModelBean noteModelBean = (NoteModelBean) list.get(i);
        return this$0.displayType == 1 ? noteModelBean.getIsPortrait() ? 1 : 2 : noteModelBean.getIsPortrait() ? 4 : 5;
    }

    /* renamed from: r */
    public static final void m44205r(TagsLinearLayout llTags, List nameColorPairList) {
        Intrinsics.checkNotNullParameter(llTags, "$llTags");
        Intrinsics.checkNotNullParameter(nameColorPairList, "$nameColorPairList");
        llTags.initTags(nameColorPairList);
        ViewKt.setViewVisibleOrInvisible(llTags, !nameColorPairList.isEmpty());
    }

    @NotNull
    public final Map<String, SyncTagModel> getTagByIdMap() {
        return this.tagByIdMap;
    }

    /* renamed from: o */
    public final void m44206o() {
        addItemType(1, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NoteModelBean, GridNotePortraitItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectNoteListAdapter$addItemTypes$1
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull SelectNoteListAdapter.GridNotePortraitItemViewHolder holder, int position, @Nullable NoteModelBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                SelectNoteListAdapter selectNoteListAdapter = SelectNoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                selectNoteListAdapter.m44208s(itemView, position, item);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public SelectNoteListAdapter.GridNotePortraitItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemSelectNoteListGridNotePortraitBinding inflate = ItemSelectNoteListGridNotePortraitBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new SelectNoteListAdapter.GridNotePortraitItemViewHolder(inflate);
            }
        });
        addItemType(2, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NoteModelBean, GridNoteLandItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectNoteListAdapter$addItemTypes$2
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull SelectNoteListAdapter.GridNoteLandItemViewHolder holder, int position, @Nullable NoteModelBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                SelectNoteListAdapter selectNoteListAdapter = SelectNoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                selectNoteListAdapter.m44208s(itemView, position, item);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public SelectNoteListAdapter.GridNoteLandItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemSelectNoteListGridNoteLandBinding inflate = ItemSelectNoteListGridNoteLandBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new SelectNoteListAdapter.GridNoteLandItemViewHolder(inflate);
            }
        });
        addItemType(4, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NoteModelBean, LinearNotePortraitItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectNoteListAdapter$addItemTypes$3
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull SelectNoteListAdapter.LinearNotePortraitItemViewHolder holder, int position, @Nullable NoteModelBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                SelectNoteListAdapter selectNoteListAdapter = SelectNoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                selectNoteListAdapter.m44208s(itemView, position, item);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public SelectNoteListAdapter.LinearNotePortraitItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemSelectNoteListLinearNotePortraitBinding inflate = ItemSelectNoteListLinearNotePortraitBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new SelectNoteListAdapter.LinearNotePortraitItemViewHolder(inflate);
            }
        });
        addItemType(5, new BaseMultiItemAdapter.OnMultiItemAdapterListener<NoteModelBean, LinearNoteLandItemViewHolder>() { // from class: com.onyx.galaxy.note.category.view.adapter.SelectNoteListAdapter$addItemTypes$4
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            public void onBind(@NotNull SelectNoteListAdapter.LinearNoteLandItemViewHolder holder, int position, @Nullable NoteModelBean item) {
                Intrinsics.checkNotNullParameter(holder, "holder");
                SelectNoteListAdapter selectNoteListAdapter = SelectNoteListAdapter.this;
                View itemView = holder.itemView;
                Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                selectNoteListAdapter.m44208s(itemView, position, item);
            }

            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnMultiItemAdapterListener
            @NotNull
            public SelectNoteListAdapter.LinearNoteLandItemViewHolder onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(parent, "parent");
                ItemSelectNoteListLinearNoteLandBinding inflate = ItemSelectNoteListLinearNoteLandBinding.inflate(LayoutInflater.from(context), parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return new SelectNoteListAdapter.LinearNoteLandItemViewHolder(inflate);
            }
        });
        onItemViewType(new BaseMultiItemAdapter.OnItemViewTypeListener() { // from class: com.sunia.HTREnginev2.kfm
            @Override // com.chad.library.adapter4.BaseMultiItemAdapter.OnItemViewTypeListener
            public final int onItemViewType(int i, List list) {
                int m44204p;
                m44204p = SelectNoteListAdapter.m44204p(SelectNoteListAdapter.this, i, list);
                return m44204p;
            }
        });
    }

    @Override // com.chad.library.adapter4.BaseMultiItemAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled(holder);
        ImageView imageView = (ImageView) holder.itemView.findViewById(C10651R.id.iv_thumbnail);
        if (imageView != null) {
            imageView.setImageBitmap(null);
        }
    }

    /* renamed from: q */
    public final void m44207q(final TagsLinearLayout llTags, List<String> tagIdList) {
        int collectionSizeOrDefault;
        final List mutableList;
        ArrayList<SyncTagModel> arrayList = new ArrayList();
        Iterator<T> it2 = tagIdList.iterator();
        while (it2.hasNext()) {
            SyncTagModel syncTagModel = this.tagByIdMap.get((String) it2.next());
            if (syncTagModel != null) {
                arrayList.add(syncTagModel);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (SyncTagModel syncTagModel2 : arrayList) {
            arrayList2.add(TuplesKt.m61535to(syncTagModel2.getContent(), Integer.valueOf(syncTagModel2.getStyle().getColor())));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2);
        ViewKt.setViewVisibleOrInvisible(llTags, false);
        llTags.post(new Runnable() { // from class: com.sunia.HTREnginev2.jfm
            @Override // java.lang.Runnable
            public final void run() {
                SelectNoteListAdapter.m44205r(TagsLinearLayout.this, mutableList);
            }
        });
    }

    /* renamed from: s */
    public final void m44208s(View itemView, int position, NoteModelBean item) {
        TagsLinearLayout tagsLinearLayout = (TagsLinearLayout) itemView.findViewById(C10651R.id.ll_tags);
        TextView textView = (TextView) itemView.findViewById(C10651R.id.tv_time);
        TextView textView2 = (TextView) itemView.findViewById(C10651R.id.tv_name);
        Intrinsics.checkNotNull(tagsLinearLayout);
        Intrinsics.checkNotNull(item);
        m44207q(tagsLinearLayout, item.getTagIdList());
        textView.setText(m44209t(item));
        textView2.setText(item.getTitle());
        m44210u(itemView, item);
        itemView.setTag(item);
    }

    public final void setDisplayType(int displayType) {
        this.displayType = displayType;
        notifyItemRangeChanged(0, getItems().size());
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public final void setTagByIdMap(@NotNull Map<String, SyncTagModel> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.tagByIdMap = value;
        notifyDataSetChanged();
    }

    /* renamed from: t */
    public final String m44209t(SyncNoteModel syncNoteModel) {
        String format = DateTimeUtil.INSTANCE.getDATE_FORMAT_YYYYMMDD_3().format(new Date(syncNoteModel.getUpdatedAt()));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    public final int toggleDisplayType() {
        int i = this.displayType == 2 ? 1 : 2;
        this.displayType = i;
        setDisplayType(i);
        return this.displayType;
    }

    /* renamed from: u */
    public final void m44210u(View itemView, SyncNoteModel noteModelBean) {
        ImageView imageView = (ImageView) itemView.findViewById(C10651R.id.iv_thumbnail);
        String obj = ThumbnailPaths.INSTANCE.appThumbnailPath(noteModelBean.getUniqueId()).toAbsolutePath().toString();
        ImageView imageView2 = (ImageView) itemView.findViewById(C10651R.id.iv_note_lock_thumbnail);
        if (imageView2 != null) {
            imageView2.setVisibility(noteModelBean.hasEncryption() ^ true ? 4 : 0);
        }
        if (FileUtils.INSTANCE.fileExist(obj)) {
            Glide.with(getContext()).load(obj).signature(ImageManager.INSTANCE.getDefaultFileCacheKey(new File(obj))).dontAnimate().into(imageView);
        } else {
            imageView.setImageBitmap(null);
        }
    }
}
