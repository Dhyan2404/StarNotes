package com.chad.library.adapter4.loadState.trailing;

import androidx.annotation.CallSuper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter4.loadState.LoadState;
import com.chad.library.adapter4.loadState.LoadStateAdapter;
import com.chad.library.adapter4.loadState.trailing.TrailingLoadStateAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u001b\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003:\u00016B\u0011\u0012\b\b\u0002\u0010 \u001a\u00020\u0006¢\u0006\u0004\b5\u0010)J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00028\u0000H\u0017¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0013\u001a\u00020\tJ\u0006\u0010\u0014\u001a\u00020\tJ\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\b\u0010\u0019\u001a\u00020\u0018H\u0016J\b\u0010\u001a\u001a\u00020\tH\u0002J\b\u0010\u001b\u001a\u00020\u0006H\u0002J\u0012\u0010\u001e\u001a\u00020\f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002R\u0017\u0010 \u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R(\u0010&\u001a\u0004\u0018\u00010\u00152\b\u0010\"\u001a\u0004\u0018\u00010\u00158\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001b\u0010#\u001a\u0004\b$\u0010%R\"\u0010'\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001f\u001a\u0004\b'\u0010!\"\u0004\b(\u0010)R\"\u00100\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u0016\u00102\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010\u001fR\u0016\u00104\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010\u001f¨\u00067"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Lcom/chad/library/adapter4/loadState/LoadStateAdapter;", "Lcom/chad/library/adapter4/loadState/LoadState;", "loadState", "", "displayLoadStateAsItem", "holder", "", "onViewAttachedToWindow", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V", "", "itemCount", "currentPosition", "checkPreload$com_github_CymChad_brvah", "(II)V", "checkPreload", "invokeLoadMore", "invokeFailRetry", "checkDisableLoadMoreIfNotFullPage", "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnLoadMoreListener", "", "toString", "i", C6999h.f39688c, "", "numbers", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "isLoadEndDisplay", Constants.BOOLEAN_VALUE_SIG, "<set-?>", "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;", "getOnTrailingListener", "()Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;", "onTrailingListener", "isAutoLoadMore", "setAutoLoadMore", "(Z)V", "j", "I", "getPreloadSize", "()I", "setPreloadSize", "(I)V", "preloadSize", C4921e.f26537n, "mNotFullPageNextLoadFlag", "l", "mDelayNextLoadFlag", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "OnTrailingListener", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes4.dex */
public abstract class TrailingLoadStateAdapter<VH extends RecyclerView.ViewHolder> extends LoadStateAdapter<VH> {

    /* renamed from: g, reason: from kotlin metadata */
    public final boolean isLoadEndDisplay;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public OnTrailingListener onTrailingListener;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean isAutoLoadMore;

    /* renamed from: j, reason: from kotlin metadata */
    public int preloadSize;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean mNotFullPageNextLoadFlag;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean mDelayNextLoadFlag;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;", "", "isAllowLoading", "", "onFailRetry", "", "onLoad", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public interface OnTrailingListener {
        default boolean isAllowLoading() {
            return true;
        }

        void onFailRetry();

        void onLoad();
    }

    public TrailingLoadStateAdapter() {
        this(false, 1, null);
    }

    /* renamed from: e */
    public static final void m9701e(TrailingLoadStateAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.m9705h()) {
            this$0.mNotFullPageNextLoadFlag = false;
        }
    }

    /* renamed from: f */
    public static final void m9702f(RecyclerView.LayoutManager manager, TrailingLoadStateAdapter this$0, RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(manager, "$manager");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(recyclerView, "$recyclerView");
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) manager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(iArr);
        int m9704g = this$0.m9704g(iArr) + 1;
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null && m9704g == adapter.getItemCount()) {
            return;
        }
        this$0.mNotFullPageNextLoadFlag = false;
    }

    /* renamed from: j */
    public static final void m9703j(TrailingLoadStateAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.mDelayNextLoadFlag = false;
        this$0.invokeLoadMore();
    }

    public final void checkDisableLoadMoreIfNotFullPage() {
        final RecyclerView.LayoutManager layoutManager;
        this.mNotFullPageNextLoadFlag = true;
        final RecyclerView recyclerView = getRecyclerView();
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            recyclerView.post(new Runnable() { // from class: com.sunia.HTREnginev2.hln
                @Override // java.lang.Runnable
                public final void run() {
                    TrailingLoadStateAdapter.m9701e(TrailingLoadStateAdapter.this);
                }
            });
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            recyclerView.post(new Runnable() { // from class: com.sunia.HTREnginev2.iln
                @Override // java.lang.Runnable
                public final void run() {
                    TrailingLoadStateAdapter.m9702f(RecyclerView.LayoutManager.this, this, recyclerView);
                }
            });
        }
    }

    public final void checkPreload$com_github_CymChad_brvah(int itemCount, int currentPosition) {
        if (currentPosition <= itemCount - 1 && (itemCount - currentPosition) - 1 <= this.preloadSize) {
            m9706i();
        }
    }

    @Override // com.chad.library.adapter4.loadState.LoadStateAdapter
    public boolean displayLoadStateAsItem(@NotNull LoadState loadState) {
        boolean z;
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return super.displayLoadStateAsItem(loadState) || (((z = loadState instanceof LoadState.NotLoading)) && !loadState.getEndOfPaginationReached()) || (this.isLoadEndDisplay && z && loadState.getEndOfPaginationReached());
    }

    /* renamed from: g */
    public final int m9704g(int[] numbers) {
        int i = -1;
        if (numbers != null) {
            if (!(numbers.length == 0)) {
                for (int i2 : numbers) {
                    if (i2 > i) {
                        i = i2;
                    }
                }
            }
        }
        return i;
    }

    @Nullable
    public final OnTrailingListener getOnTrailingListener() {
        return this.onTrailingListener;
    }

    public final int getPreloadSize() {
        return this.preloadSize;
    }

    /* renamed from: h */
    public final boolean m9705h() {
        RecyclerView.Adapter adapter;
        RecyclerView recyclerView = getRecyclerView();
        if (recyclerView == null || (adapter = recyclerView.getAdapter()) == null) {
            return true;
        }
        RecyclerView recyclerView2 = getRecyclerView();
        RecyclerView.LayoutManager layoutManager = recyclerView2 != null ? recyclerView2.getLayoutManager() : null;
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        return (linearLayoutManager != null && linearLayoutManager.findLastCompletelyVisibleItemPosition() + 1 == adapter.getItemCount() && linearLayoutManager.findFirstCompletelyVisibleItemPosition() == 0) ? false : true;
    }

    /* renamed from: i */
    public final void m9706i() {
        RecyclerView recyclerView;
        if (this.isAutoLoadMore) {
            OnTrailingListener onTrailingListener = this.onTrailingListener;
            boolean z = false;
            if (onTrailingListener != null && !onTrailingListener.isAllowLoading()) {
                z = true;
            }
            if (z || this.mNotFullPageNextLoadFlag || this.mDelayNextLoadFlag || !(getLoadState() instanceof LoadState.NotLoading) || getLoadState().getEndOfPaginationReached() || (recyclerView = getRecyclerView()) == null) {
                return;
            }
            if (!recyclerView.isComputingLayout()) {
                invokeLoadMore();
            } else {
                this.mDelayNextLoadFlag = true;
                recyclerView.post(new Runnable() { // from class: com.sunia.HTREnginev2.jln
                    @Override // java.lang.Runnable
                    public final void run() {
                        TrailingLoadStateAdapter.m9703j(TrailingLoadStateAdapter.this);
                    }
                });
            }
        }
    }

    public final void invokeFailRetry() {
        setLoadState(LoadState.Loading.INSTANCE);
        OnTrailingListener onTrailingListener = this.onTrailingListener;
        if (onTrailingListener != null) {
            onTrailingListener.onFailRetry();
        }
    }

    public final void invokeLoadMore() {
        setLoadState(LoadState.Loading.INSTANCE);
        OnTrailingListener onTrailingListener = this.onTrailingListener;
        if (onTrailingListener != null) {
            onTrailingListener.onLoad();
        }
    }

    /* renamed from: isAutoLoadMore, reason: from getter */
    public final boolean getIsAutoLoadMore() {
        return this.isAutoLoadMore;
    }

    /* renamed from: isLoadEndDisplay, reason: from getter */
    public final boolean getIsLoadEndDisplay() {
        return this.isLoadEndDisplay;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onViewAttachedToWindow(@NotNull VH holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        m9706i();
    }

    public final void setAutoLoadMore(boolean z) {
        this.isAutoLoadMore = z;
    }

    @NotNull
    public final TrailingLoadStateAdapter<VH> setOnLoadMoreListener(@Nullable OnTrailingListener listener) {
        this.onTrailingListener = listener;
        return this;
    }

    public final void setPreloadSize(int i) {
        this.preloadSize = i;
    }

    @NotNull
    public String toString() {
        String trimIndent;
        trimIndent = StringsKt__IndentKt.trimIndent("\n            TrailingLoadStateAdapter ->\n            [isLoadEndDisplay: " + this.isLoadEndDisplay + "],\n            [isAutoLoadMore: " + this.isAutoLoadMore + "],\n            [preloadSize: " + this.preloadSize + "],\n            [loadState: " + getLoadState() + "]\n        ");
        return trimIndent;
    }

    public /* synthetic */ TrailingLoadStateAdapter(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    public TrailingLoadStateAdapter(boolean z) {
        this.isLoadEndDisplay = z;
        this.isAutoLoadMore = true;
    }
}
