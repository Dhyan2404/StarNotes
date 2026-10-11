package com.onyx.galaxy.note.editor.view.adapter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.couchbase.lite.internal.core.C4Constants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.glide.GlideApp;
import com.onyx.galaxy.note.editor.view.adapter.BaseSelectableQuickAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00060\u0005B\u0007¢\u0006\u0004\b9\u0010:J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\u000bJ\u0015\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0010\u001a\u00020\u0007J\u0015\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00028\u0000¢\u0006\u0004\b\u0014\u0010\u000fJ\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J/\u0010\u001a\u001a\u00020\u00072\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00010\u00062\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\r\u001a\u0004\u0018\u00018\u0000H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ=\u0010\u001a\u001a\u00020\u00072\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00010\u00062\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\r\u001a\u0004\u0018\u00018\u00002\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00010\u001cH\u0014¢\u0006\u0004\b\u001a\u0010\u001eJ\u001f\u0010!\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\r\u001a\u00028\u0000H\u0004¢\u0006\u0004\b!\u0010\"J\u001f\u0010#\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\r\u001a\u00028\u0000H\u0004¢\u0006\u0004\b#\u0010\"J'\u0010$\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\r\u001a\u00028\u00002\u0006\u0010\u0019\u001a\u00020\u0018H\u0004¢\u0006\u0004\b$\u0010%R$\u0010-\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u0016\u00100\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R*\u00108\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u0006;"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;", "", "T", "Landroidx/databinding/ViewDataBinding;", C4Constants.LogDomain.DATABASE, "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "", "toggleSelectionMode", "enterSelectionMode", "quitSelectionMode", "", "isSelectionMode", "item", "toggleSelectItem", "(Ljava/lang/Object;)V", "toggleSelectAll", Keywords.FUNC_CONTAINS_STRING, "(Ljava/lang/Object;)Z", "model", "onItemClick", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "onViewRecycled", "", "position", "onBindViewHolder", "(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Object;)V", "", "payloads", "(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Object;Ljava/util/List;)V", "Landroid/view/View;", "itemView", "setCheckView", "(Landroid/view/View;Ljava/lang/Object;)V", "loadThumbnail", "bindPageIndexView", "(Landroid/view/View;Ljava/lang/Object;I)V", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "y", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "z", Constants.HASIDCALL_INDEX_SIG, "selectionMode", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "A", "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "getListener", "()Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;", "setListener", "(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public abstract class BasePageListAdapter<T, DB extends ViewDataBinding> extends BaseSwipeAbleDifferAdapter<T, DataBindingHolder<DB>> {

    /* renamed from: A, reason: from kotlin metadata */
    @Nullable
    public BaseSelectableQuickAdapter.ItemSelectionListener<T> listener;

    /* renamed from: y, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* renamed from: z, reason: from kotlin metadata */
    public boolean selectionMode;

    /* JADX WARN: Multi-variable type inference failed */
    public BasePageListAdapter() {
        super(null, 1, 0 == true ? 1 : 0);
        this.selectionMode = true;
    }

    public final void bindPageIndexView(@NotNull View itemView, @NotNull T item, int position) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(item, "item");
        TextView textView = (TextView) itemView.findViewById(C10651R.id.tv_index);
        if (textView != null) {
            textView.setText(String.valueOf(position + 1));
        }
    }

    public final boolean contains(@NotNull T item) {
        Intrinsics.checkNotNullParameter(item, "item");
        return getSelectedItems().contains(item);
    }

    public final void enterSelectionMode() {
        this.selectionMode = true;
        getSelectedItems().clear();
        notifyItemRangeChanged(0, getItemCount(), Integer.valueOf(C10651R.id.checkbox));
    }

    @Nullable
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @Nullable
    public final BaseSelectableQuickAdapter.ItemSelectionListener<T> getListener() {
        return this.listener;
    }

    /* renamed from: isSelectionMode, reason: from getter */
    public final boolean getSelectionMode() {
        return this.selectionMode;
    }

    public final void loadThumbnail(@NotNull View itemView, @NotNull T item) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(item, "item");
        ImageView imageView = (ImageView) itemView.findViewById(C10651R.id.image);
        if (imageView != null) {
            GlideApp.with(imageView).load((Object) item).diskCacheStrategy(DiskCacheStrategy.NONE).into(imageView);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, Object obj) {
        onBindViewHolder((DataBindingHolder) viewHolder, i, (int) obj);
    }

    public final void onItemClick(@NotNull T model) {
        Intrinsics.checkNotNullParameter(model, "model");
        toggleSelectItem(model);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ImageView imageView = (ImageView) holder.itemView.findViewById(C10651R.id.image);
        if (imageView != null) {
            GlideApp.with(imageView).clear(imageView);
        }
        super.onViewRecycled(holder);
    }

    public final void quitSelectionMode() {
        this.selectionMode = false;
        getSelectedItems().clear();
        notifyItemRangeChanged(0, getItemCount(), Integer.valueOf(C10651R.id.checkbox));
    }

    public final void setCheckView(@NotNull View itemView, @NotNull T item) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(item, "item");
        CheckBox checkBox = (CheckBox) itemView.findViewById(C10651R.id.checkbox);
        if (checkBox != null) {
            checkBox.setChecked(getSelectedItems().contains(item));
        }
    }

    public final void setEditorBundle(@Nullable EditorBundle editorBundle) {
        this.editorBundle = editorBundle;
    }

    public final void setListener(@Nullable BaseSelectableQuickAdapter.ItemSelectionListener<T> itemSelectionListener) {
        this.listener = itemSelectionListener;
    }

    public final void toggleSelectAll() {
        if (getSelectedItems().size() == getItems().size()) {
            getSelectedItems().clear();
        } else {
            getSelectedItems().clear();
            getSelectedItems().addAll(getItems());
        }
        notifyItemRangeChanged(0, getItems().size(), Integer.valueOf(C10651R.id.checkbox));
        Function1<Boolean, Unit> selectChangeCallback = getSelectChangeCallback();
        if (selectChangeCallback != null) {
            selectChangeCallback.invoke(Boolean.valueOf(getSelectedItems().size() == getItems().size()));
        }
    }

    public final void toggleSelectItem(@NotNull T item) {
        Intrinsics.checkNotNullParameter(item, "item");
        int indexOf = getItems().indexOf(item);
        if (indexOf < 0) {
            return;
        }
        if (!getSelectedItems().remove(item)) {
            getSelectedItems().add(item);
        }
        notifyItemChanged(indexOf, Integer.valueOf(C10651R.id.checkbox));
        Function1<Boolean, Unit> selectChangeCallback = getSelectChangeCallback();
        if (selectChangeCallback != null) {
            selectChangeCallback.invoke(Boolean.valueOf(getSelectedItems().size() == getItems().size()));
        }
    }

    public final void toggleSelectionMode() {
        if (this.selectionMode) {
            quitSelectionMode();
        } else {
            enterSelectionMode();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, Object obj, List list) {
        onBindViewHolder((DataBindingHolder) viewHolder, i, (int) obj, (List<? extends Object>) list);
    }

    public void onBindViewHolder(@NotNull DataBindingHolder<DB> holder, int position, @Nullable T item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (item == null) {
            return;
        }
        View itemView = holder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        bindPageIndexView(itemView, item, position);
        View itemView2 = holder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView2, "itemView");
        setCheckView(itemView2, item);
        View itemView3 = holder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView3, "itemView");
        loadThumbnail(itemView3, item);
    }

    public void onBindViewHolder(@NotNull DataBindingHolder<DB> holder, int position, @Nullable T item, @NotNull List<? extends Object> payloads) {
        Object first;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (item == null) {
            return;
        }
        first = CollectionsKt___CollectionsKt.first(payloads);
        if (Intrinsics.areEqual(first, BaseSwipeAbleDifferAdapter.PAY_LOAD_KEY_SWIPE)) {
            View itemView = holder.itemView;
            Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
            setCheckView(itemView, item);
            return;
        }
        super.onBindViewHolder((BasePageListAdapter<T, DB>) holder, position, (int) item, payloads);
    }
}
