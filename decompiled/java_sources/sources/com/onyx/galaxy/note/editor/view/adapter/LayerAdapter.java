package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.utils.NotePageInfoUtils;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.layer.DrawNotePageLayerAction;
import com.onyx.android.sdk.universal.editor.action.layer.DrawViewportLayerAction;
import com.onyx.android.sdk.universal.editor.action.render.RenderNotePageThumbnailAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback;
import com.onyx.galaxy.note.databinding.ItemLayerBinding;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00012\b\u0012\u0004\u0012\u00020\u00020\u0005:\u0001?B\u000f\u0012\u0006\u00100\u001a\u00020+¢\u0006\u0004\b=\u0010>J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\bJ\u0006\u0010\u000e\u001a\u00020\bJ\u0006\u0010\u000f\u001a\u00020\u0006J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0010\u001a\u00020\u0002J\u000e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016J\u0010\u0010\u001a\u001a\u00020\u00132\b\u0010\u0019\u001a\u0004\u0018\u00010\u0016J(\u0010\u001e\u001a\u00020\b2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u001c\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\nH\u0014J\u0016\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00020'2\u0006\u0010&\u001a\u00020%H\u0016J\u0010\u0010)\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010*\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u00022\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002R\u0017\u00100\u001a\u00020+8\u0006¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R$\u0010<\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u00104\u001a\u0004\b:\u00106\"\u0004\b;\u00108¨\u0006@"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "pageInfo", "", "setPageInfo", "", "layerId", "selectLayer", "updateCurrentLayer", "scrollToCurrentLayer", "getPageInfo", "layerInfo", "", "getLayerName", "", "isLayersChanged", "isPageLayerChanged", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "viewport", "isViewportChanged", "boxInfo", "isCurrentBoxInfoChanged", "holder", "position", "item", "onBindViewHolder", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "viewHolder", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "getDragItem", "m", "l", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "u", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "v", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "w", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getViewport", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setViewport", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "x", "getCurrentBoxInfo", "setCurrentBoxInfo", "currentBoxInfo", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "ItemViewHolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLayerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayerAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/LayerAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,198:1\n1#2:199\n350#3,7:200\n350#3,7:207\n*S KotlinDebug\n*F\n+ 1 LayerAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/LayerAdapter\n*L\n51#1:200,7\n60#1:207,7\n*E\n"})
/* loaded from: classes9.dex */
public final class LayerAdapter extends BaseSelectableQuickAdapter<LayerInfo, DataBindingHolder<ItemLayerBinding>> implements DragTouchCallback.DragAdapter<LayerInfo> {

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public PageInfo pageInfo;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public BoxInfo viewport;

    /* renamed from: x, reason: from kotlin metadata */
    @Nullable
    public BoxInfo currentBoxInfo;

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\b\u0012\u0004\u0012\u00020\u00040\u0003B\u0019\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\u001a\u0010\r\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0016R\u0017\u0010\u0012\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;", "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;", "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "", "isCurrentlyActive", "", "showDragState", "getData", "show", "showMergePreview", "I", "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;", "binding", "J", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "lastActive", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class ItemViewHolder extends DataBindingHolder<ItemLayerBinding> implements DragTouchCallback.DragItem<LayerInfo> {

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public final ItemLayerBinding binding;

        /* renamed from: J, reason: from kotlin metadata */
        public boolean lastActive;

        /* renamed from: K */
        public final /* synthetic */ LayerAdapter f59570K;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ItemViewHolder(@NotNull LayerAdapter layerAdapter, @NotNull ViewGroup parent, ItemLayerBinding binding) {
            super(binding);
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f59570K = layerAdapter;
            this.binding = binding;
        }

        @Override // com.chad.library.adapter4.viewholder.DataBindingHolder
        @NotNull
        public final ItemLayerBinding getBinding() {
            return this.binding;
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        public void showDragState(@NotNull RecyclerView.ViewHolder holder, boolean isCurrentlyActive) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            DragTouchCallback.INSTANCE.setItemViewAlpha(holder, isCurrentlyActive);
            if (this.lastActive == isCurrentlyActive) {
                return;
            }
            this.lastActive = isCurrentlyActive;
            if (this.binding.contentContainer.isSelected()) {
                return;
            }
            if (isCurrentlyActive) {
                this.binding.contentLayout.setBackgroundResource(C10651R.drawable.bg_layer_start_drag);
            } else {
                this.binding.contentLayout.setBackgroundResource(C10651R.drawable.bg_layer);
            }
        }

        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        public void showMergePreview(@Nullable RecyclerView.ViewHolder holder, boolean show) {
            if (show) {
                this.binding.flyImage.setBackgroundResource(C10651R.drawable.bg_layer_image_merge);
                this.binding.contentLayout.setBackgroundResource(C10651R.drawable.bg_layer_merge);
            } else {
                this.binding.contentLayout.setBackgroundResource(C10651R.drawable.bg_layer);
                this.binding.flyImage.setBackground(null);
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragItem
        @NotNull
        public LayerInfo getData() {
            LayerInfo model = this.binding.getModel();
            Intrinsics.checkNotNull(model);
            return model;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ ItemViewHolder(com.onyx.galaxy.note.editor.view.adapter.LayerAdapter r1, android.view.ViewGroup r2, com.onyx.galaxy.note.databinding.ItemLayerBinding r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
            /*
                r0 = this;
                r4 = r4 & 2
                if (r4 == 0) goto L16
                android.content.Context r3 = r1.getContext()
                android.view.LayoutInflater r3 = android.view.LayoutInflater.from(r3)
                r4 = 0
                com.onyx.galaxy.note.databinding.ItemLayerBinding r3 = com.onyx.galaxy.note.databinding.ItemLayerBinding.inflate(r3, r2, r4)
                java.lang.String r4 = "inflate(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            L16:
                r0.<init>(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.adapter.LayerAdapter.ItemViewHolder.<init>(com.onyx.galaxy.note.editor.view.adapter.LayerAdapter, android.view.ViewGroup, com.onyx.galaxy.note.databinding.ItemLayerBinding, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.LayerAdapter$a */
    /* loaded from: classes9.dex */
    public static final class C12278a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ DataBindingHolder<ItemLayerBinding> f59571e;

        public C12278a(DataBindingHolder<ItemLayerBinding> dataBindingHolder) {
            this.f59571e = dataBindingHolder;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull RenderNotePageThumbnailAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f59571e.getBinding().image.setImageBitmap(it2.getBitmap());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.adapter.LayerAdapter$b */
    /* loaded from: classes9.dex */
    public static final class C12279b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ DataBindingHolder<ItemLayerBinding> f59572e;

        public C12279b(DataBindingHolder<ItemLayerBinding> dataBindingHolder) {
            this.f59572e = dataBindingHolder;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DrawViewportLayerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f59572e.getBinding().image.setImageBitmap(it2.getBitmap());
        }
    }

    public LayerAdapter(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        this.pageInfo = new PageInfo();
        this.viewport = new BoxInfo();
    }

    @Nullable
    public final BoxInfo getCurrentBoxInfo() {
        return this.currentBoxInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onyx.galaxy.note.category.view.itemtouchcallback.DragTouchCallback.DragAdapter
    @NotNull
    public DragTouchCallback.DragItem<LayerInfo> getDragItem(@NotNull RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return (DragTouchCallback.DragItem) viewHolder;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @Nullable
    public final String getLayerName(@NotNull LayerInfo layerInfo) {
        Intrinsics.checkNotNullParameter(layerInfo, "layerInfo");
        String name = layerInfo.getName();
        return name == null ? ResManager.INSTANCE.getString(C10651R.string.default_layer_name_format, NotePageInfoUtils.INSTANCE.getLayerName(layerInfo.getId())) : name;
    }

    @NotNull
    public final PageInfo getPageInfo() {
        return this.pageInfo;
    }

    @NotNull
    public final BoxInfo getViewport() {
        return this.viewport;
    }

    public final boolean isCurrentBoxInfoChanged(@Nullable BoxInfo boxInfo) {
        String id = boxInfo != null ? boxInfo.getId() : null;
        return !Intrinsics.areEqual(id, this.currentBoxInfo != null ? r1.getId() : null);
    }

    public final boolean isLayersChanged(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return pageInfo.getLayerList().size() != getItemCount();
    }

    public final boolean isPageLayerChanged(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        return (Intrinsics.areEqual(getPageInfo(), pageInfo) && pageInfo.getLayerList().size() == getItemCount()) ? false : true;
    }

    public final boolean isViewportChanged(@NotNull BoxInfo viewport) {
        Intrinsics.checkNotNullParameter(viewport, "viewport");
        return (((viewport.getActualScale() > this.viewport.getActualScale() ? 1 : (viewport.getActualScale() == this.viewport.getActualScale() ? 0 : -1)) == 0) && Intrinsics.areEqual(viewport.getBox(), this.viewport.getBox())) ? false : true;
    }

    /* renamed from: l */
    public final void m47623l(LayerInfo item, DataBindingHolder<ItemLayerBinding> holder) {
        if (!EditorBundleKt.getUiFeature(this.editorBundle).supportDrawPageLayer()) {
            new DrawViewportLayerAction(this.editorBundle, item.getId()).build().doOnNext(new C12279b(holder)).subscribe();
        } else {
            EditorBundle editorBundle = this.editorBundle;
            new DrawNotePageLayerAction(editorBundle, EditorBundleKt.currentPageIndex(editorBundle), item.getId()).build().doOnNext(new C12278a(holder)).subscribe();
        }
    }

    /* renamed from: m */
    public final void m47624m(int layerId) {
        Iterator<LayerInfo> it2 = getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else {
                if (it2.next().getId() == layerId) {
                    break;
                } else {
                    i++;
                }
            }
        }
        if (i < 0) {
            return;
        }
        getRecyclerView().scrollToPosition(i);
    }

    public final void scrollToCurrentLayer() {
        m47624m(this.pageInfo.getCurrentLayerId());
    }

    public final void selectLayer(int layerId) {
        Object obj;
        Iterator<T> it2 = this.pageInfo.getLayerList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (((LayerInfo) obj).getId() == layerId) {
                    break;
                }
            }
        }
        LayerInfo layerInfo = (LayerInfo) obj;
        if (layerInfo == null) {
            return;
        }
        this.pageInfo.setCurrentLayerId(layerInfo.getId());
        notifyItemRangeChanged(0, getItemCount());
    }

    public final void setCurrentBoxInfo(@Nullable BoxInfo boxInfo) {
        this.currentBoxInfo = boxInfo;
    }

    public final void setPageInfo(@NotNull PageInfo pageInfo) {
        List reversed;
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        this.pageInfo = pageInfo;
        reversed = CollectionsKt___CollectionsKt.reversed(pageInfo.getLayerList());
        submitList(reversed);
    }

    public final void setViewport(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.viewport = boxInfo;
    }

    public final void updateCurrentLayer() {
        int currentLayerId = this.pageInfo.getCurrentLayerId();
        Iterator<LayerInfo> it2 = getItems().iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            } else {
                if (it2.next().getId() == currentLayerId) {
                    break;
                } else {
                    i++;
                }
            }
        }
        notifyItemChanged(i);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull DataBindingHolder<ItemLayerBinding> holder, int position, @Nullable LayerInfo item) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        item.setName(getLayerName(item));
        holder.getBinding().setModel(item);
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().checkbox, getSelectionMode());
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().lock, !getSelectionMode());
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().show, !getSelectionMode());
        ViewKt.setViewVisibleOrInvisible(holder.getBinding().more, !getSelectionMode());
        holder.getBinding().checkbox.setChecked(isItemSelected(item));
        TintImageView tintImageView = holder.getBinding().lock;
        if (item.getLock()) {
            i = C10651R.drawable.ic_layer_lock;
        } else {
            i = C10651R.drawable.ic_layer_unlock;
        }
        tintImageView.setImageResource(i);
        TintImageView tintImageView2 = holder.getBinding().show;
        if (item.getShow()) {
            i2 = C10651R.drawable.ic_layer_show;
        } else {
            i2 = C10651R.drawable.ic_layer_hidden;
        }
        tintImageView2.setImageResource(i2);
        holder.getBinding().contentLayout.setSelected(this.pageInfo.getCurrentLayerId() == item.getId());
        holder.getBinding().image.setImageDrawable(null);
        m47623l(item, holder);
        holder.getBinding().executePendingBindings();
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemLayerBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new ItemViewHolder(this, parent, null, 2, null);
    }
}
