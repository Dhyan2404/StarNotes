package com.chad.library.adapter4;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00028\u00010\u0005B\u0013\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b,\u0010+J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00028\u00012\b\u0010\u0007\u001a\u0004\u0018\u00018\u0000H$¢\u0006\u0004\b\t\u0010\nJ/\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00028\u00012\b\u0010\u0007\u001a\u0004\u0018\u00018\u00002\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00010\u000bH\u0016¢\u0006\u0004\b\t\u0010\rJ)\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001H\u0004¢\u0006\u0004\b\t\u0010\u0010J7\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00010\u000bH\u0004¢\u0006\u0004\b\t\u0010\u0011J\u0016\u0010\u0013\u001a\u00020\u000e2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00010\u000bH\u0004J!\u0010\u0016\u001a\u00020\b2\b\u0010\u0014\u001a\u0004\u0018\u00018\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0019\u001a\u00020\b2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000bH\u0016J\u0010\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0001H\u0016J\u0018\u0010\u001b\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0001H\u0016J\u0016\u0010\u001e\u001a\u00020\b2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00010\u001cH\u0016J\u001e\u0010\u001e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00010\u001cH\u0016J\u0010\u0010\u001f\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0001H\u0016J\u0010\u0010\"\u001a\u00020\b2\u0006\u0010!\u001a\u00020 H\u0016J\u0010\u0010#\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0019\u0010$\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0001H\u0096\u0002R\u0018\u0010'\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R(\u0010\u0007\u001a\u0004\u0018\u00018\u00002\b\u0010(\u001a\u0004\u0018\u00018\u00008F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b)\u0010*\"\u0004\b\u0016\u0010+¨\u0006-"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseSingleItemAdapter;", "", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "holder", "item", "", "onBindViewHolder", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V", "", "payloads", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;Ljava/util/List;)V", "", "position", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V", FirebaseAnalytics.Param.ITEMS, "getItemCount", "t", "payload", "setItem", "(Ljava/lang/Object;Ljava/lang/Object;)V", "list", "submitList", "data", "add", "", "collection", "addAll", SyncConstant.SYNC_ACTION_REMOVE, "Lkotlin/ranges/IntRange;", SessionDescription.f26441q, "removeAtRange", "removeAt", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "r", Constants.OBJECT_SIG, "mItem", "value", "getItem", "()Ljava/lang/Object;", "(Ljava/lang/Object;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes4.dex */
public abstract class BaseSingleItemAdapter<T, VH extends RecyclerView.ViewHolder> extends BaseQuickAdapter<Object, VH> {

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public T mItem;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BaseSingleItemAdapter() {
        /*
            r2 = this;
            r0 = 0
            r1 = 1
            r2.<init>(r0, r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chad.library.adapter4.BaseSingleItemAdapter.<init>():void");
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void add(@NotNull Object data) {
        Intrinsics.checkNotNullParameter(data, "data");
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void addAll(@NotNull Collection<? extends Object> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        throw new RuntimeException("Please use setItem()");
    }

    @Nullable
    public final T getItem() {
        return this.mItem;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public final int getItemCount(@NotNull List<? extends Object> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return 1;
    }

    public abstract void onBindViewHolder(@NotNull VH holder, @Nullable T item);

    public void onBindViewHolder(@NotNull VH holder, @Nullable T item, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        onBindViewHolder((BaseSingleItemAdapter<T, VH>) holder, (VH) item);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void remove(@NotNull Object data) {
        Intrinsics.checkNotNullParameter(data, "data");
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void removeAt(int position) {
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void removeAtRange(@NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(range, "range");
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void set(int position, @NotNull Object data) {
        Intrinsics.checkNotNullParameter(data, "data");
        throw new RuntimeException("Please use setItem()");
    }

    public final void setItem(@Nullable T t, @Nullable Object payload) {
        this.mItem = t;
        notifyItemChanged(0, payload);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void submitList(@Nullable List<? extends Object> list) {
        throw new RuntimeException("Please use setItem()");
    }

    public /* synthetic */ BaseSingleItemAdapter(Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : obj);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void add(int position, @NotNull Object data) {
        Intrinsics.checkNotNullParameter(data, "data");
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void addAll(int position, @NotNull Collection<? extends Object> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        throw new RuntimeException("Please use setItem()");
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public final void onBindViewHolder(@NotNull VH holder, int position, @Nullable Object item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        onBindViewHolder((BaseSingleItemAdapter<T, VH>) holder, (VH) this.mItem);
    }

    public BaseSingleItemAdapter(@Nullable T t) {
        super(null, 1, null);
        this.mItem = t;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public final void onBindViewHolder(@NotNull VH holder, int position, @Nullable Object item, @NotNull List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        onBindViewHolder((BaseSingleItemAdapter<T, VH>) holder, (VH) this.mItem, payloads);
    }

    public final void setItem(@Nullable T t) {
        this.mItem = t;
        notifyItemChanged(0);
    }
}
