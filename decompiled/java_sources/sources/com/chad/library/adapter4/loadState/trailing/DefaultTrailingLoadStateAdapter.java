package com.chad.library.adapter4.loadState.trailing;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.C2140R;
import com.chad.library.adapter4.loadState.LoadState;
import com.chad.library.adapter4.loadState.trailing.DefaultTrailingLoadStateAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\tH\u0016J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u0011"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;", "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;", "Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;", "isLoadEndDisplay", "", "(Z)V", "getStateViewType", "", "loadState", "Lcom/chad/library/adapter4/loadState/LoadState;", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "TrailingLoadStateVH", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes4.dex */
public final class DefaultTrailingLoadStateAdapter extends TrailingLoadStateAdapter<TrailingLoadStateVH> {
    public DefaultTrailingLoadStateAdapter() {
        this(false, 1, null);
    }

    /* renamed from: m */
    public static final void m9696m(DefaultTrailingLoadStateAdapter this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.invokeFailRetry();
    }

    /* renamed from: n */
    public static final void m9697n(DefaultTrailingLoadStateAdapter this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.invokeLoadMore();
    }

    @Override // com.chad.library.adapter4.loadState.LoadStateAdapter
    public int getStateViewType(@NotNull LoadState loadState) {
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return C2140R.layout.brvah_trailing_load_more;
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006R\u0017\u0010\u0010\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006¨\u0006\u0016"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "H", "Landroid/view/View;", "getLoadCompleteView", "()Landroid/view/View;", "loadCompleteView", "I", "getLoadingView", "loadingView", "J", "getLoadFailView", "loadFailView", "K", "getLoadEndView", "loadEndView", "Landroid/view/ViewGroup;", "parent", "view", Constants.CONSTRUCTOR_NAME, "(Landroid/view/ViewGroup;Landroid/view/View;)V", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes4.dex */
    public static final class TrailingLoadStateVH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final View loadCompleteView;

        /* renamed from: I, reason: from kotlin metadata */
        @NotNull
        public final View loadingView;

        /* renamed from: J, reason: from kotlin metadata */
        @NotNull
        public final View loadFailView;

        /* renamed from: K, reason: from kotlin metadata */
        @NotNull
        public final View loadEndView;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ TrailingLoadStateVH(android.view.ViewGroup r1, android.view.View r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
            /*
                r0 = this;
                r3 = r3 & 2
                if (r3 == 0) goto L18
                android.content.Context r2 = r1.getContext()
                android.view.LayoutInflater r2 = android.view.LayoutInflater.from(r2)
                int r3 = com.chad.library.adapter4.C2140R.layout.brvah_trailing_load_more
                r4 = 0
                android.view.View r2 = r2.inflate(r3, r1, r4)
                java.lang.String r3 = "from(parent.context).inf…load_more, parent, false)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            L18:
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.chad.library.adapter4.loadState.trailing.DefaultTrailingLoadStateAdapter.TrailingLoadStateVH.<init>(android.view.ViewGroup, android.view.View, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        @NotNull
        public final View getLoadCompleteView() {
            return this.loadCompleteView;
        }

        @NotNull
        public final View getLoadEndView() {
            return this.loadEndView;
        }

        @NotNull
        public final View getLoadFailView() {
            return this.loadFailView;
        }

        @NotNull
        public final View getLoadingView() {
            return this.loadingView;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TrailingLoadStateVH(@NotNull ViewGroup parent, @NotNull View view) {
            super(view);
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(view, "view");
            View findViewById = this.itemView.findViewById(C2140R.id.load_more_load_complete_view);
            Intrinsics.checkNotNullExpressionValue(findViewById, "itemView.findViewById(R.…_more_load_complete_view)");
            this.loadCompleteView = findViewById;
            View findViewById2 = this.itemView.findViewById(C2140R.id.load_more_loading_view);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "itemView.findViewById(R.id.load_more_loading_view)");
            this.loadingView = findViewById2;
            View findViewById3 = this.itemView.findViewById(C2140R.id.load_more_load_fail_view);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "itemView.findViewById(R.…load_more_load_fail_view)");
            this.loadFailView = findViewById3;
            View findViewById4 = this.itemView.findViewById(C2140R.id.load_more_load_end_view);
            Intrinsics.checkNotNullExpressionValue(findViewById4, "itemView.findViewById(R.….load_more_load_end_view)");
            this.loadEndView = findViewById4;
        }
    }

    public DefaultTrailingLoadStateAdapter(boolean z) {
        super(z);
    }

    @Override // com.chad.library.adapter4.loadState.LoadStateAdapter
    public void onBindViewHolder(@NotNull TrailingLoadStateVH holder, @NotNull LoadState loadState) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        if (loadState instanceof LoadState.NotLoading) {
            if (loadState.getEndOfPaginationReached()) {
                holder.getLoadCompleteView().setVisibility(8);
                holder.getLoadingView().setVisibility(8);
                holder.getLoadFailView().setVisibility(8);
                holder.getLoadEndView().setVisibility(0);
                return;
            }
            holder.getLoadCompleteView().setVisibility(0);
            holder.getLoadingView().setVisibility(8);
            holder.getLoadFailView().setVisibility(8);
            holder.getLoadEndView().setVisibility(8);
            return;
        }
        if (loadState instanceof LoadState.Loading) {
            holder.getLoadCompleteView().setVisibility(8);
            holder.getLoadingView().setVisibility(0);
            holder.getLoadFailView().setVisibility(8);
            holder.getLoadEndView().setVisibility(8);
            return;
        }
        if (loadState instanceof LoadState.Error) {
            holder.getLoadCompleteView().setVisibility(8);
            holder.getLoadingView().setVisibility(8);
            holder.getLoadFailView().setVisibility(0);
            holder.getLoadEndView().setVisibility(8);
            return;
        }
        if (loadState instanceof LoadState.None) {
            holder.getLoadCompleteView().setVisibility(8);
            holder.getLoadingView().setVisibility(8);
            holder.getLoadFailView().setVisibility(8);
            holder.getLoadEndView().setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.loadState.LoadStateAdapter
    @NotNull
    public TrailingLoadStateVH onCreateViewHolder(@NotNull ViewGroup parent, @NotNull LoadState loadState) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        TrailingLoadStateVH trailingLoadStateVH = new TrailingLoadStateVH(parent, null, 2, 0 == true ? 1 : 0);
        trailingLoadStateVH.getLoadFailView().setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.f1f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DefaultTrailingLoadStateAdapter.m9696m(DefaultTrailingLoadStateAdapter.this, view);
            }
        });
        trailingLoadStateVH.getLoadCompleteView().setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.g1f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DefaultTrailingLoadStateAdapter.m9697n(DefaultTrailingLoadStateAdapter.this, view);
            }
        });
        return trailingLoadStateVH;
    }

    public /* synthetic */ DefaultTrailingLoadStateAdapter(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }
}
