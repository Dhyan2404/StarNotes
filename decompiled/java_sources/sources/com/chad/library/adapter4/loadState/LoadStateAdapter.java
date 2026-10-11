package com.chad.library.adapter4.loadState;

import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.chad.library.adapter4.fullspan.FullSpanAdapterType;
import com.chad.library.adapter4.loadState.LoadState;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u0004:\u00019B\u0007¢\u0006\u0004\b7\u00108J\u001d\u0010\t\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ+\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u00072\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010¢\u0006\u0004\b\u000e\u0010\u0013J\u000e\u0010\u0014\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007J\u0006\u0010\u0015\u001a\u00020\u0007J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0016H\u0017J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0016H\u0017J\u001f\u0010\t\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH&¢\u0006\u0004\b\t\u0010\u001cJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u001b\u001a\u00020\u001aH&¢\u0006\u0004\b\u000e\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0010\u0010 \u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u000e\u0010#\u001a\u00020\r2\u0006\u0010\"\u001a\u00020!J\u000e\u0010$\u001a\u00020\r2\u0006\u0010\"\u001a\u00020!R*\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R(\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\u0010+\u001a\u0004\u0018\u00010\u00168\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R$\u00104\u001a\u0012\u0012\u0004\u0012\u00020!00j\b\u0012\u0004\u0012\u00020!`18\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0011\u00105\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b5\u00106¨\u0006:"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/LoadStateAdapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/chad/library/adapter4/fullspan/FullSpanAdapterType;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "position", "", "onBindViewHolder", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V", "", "", "payloads", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V", "getItemViewType", "getItemCount", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "onAttachedToRecyclerView", "onDetachedFromRecyclerView", "Lcom/chad/library/adapter4/loadState/LoadState;", "loadState", "(Landroid/view/ViewGroup;Lcom/chad/library/adapter4/loadState/LoadState;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/chad/library/adapter4/loadState/LoadState;)V", "getStateViewType", "", "displayLoadStateAsItem", "Lcom/chad/library/adapter4/loadState/LoadStateAdapter$LoadStateListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addLoadStateListener", "removeLoadStateListener", "d", "Lcom/chad/library/adapter4/loadState/LoadState;", "getLoadState", "()Lcom/chad/library/adapter4/loadState/LoadState;", "setLoadState", "(Lcom/chad/library/adapter4/loadState/LoadState;)V", "<set-?>", "e", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", C6997f.f39671c, "Ljava/util/ArrayList;", "loadStateListeners", "isLoading", Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "LoadStateListener", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nLoadStateAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadStateAdapter.kt\ncom/chad/library/adapter4/loadState/LoadStateAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,146:1\n1855#2,2:147\n*S KotlinDebug\n*F\n+ 1 LoadStateAdapter.kt\ncom/chad/library/adapter4/loadState/LoadStateAdapter\n*L\n40#1:147,2\n*E\n"})
/* loaded from: classes4.dex */
public abstract class LoadStateAdapter<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> implements FullSpanAdapterType {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public RecyclerView recyclerView;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public LoadState loadState = LoadState.None.INSTANCE;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<LoadStateListener> loadStateListeners = new ArrayList<>(0);

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/LoadStateAdapter$LoadStateListener;", "", "loadState", "", "previousState", "Lcom/chad/library/adapter4/loadState/LoadState;", "currentState", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public interface LoadStateListener {
        void loadState(@NotNull LoadState previousState, @NotNull LoadState currentState);
    }

    public final void addLoadStateListener(@NotNull LoadStateListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.loadStateListeners.add(listener);
    }

    public boolean displayLoadStateAsItem(@NotNull LoadState loadState) {
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return (loadState instanceof LoadState.Loading) || (loadState instanceof LoadState.Error);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return displayLoadStateAsItem(this.loadState) ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int position) {
        return getStateViewType(this.loadState);
    }

    @NotNull
    public final LoadState getLoadState() {
        return this.loadState;
    }

    @Nullable
    public final RecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    public int getStateViewType(@NotNull LoadState loadState) {
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return 0;
    }

    public final boolean isLoading() {
        return Intrinsics.areEqual(this.loadState, LoadState.Loading.INSTANCE);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.recyclerView = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NotNull VH holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        onBindViewHolder((LoadStateAdapter<VH>) holder, this.loadState);
    }

    public abstract void onBindViewHolder(@NotNull VH holder, @NotNull LoadState loadState);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public final VH onCreateViewHolder(@NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return onCreateViewHolder(parent, this.loadState);
    }

    @NotNull
    public abstract VH onCreateViewHolder(@NotNull ViewGroup parent, @NotNull LoadState loadState);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.recyclerView = null;
    }

    public final void removeLoadStateListener(@NotNull LoadStateListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.loadStateListeners.remove(listener);
    }

    public final void setLoadState(@NotNull LoadState loadState) {
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        if (Intrinsics.areEqual(this.loadState, loadState)) {
            return;
        }
        LoadState loadState2 = this.loadState;
        boolean displayLoadStateAsItem = displayLoadStateAsItem(loadState2);
        boolean displayLoadStateAsItem2 = displayLoadStateAsItem(loadState);
        if (displayLoadStateAsItem && !displayLoadStateAsItem2) {
            notifyItemRemoved(0);
        } else if (displayLoadStateAsItem2 && !displayLoadStateAsItem) {
            notifyItemInserted(0);
        } else if (displayLoadStateAsItem && displayLoadStateAsItem2) {
            notifyItemChanged(0);
        }
        this.loadState = loadState;
        Iterator<T> it2 = this.loadStateListeners.iterator();
        while (it2.hasNext()) {
            ((LoadStateListener) it2.next()).loadState(loadState2, loadState);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NotNull VH holder, int position, @NotNull List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        super.onBindViewHolder(holder, position, payloads);
    }
}
