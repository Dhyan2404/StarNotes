package com.chad.library.adapter4;

import androidx.recyclerview.widget.AdapterListUpdateCallback;
import androidx.recyclerview.widget.AsyncDifferConfig;
import androidx.recyclerview.widget.AsyncListDiffer;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.chad.library.adapter4.BaseDifferAdapter;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005B#\u0012\f\u00101\u001a\b\u0012\u0004\u0012\u00028\u000000\u0012\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b2\u00103B\u0017\b\u0016\u0012\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u000004¢\u0006\u0004\b2\u00106B%\b\u0016\u0012\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u000004\u0012\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b2\u00107B\u0017\b\u0016\u0012\f\u00101\u001a\b\u0012\u0004\u0012\u00028\u000000¢\u0006\u0004\b2\u00108J$\u0010\n\u001a\u00020\t2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0018\u0010\f\u001a\u00020\t2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006H\u0016J \u0010\f\u001a\u00020\t2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ \u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u0016\u0010\u0018\u001a\u00020\t2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J\u001e\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0017\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001a\u0010\u0015J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016J\u0018\u0010 \u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u000fH\u0016J\u0018\u0010!\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u000fH\u0016R\u001a\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R0\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000\u00068F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00069"}, m61528d2 = {"Lcom/chad/library/adapter4/BaseDifferAdapter;", "", "T", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "", "previousList", "currentList", "", "onCurrentListChanged", "list", "submitList", "Ljava/lang/Runnable;", "commitCallback", "", "position", "data", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "(ILjava/lang/Object;)V", "add", "(Ljava/lang/Object;)V", "", "collection", "addAll", "removeAt", SyncConstant.SYNC_ACTION_REMOVE, "Lkotlin/ranges/IntRange;", SessionDescription.f26441q, "removeAtRange", "fromPosition", "toPosition", "swap", BaiduYunConstant.OPERATION_MOVE, "Landroidx/recyclerview/widget/AsyncListDiffer;", "r", "Landroidx/recyclerview/widget/AsyncListDiffer;", "mDiffer", "Landroidx/recyclerview/widget/AsyncListDiffer$ListListener;", "s", "Landroidx/recyclerview/widget/AsyncListDiffer$ListListener;", "mListener", "value", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", FirebaseAnalytics.Param.ITEMS, "Landroidx/recyclerview/widget/AsyncDifferConfig;", AbstractLogger.CONFIG, Constants.CONSTRUCTOR_NAME, "(Landroidx/recyclerview/widget/AsyncDifferConfig;Ljava/util/List;)V", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "diffCallback", "(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V", "(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Ljava/util/List;)V", "(Landroidx/recyclerview/widget/AsyncDifferConfig;)V", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes4.dex */
public abstract class BaseDifferAdapter<T, VH extends RecyclerView.ViewHolder> extends BaseQuickAdapter<T, VH> {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final AsyncListDiffer<T> mDiffer;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final AsyncListDiffer.ListListener<T> mListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseDifferAdapter(@NotNull AsyncDifferConfig<T> config, @NotNull List<? extends T> items) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(items, "items");
        AsyncListDiffer<T> asyncListDiffer = new AsyncListDiffer<>(new AdapterListUpdateCallback(this), config);
        this.mDiffer = asyncListDiffer;
        AsyncListDiffer.ListListener<T> listListener = new AsyncListDiffer.ListListener() { // from class: com.sunia.HTREnginev2.zm
            @Override // androidx.recyclerview.widget.AsyncListDiffer.ListListener
            public final void onCurrentListChanged(List list, List list2) {
                BaseDifferAdapter.m9675m(BaseDifferAdapter.this, list, list2);
            }
        };
        this.mListener = listListener;
        asyncListDiffer.addListListener(listListener);
        asyncListDiffer.submitList(items);
    }

    /* renamed from: m */
    public static final void m9675m(BaseDifferAdapter this$0, List previousList, List currentList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(previousList, "previousList");
        Intrinsics.checkNotNullParameter(currentList, "currentList");
        boolean displayEmptyView = this$0.displayEmptyView(previousList);
        boolean displayEmptyView2 = this$0.displayEmptyView(currentList);
        if (displayEmptyView && !displayEmptyView2) {
            this$0.notifyItemRemoved(0);
            this$0.getRecyclerView().scrollToPosition(0);
        } else if (displayEmptyView2 && !displayEmptyView) {
            this$0.notifyItemInserted(0);
        } else if (displayEmptyView && displayEmptyView2) {
            this$0.notifyItemChanged(0, 0);
        }
        this$0.onCurrentListChanged(previousList, currentList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void add(@NotNull T data) {
        List<? extends T> mutableList;
        Intrinsics.checkNotNullParameter(data, "data");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        mutableList.add(data);
        submitList(mutableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void addAll(@NotNull Collection<? extends T> collection) {
        List<? extends T> mutableList;
        Intrinsics.checkNotNullParameter(collection, "collection");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        mutableList.addAll(collection);
        submitList(mutableList);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public final List<T> getItems() {
        List<T> currentList = this.mDiffer.getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "mDiffer.currentList");
        return currentList;
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void move(int fromPosition, int toPosition) {
        List<? extends T> mutableList;
        if (!(fromPosition >= 0 && fromPosition < getItems().size())) {
            if (!(toPosition >= 0 && toPosition < getItems().size())) {
                return;
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        mutableList.add(toPosition, mutableList.remove(fromPosition));
        submitList(mutableList);
    }

    public void onCurrentListChanged(@NotNull List<? extends T> previousList, @NotNull List<? extends T> currentList) {
        Intrinsics.checkNotNullParameter(previousList, "previousList");
        Intrinsics.checkNotNullParameter(currentList, "currentList");
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void remove(@NotNull T data) {
        List<? extends T> mutableList;
        Intrinsics.checkNotNullParameter(data, "data");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        mutableList.remove(data);
        submitList(mutableList);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void removeAt(int position) {
        List<? extends T> mutableList;
        if (position < getItems().size()) {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
            mutableList.remove(position);
            submitList(mutableList);
        } else {
            throw new IndexOutOfBoundsException("position: " + position + ". size:" + getItems().size());
        }
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void removeAtRange(@NotNull IntRange range) {
        List<? extends T> mutableList;
        Intrinsics.checkNotNullParameter(range, "range");
        if (range.isEmpty()) {
            return;
        }
        if (range.getFirst() >= getItems().size()) {
            throw new IndexOutOfBoundsException("Range first position: " + range.getFirst() + " - last position: " + range.getLast() + ". size:" + getItems().size());
        }
        int size = range.getLast() >= getItems().size() ? getItems().size() - 1 : range.getLast();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        int first = range.getFirst();
        if (first <= size) {
            while (true) {
                mutableList.remove(size);
                if (size == first) {
                    break;
                } else {
                    size--;
                }
            }
        }
        submitList(mutableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void set(int position, @NotNull T data) {
        List<? extends T> mutableList;
        Intrinsics.checkNotNullParameter(data, "data");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        mutableList.set(position, data);
        submitList(mutableList);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public final void setItems(@NotNull List<? extends T> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.mDiffer.submitList(value, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void submitList(@Nullable List<? extends T> list) {
        this.mDiffer.submitList(list, null);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void swap(int fromPosition, int toPosition) {
        List<? extends T> mutableList;
        if (!(fromPosition >= 0 && fromPosition < getItems().size())) {
            if (!(toPosition >= 0 && toPosition < getItems().size())) {
                return;
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
        Collections.swap(mutableList, fromPosition, toPosition);
        submitList(mutableList);
    }

    public final void submitList(@Nullable List<? extends T> list, @Nullable Runnable commitCallback) {
        this.mDiffer.submitList(list, commitCallback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void add(int position, @NotNull T data) {
        List<? extends T> mutableList;
        Intrinsics.checkNotNullParameter(data, "data");
        if (position <= getItems().size() && position >= 0) {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
            mutableList.add(position, data);
            submitList(mutableList);
        } else {
            throw new IndexOutOfBoundsException("position: " + position + ". size:" + getItems().size());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.BaseQuickAdapter
    public void addAll(int position, @NotNull Collection<? extends T> collection) {
        List<? extends T> mutableList;
        Intrinsics.checkNotNullParameter(collection, "collection");
        if (position <= getItems().size() && position >= 0) {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getItems());
            mutableList.addAll(position, collection);
            submitList(mutableList);
        } else {
            throw new IndexOutOfBoundsException("position: " + position + ". size:" + getItems().size());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BaseDifferAdapter(@org.jetbrains.annotations.NotNull androidx.recyclerview.widget.DiffUtil.ItemCallback<T> r2) {
        /*
            r1 = this;
            java.lang.String r0 = "diffCallback"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
            r1.<init>(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chad.library.adapter4.BaseDifferAdapter.<init>(androidx.recyclerview.widget.DiffUtil$ItemCallback):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BaseDifferAdapter(@org.jetbrains.annotations.NotNull androidx.recyclerview.widget.DiffUtil.ItemCallback<T> r2, @org.jetbrains.annotations.NotNull java.util.List<? extends T> r3) {
        /*
            r1 = this;
            java.lang.String r0 = "diffCallback"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "items"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            androidx.recyclerview.widget.AsyncDifferConfig$Builder r0 = new androidx.recyclerview.widget.AsyncDifferConfig$Builder
            r0.<init>(r2)
            androidx.recyclerview.widget.AsyncDifferConfig r2 = r0.build()
            java.lang.String r0 = "Builder(diffCallback).build()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chad.library.adapter4.BaseDifferAdapter.<init>(androidx.recyclerview.widget.DiffUtil$ItemCallback, java.util.List):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BaseDifferAdapter(@org.jetbrains.annotations.NotNull androidx.recyclerview.widget.AsyncDifferConfig<T> r2) {
        /*
            r1 = this;
            java.lang.String r0 = "config"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
            r1.<init>(r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chad.library.adapter4.BaseDifferAdapter.<init>(androidx.recyclerview.widget.AsyncDifferConfig):void");
    }
}
