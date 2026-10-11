package com.chad.library.adapter4.loadState.leading;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.C2140R;
import com.chad.library.adapter4.loadState.LoadState;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\u000f"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter;", "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;", "Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;", "()V", "getStateViewType", "", "loadState", "Lcom/chad/library/adapter4/loadState/LoadState;", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "LeadingLoadStateVH", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes4.dex */
public final class DefaultLeadingLoadStateAdapter extends LeadingLoadStateAdapter<LeadingLoadStateVH> {
    @Override // com.chad.library.adapter4.loadState.LoadStateAdapter
    public int getStateViewType(@NotNull LoadState loadState) {
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return C2140R.layout.brvah_leading_load_more;
    }

    @Override // com.chad.library.adapter4.loadState.LoadStateAdapter
    public void onBindViewHolder(@NotNull LeadingLoadStateVH holder, @NotNull LoadState loadState) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        if (loadState instanceof LoadState.Loading) {
            holder.getLoadingProgress().setVisibility(0);
        } else {
            holder.getLoadingProgress().setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter4.loadState.LoadStateAdapter
    @NotNull
    public LeadingLoadStateVH onCreateViewHolder(@NotNull ViewGroup parent, @NotNull LoadState loadState) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return new LeadingLoadStateVH(parent, null, 2, 0 == true ? 1 : 0);
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "H", "Landroid/view/View;", "getLoadingProgress", "()Landroid/view/View;", "loadingProgress", "Landroid/view/ViewGroup;", "parent", "view", Constants.CONSTRUCTOR_NAME, "(Landroid/view/ViewGroup;Landroid/view/View;)V", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes4.dex */
    public static final class LeadingLoadStateVH extends RecyclerView.ViewHolder {

        /* renamed from: H, reason: from kotlin metadata */
        @NotNull
        public final View loadingProgress;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ LeadingLoadStateVH(android.view.ViewGroup r1, android.view.View r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
            /*
                r0 = this;
                r3 = r3 & 2
                if (r3 == 0) goto L18
                android.content.Context r2 = r1.getContext()
                android.view.LayoutInflater r2 = android.view.LayoutInflater.from(r2)
                int r3 = com.chad.library.adapter4.C2140R.layout.brvah_leading_load_more
                r4 = 0
                android.view.View r2 = r2.inflate(r3, r1, r4)
                java.lang.String r3 = "from(parent.context)\n   …load_more, parent, false)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            L18:
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.chad.library.adapter4.loadState.leading.DefaultLeadingLoadStateAdapter.LeadingLoadStateVH.<init>(android.view.ViewGroup, android.view.View, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        @NotNull
        public final View getLoadingProgress() {
            return this.loadingProgress;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LeadingLoadStateVH(@NotNull ViewGroup parent, @NotNull View view) {
            super(view);
            Intrinsics.checkNotNullParameter(parent, "parent");
            Intrinsics.checkNotNullParameter(view, "view");
            View findViewById = this.itemView.findViewById(C2140R.id.loading_progress);
            Intrinsics.checkNotNullExpressionValue(findViewById, "itemView.findViewById(R.id.loading_progress)");
            this.loadingProgress = findViewById;
        }
    }
}
