package com.chad.library.adapter4;

import android.content.Context;
import android.util.SparseArray;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.bcel.internal.Constants;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003:\u0003012B\u0017\u0012\u000e\b\u0002\u0010-\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012¢\u0006\u0004\b.\u0010/J \u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014J)\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00018\u0000H\u0014¢\u0006\u0004\b\u0010\u0010\u0011J7\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00018\u00002\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0012H\u0014¢\u0006\u0004\b\u0010\u0010\u0014J2\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000\"\b\b\u0001\u0010\u0015*\u00020\u00042\u0006\u0010\u0016\u001a\u00020\t2\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0017J\u001c\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001aJ\u001e\u0010\u001d\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012H\u0014J\u0010\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u0004H\u0016J\u0010\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u0004H\u0016J\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u0004H\u0016J\u0010\u0010\"\u001a\u00020!2\u0006\u0010\f\u001a\u00020\u0004H\u0016J\u0010\u0010$\u001a\u00020!2\u0006\u0010#\u001a\u00020\tH\u0016J\u001e\u0010%\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00172\u0006\u0010\f\u001a\u00020\u0004H\u0002R&\u0010)\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u00170&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u001e\u0010,\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+¨\u00063"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseMultiItemAdapter;", "", "T", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/content/Context;", "context", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "holder", "position", "item", "", "onBindViewHolder", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V", "", "payloads", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V", "V", "itemViewType", "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addItemType", "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnItemViewTypeListener;", "onItemViewType", "list", "getItemViewType", "onViewAttachedToWindow", "onViewDetachedFromWindow", "onViewRecycled", "", "onFailedToRecycleView", "itemType", "isFullSpanItem", "l", "Landroid/util/SparseArray;", "r", "Landroid/util/SparseArray;", "typeViewHolders", "s", "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnItemViewTypeListener;", "onItemViewTypeListener", FirebaseAnalytics.Param.ITEMS, Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "OnItemViewTypeListener", "OnMultiItem", "OnMultiItemAdapterListener", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes4.dex */
public abstract class BaseMultiItemAdapter<T> extends BaseQuickAdapter<T, RecyclerView.ViewHolder> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final SparseArray<OnMultiItemAdapterListener<T, RecyclerView.ViewHolder>> typeViewHolders;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public OnItemViewTypeListener<T> onItemViewTypeListener;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\bæ\u0080\u0001\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0007H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnItemViewTypeListener;", "T", "", "onItemViewType", "", "position", "list", "", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public interface OnItemViewTypeListener<T> {
        int onItemViewType(int position, @NotNull List<? extends T> list);
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u0001*\b\b\u0002\u0010\u0004*\u00020\u00032\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0005B\u0007¢\u0006\u0004\b\u0016\u0010\u0017R0\u0010\u000e\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0007\u0018\u00010\u00068\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0019\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItem;", "", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "V", "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "Ljava/lang/ref/WeakReference;", "Lcom/chad/library/adapter4/BaseMultiItemAdapter;", "a", "Ljava/lang/ref/WeakReference;", "getWeakA$com_github_CymChad_brvah", "()Ljava/lang/ref/WeakReference;", "setWeakA$com_github_CymChad_brvah", "(Ljava/lang/ref/WeakReference;)V", "weakA", "getAdapter", "()Lcom/chad/library/adapter4/BaseMultiItemAdapter;", "adapter", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "()V", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes4.dex */
    public static abstract class OnMultiItem<T, V extends RecyclerView.ViewHolder> implements OnMultiItemAdapterListener<T, V> {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public WeakReference<BaseMultiItemAdapter<T>> weakA;

        @Nullable
        public final BaseMultiItemAdapter<T> getAdapter() {
            WeakReference<BaseMultiItemAdapter<T>> weakReference = this.weakA;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Nullable
        public final Context getContext() {
            BaseMultiItemAdapter<T> baseMultiItemAdapter;
            WeakReference<BaseMultiItemAdapter<T>> weakReference = this.weakA;
            if (weakReference == null || (baseMultiItemAdapter = weakReference.get()) == null) {
                return null;
            }
            return baseMultiItemAdapter.getContext();
        }

        @Nullable
        public final WeakReference<BaseMultiItemAdapter<T>> getWeakA$com_github_CymChad_brvah() {
            return this.weakA;
        }

        public final void setWeakA$com_github_CymChad_brvah(@Nullable WeakReference<BaseMultiItemAdapter<T>> weakReference) {
            this.weakA = weakReference;
        }
    }

    @Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u0000*\u0004\b\u0001\u0010\u0001*\b\b\u0002\u0010\u0002*\u00020\u00032\u00020\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J'\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u00022\u0006\u0010\f\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00018\u0001H&¢\u0006\u0002\u0010\u000eJ5\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u00022\u0006\u0010\f\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00018\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010H\u0016¢\u0006\u0002\u0010\u0011J%\u0010\u0012\u001a\u00028\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\bH&¢\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\u001c\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001dÀ\u0006\u0001"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;", "T", "V", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", "isFullSpanItem", "", "itemType", "", "onBind", "", "holder", "position", "item", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V", "payloads", "", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V", "onCreate", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onFailedToRecycleView", "onViewAttachedToWindow", "onViewDetachedFromWindow", "onViewRecycled", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public interface OnMultiItemAdapterListener<T, V extends RecyclerView.ViewHolder> {
        default boolean isFullSpanItem(int itemType) {
            return false;
        }

        void onBind(@NotNull V holder, int position, @Nullable T item);

        default void onBind(@NotNull V holder, int position, @Nullable T item, @NotNull List<? extends Object> payloads) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            onBind(holder, position, item);
        }

        @NotNull
        V onCreate(@NotNull Context context, @NotNull ViewGroup parent, int viewType);

        default boolean onFailedToRecycleView(@NotNull RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            return false;
        }

        default void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
        }

        default void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
        }

        default void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
            Intrinsics.checkNotNullParameter(holder, "holder");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BaseMultiItemAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @NotNull
    public final <V extends RecyclerView.ViewHolder> BaseMultiItemAdapter<T> addItemType(int itemViewType, @NotNull OnMultiItemAdapterListener<T, V> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (listener instanceof OnMultiItem) {
            ((OnMultiItem) listener).setWeakA$com_github_CymChad_brvah(new WeakReference<>(this));
        }
        this.typeViewHolders.put(itemViewType, listener);
        return this;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public int getItemViewType(int position, @NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        OnItemViewTypeListener<T> onItemViewTypeListener = this.onItemViewTypeListener;
        return onItemViewTypeListener != null ? onItemViewTypeListener.onItemViewType(position, list) : super.getItemViewType(position, list);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public boolean isFullSpanItem(int itemType) {
        if (super.isFullSpanItem(itemType)) {
            return true;
        }
        OnMultiItemAdapterListener<T, RecyclerView.ViewHolder> onMultiItemAdapterListener = this.typeViewHolders.get(itemType);
        return onMultiItemAdapterListener != null && onMultiItemAdapterListener.isFullSpanItem(itemType);
    }

    /* renamed from: l */
    public final OnMultiItemAdapterListener<T, RecyclerView.ViewHolder> m9676l(RecyclerView.ViewHolder holder) {
        Object tag = holder.itemView.getTag(C2140R.id.BaseQuickAdapter_key_multi);
        if (tag instanceof OnMultiItemAdapterListener) {
            return (OnMultiItemAdapterListener) tag;
        }
        return null;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int position, @Nullable T item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        OnMultiItemAdapterListener<T, RecyclerView.ViewHolder> m9676l = m9676l(holder);
        if (m9676l != null) {
            m9676l.onBind(holder, position, item);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        OnMultiItemAdapterListener<T, RecyclerView.ViewHolder> onMultiItemAdapterListener = this.typeViewHolders.get(viewType);
        if (onMultiItemAdapterListener != null) {
            Context context2 = parent.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "parent.context");
            RecyclerView.ViewHolder onCreate = onMultiItemAdapterListener.onCreate(context2, parent, viewType);
            onCreate.itemView.setTag(C2140R.id.BaseQuickAdapter_key_multi, onMultiItemAdapterListener);
            return onCreate;
        }
        throw new IllegalArgumentException("ViewType: " + viewType + " not found onViewHolderListener，please use addItemType() first!");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        OnMultiItemAdapterListener<T, RecyclerView.ViewHolder> m9676l = m9676l(holder);
        if (m9676l != null) {
            return m9676l.onFailedToRecycleView(holder);
        }
        return false;
    }

    @NotNull
    public final BaseMultiItemAdapter<T> onItemViewType(@Nullable OnItemViewTypeListener<T> listener) {
        this.onItemViewTypeListener = listener;
        return this;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        OnMultiItemAdapterListener<T, RecyclerView.ViewHolder> m9676l = m9676l(holder);
        if (m9676l != null) {
            m9676l.onViewAttachedToWindow(holder);
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewDetachedFromWindow(holder);
        OnMultiItemAdapterListener<T, RecyclerView.ViewHolder> m9676l = m9676l(holder);
        if (m9676l != null) {
            m9676l.onViewDetachedFromWindow(holder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(@NotNull RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled(holder);
        OnMultiItemAdapterListener<T, RecyclerView.ViewHolder> m9676l = m9676l(holder);
        if (m9676l != null) {
            m9676l.onViewRecycled(holder);
        }
    }

    public /* synthetic */ BaseMultiItemAdapter(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int position, @Nullable T item, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, position, (int) item);
            return;
        }
        OnMultiItemAdapterListener<T, RecyclerView.ViewHolder> m9676l = m9676l(holder);
        if (m9676l != null) {
            m9676l.onBind(holder, position, item, payloads);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseMultiItemAdapter(@NotNull List<? extends T> items) {
        super(items);
        Intrinsics.checkNotNullParameter(items, "items");
        this.typeViewHolders = new SparseArray<>(1);
    }
}
