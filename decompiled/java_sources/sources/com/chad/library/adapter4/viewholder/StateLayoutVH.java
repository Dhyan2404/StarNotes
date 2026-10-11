package com.chad.library.adapter4.viewholder;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.fullspan.FullSpanAdapterType;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u000f2\u00020\u00012\u00020\u0002:\u0001\u000fB#\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u0010"}, m61528d2 = {"Lcom/chad/library/adapter4/viewholder/StateLayoutVH;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/chad/library/adapter4/fullspan/FullSpanAdapterType;", "Landroid/view/View;", "stateView", "", "changeStateView", "Landroid/widget/FrameLayout;", "H", "Landroid/widget/FrameLayout;", "stateLayout", "Landroid/view/ViewGroup;", "parent", Constants.CONSTRUCTOR_NAME, "(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/FrameLayout;)V", "Companion", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes4.dex */
public final class StateLayoutVH extends RecyclerView.ViewHolder implements FullSpanAdapterType {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: H, reason: from kotlin metadata */
    @NotNull
    public final FrameLayout stateLayout;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¨\u0006\n"}, m61528d2 = {"Lcom/chad/library/adapter4/viewholder/StateLayoutVH$Companion;", "", "Landroid/view/ViewGroup;", "rootView", "Landroid/view/View;", "stateView", "", "a", Constants.CONSTRUCTOR_NAME, "()V", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m9707a(ViewGroup rootView, View stateView) {
            if (stateView == null) {
                rootView.removeAllViews();
                return;
            }
            if (rootView.getChildCount() == 1 && Intrinsics.areEqual(rootView.getChildAt(0), stateView)) {
                return;
            }
            ViewParent parent = stateView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(stateView);
            }
            if (stateView.getLayoutParams() == null) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.gravity = 17;
                stateView.setLayoutParams(layoutParams);
            }
            rootView.removeAllViews();
            rootView.addView(stateView);
        }

        public Companion() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ StateLayoutVH(android.view.ViewGroup r1, android.view.View r2, android.widget.FrameLayout r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
        /*
            r0 = this;
            r4 = r4 & 4
            if (r4 == 0) goto L1b
            android.widget.FrameLayout r3 = new android.widget.FrameLayout
            android.content.Context r4 = r1.getContext()
            r3.<init>(r4)
            android.view.ViewGroup$LayoutParams r4 = new android.view.ViewGroup$LayoutParams
            r5 = -1
            r4.<init>(r5, r5)
            r3.setLayoutParams(r4)
            com.chad.library.adapter4.viewholder.StateLayoutVH$Companion r4 = com.chad.library.adapter4.viewholder.StateLayoutVH.INSTANCE
            com.chad.library.adapter4.viewholder.StateLayoutVH.Companion.access$setStateView(r4, r3, r2)
        L1b:
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chad.library.adapter4.viewholder.StateLayoutVH.<init>(android.view.ViewGroup, android.view.View, android.widget.FrameLayout, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final void changeStateView(@Nullable View stateView) {
        INSTANCE.m9707a(this.stateLayout, stateView);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateLayoutVH(@NotNull ViewGroup parent, @Nullable View view, @NotNull FrameLayout stateLayout) {
        super(stateLayout);
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(stateLayout, "stateLayout");
        this.stateLayout = stateLayout;
    }
}
