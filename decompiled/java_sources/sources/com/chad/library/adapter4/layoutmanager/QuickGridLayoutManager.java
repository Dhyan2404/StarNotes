package com.chad.library.adapter4.layoutmanager;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Pair;
import androidx.annotation.CallSuper;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.fullspan.FullSpanAdapterType;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001:\u0001&B+\b\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001d\u001a\u00020\u001b¢\u0006\u0004\b\u001e\u0010\u001fB\u0019\b\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010 \u001a\u00020\u001b¢\u0006\u0004\b\u001e\u0010!B)\b\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010 \u001a\u00020\u001b\u0012\u0006\u0010\"\u001a\u00020\u001b\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b\u001e\u0010%J$\u0010\u0006\u001a\u00020\u00052\f\u0010\u0003\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0002H\u0017J\u0012\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J \u0010\f\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\f\u0010\u000b\u001a\b\u0018\u00010\nR\u00020\u0007H\u0016J\u0012\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016R\u0018\u0010\u0013\u001a\u00060\u0010R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0016\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006'"}, m61528d2 = {"Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;", "Landroidx/recyclerview/widget/GridLayoutManager;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "oldAdapter", "newAdapter", "", "onAdapterChanged", "Landroidx/recyclerview/widget/RecyclerView;", "view", "onAttachedToWindow", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "recycler", "onDetachedFromWindow", "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;", "spanSizeLookup", "setSpanSizeLookup", "Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;", "N0", "Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager$a;", "fullSpanSizeLookup", "O0", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "adapter", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "spanCount", "(Landroid/content/Context;I)V", "orientation", "", "reverseLayout", "(Landroid/content/Context;IIZ)V", "a", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes4.dex */
public class QuickGridLayoutManager extends GridLayoutManager {

    /* renamed from: N0, reason: from kotlin metadata */
    @NotNull
    public final C2141a fullSpanSizeLookup;

    /* renamed from: O0, reason: from kotlin metadata */
    @Nullable
    public RecyclerView.Adapter<?> adapter;

    /* renamed from: com.chad.library.adapter4.layoutmanager.QuickGridLayoutManager$a */
    /* loaded from: classes4.dex */
    public final class C2141a extends GridLayoutManager.SpanSizeLookup {

        /* renamed from: e */
        @Nullable
        public GridLayoutManager.SpanSizeLookup f16227e;

        public C2141a() {
        }

        @Nullable
        /* renamed from: d */
        public final GridLayoutManager.SpanSizeLookup m9689d() {
            return this.f16227e;
        }

        /* renamed from: e */
        public final void m9690e(@Nullable GridLayoutManager.SpanSizeLookup spanSizeLookup) {
            this.f16227e = spanSizeLookup;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i) {
            RecyclerView.Adapter adapter = QuickGridLayoutManager.this.adapter;
            if (adapter == null) {
                return 1;
            }
            if (!(adapter instanceof ConcatAdapter)) {
                if (adapter instanceof FullSpanAdapterType) {
                    return QuickGridLayoutManager.this.getSpanCount();
                }
                if (!(adapter instanceof BaseQuickAdapter)) {
                    GridLayoutManager.SpanSizeLookup spanSizeLookup = this.f16227e;
                    if (spanSizeLookup != null) {
                        return spanSizeLookup.getSpanSize(i);
                    }
                    return 1;
                }
                if (((BaseQuickAdapter) adapter).isFullSpanItem(adapter.getItemViewType(i))) {
                    return QuickGridLayoutManager.this.getSpanCount();
                }
                GridLayoutManager.SpanSizeLookup spanSizeLookup2 = this.f16227e;
                if (spanSizeLookup2 != null) {
                    return spanSizeLookup2.getSpanSize(i);
                }
                return 1;
            }
            Pair<RecyclerView.Adapter<? extends RecyclerView.ViewHolder>, Integer> wrappedAdapterAndPosition = ((ConcatAdapter) adapter).getWrappedAdapterAndPosition(i);
            Intrinsics.checkNotNullExpressionValue(wrappedAdapterAndPosition, "adapter.getWrappedAdapterAndPosition(position)");
            RecyclerView.Adapter adapter2 = (RecyclerView.Adapter) wrappedAdapterAndPosition.first;
            if (adapter2 instanceof FullSpanAdapterType) {
                return QuickGridLayoutManager.this.getSpanCount();
            }
            if (!(adapter2 instanceof BaseQuickAdapter)) {
                GridLayoutManager.SpanSizeLookup spanSizeLookup3 = this.f16227e;
                if (spanSizeLookup3 != null) {
                    return spanSizeLookup3.getSpanSize(i);
                }
                return 1;
            }
            Object obj = wrappedAdapterAndPosition.second;
            Intrinsics.checkNotNullExpressionValue(obj, "pair.second");
            if (((BaseQuickAdapter) adapter2).isFullSpanItem(adapter2.getItemViewType(((Number) obj).intValue()))) {
                return QuickGridLayoutManager.this.getSpanCount();
            }
            GridLayoutManager.SpanSizeLookup spanSizeLookup4 = this.f16227e;
            if (spanSizeLookup4 != null) {
                return spanSizeLookup4.getSpanSize(i);
            }
            return 1;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickGridLayoutManager(@NotNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        Intrinsics.checkNotNullParameter(context, "context");
        C2141a c2141a = new C2141a();
        this.fullSpanSizeLookup = c2141a;
        c2141a.m9690e(getSpanSizeLookup());
        super.setSpanSizeLookup(c2141a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @CallSuper
    public void onAdapterChanged(@Nullable RecyclerView.Adapter<?> oldAdapter, @Nullable RecyclerView.Adapter<?> newAdapter) {
        this.adapter = newAdapter;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(@Nullable RecyclerView view) {
        super.onAttachedToWindow(view);
        this.adapter = view != null ? view.getAdapter() : null;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(@Nullable RecyclerView view, @Nullable RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(view, recycler);
        this.adapter = null;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager
    public void setSpanSizeLookup(@Nullable GridLayoutManager.SpanSizeLookup spanSizeLookup) {
        this.fullSpanSizeLookup.m9690e(spanSizeLookup);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickGridLayoutManager(@NotNull Context context, int i) {
        super(context, i);
        Intrinsics.checkNotNullParameter(context, "context");
        C2141a c2141a = new C2141a();
        this.fullSpanSizeLookup = c2141a;
        c2141a.m9690e(getSpanSizeLookup());
        super.setSpanSizeLookup(c2141a);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickGridLayoutManager(@NotNull Context context, int i, int i2, boolean z) {
        super(context, i, i2, z);
        Intrinsics.checkNotNullParameter(context, "context");
        C2141a c2141a = new C2141a();
        this.fullSpanSizeLookup = c2141a;
        c2141a.m9690e(getSpanSizeLookup());
        super.setSpanSizeLookup(c2141a);
    }
}
