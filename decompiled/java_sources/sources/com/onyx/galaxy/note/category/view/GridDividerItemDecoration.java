package com.onyx.galaxy.note.category.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\u0018\u00002\u00020\u0001B;\b\u0007\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u000f\u0012\b\b\u0002\u0010!\u001a\u00020\u0017\u0012\b\b\u0002\u0010\"\u001a\u00020\u0017\u0012\b\b\u0003\u0010$\u001a\u00020\u000f¢\u0006\u0004\b,\u0010-J(\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J \u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J(\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J(\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J(\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J(\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0016\u0010\u001e\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u001dR\u0016\u0010!\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010 R\u0016\u0010\"\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010 R\u0016\u0010$\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\u001dR\u001b\u0010(\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010&\u001a\u0004\b#\u0010'R\u001b\u0010+\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010&\u001a\u0004\b\r\u0010*¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroid/graphics/Rect;", "outRect", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "Landroidx/recyclerview/widget/RecyclerView$State;", "state", "", "getItemOffsets", "Landroid/graphics/Canvas;", "c", "onDraw", "", "d", "b", IStyleSheet.CLASS_CANVAS, "a", "pos", "spanCount", "childCount", "", C6998g.f39679a, "i", "j", C6999h.f39688c, C6997f.f39671c, "I", "dividerWidth", "firstRowTopMargin", Constants.HASIDCALL_INDEX_SIG, "isNeedSpace", "isLastRowNeedSpace", "e", "dividerColor", "Landroid/graphics/Paint;", "Lkotlin/Lazy;", "()Landroid/graphics/Paint;", "paint", "", "()F", "defaultDividerWidth", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(IIZZI)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class GridDividerItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: a, reason: from kotlin metadata */
    public int dividerWidth;

    /* renamed from: b, reason: from kotlin metadata */
    public int firstRowTopMargin;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isNeedSpace;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isLastRowNeedSpace;

    /* renamed from: e, reason: from kotlin metadata */
    public int dividerColor;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy paint;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy defaultDividerWidth;

    @JvmOverloads
    public GridDividerItemDecoration() {
        this(0, 0, false, false, 0, 31, null);
    }

    /* renamed from: a */
    public final void m43928a(Canvas canvas, RecyclerView parent) {
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = parent.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
            RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) layoutParams;
            int left = childAt.getLeft();
            int right = childAt.getRight();
            canvas.drawRect(left, childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin, right, this.dividerWidth + r8, m43932e());
            int top = childAt.getTop();
            int bottom = childAt.getBottom() + this.dividerWidth;
            canvas.drawRect(childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin, top, this.dividerWidth + r4, bottom, m43932e());
        }
    }

    /* renamed from: b */
    public final int m43929b(RecyclerView parent) {
        return (int) (((parent.getMeasuredWidth() - (this.isNeedSpace ? this.dividerWidth * 2 : 0)) / m43933f(parent)) - m43930c());
    }

    /* renamed from: c */
    public final float m43930c() {
        return ((Number) this.defaultDividerWidth.getValue()).floatValue();
    }

    /* renamed from: d */
    public final int m43931d(View view, RecyclerView parent) {
        int i = view.getLayoutParams().width;
        int i2 = view.getLayoutParams().height;
        int measuredWidth = parent.getMeasuredWidth();
        int m43933f = m43933f(parent);
        int i3 = measuredWidth - (i * m43933f);
        if (i2 >= 0 && i >= 0 && (!this.isNeedSpace || i3 > (m43933f - 1) * this.dividerWidth)) {
            return i3;
        }
        view.getLayoutParams().width = m43929b(parent);
        view.getLayoutParams().height = m43929b(parent);
        return measuredWidth - (view.getLayoutParams().width * m43933f);
    }

    /* renamed from: e */
    public final Paint m43932e() {
        return (Paint) this.paint.getValue();
    }

    /* renamed from: f */
    public final int m43933f(RecyclerView parent) {
        RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            return ((GridLayoutManager) layoutManager).getSpanCount();
        }
        return -1;
    }

    /* renamed from: g */
    public final boolean m43934g(RecyclerView parent, int pos, int spanCount, int childCount) {
        return (parent.getLayoutManager() instanceof GridLayoutManager) && pos % spanCount == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(outRect, "outRect");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int m43933f = m43933f(parent);
        if (m43933f == 1) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
        int viewLayoutPosition = ((RecyclerView.LayoutParams) layoutParams).getViewLayoutPosition();
        RecyclerView.Adapter adapter = parent.getAdapter();
        Intrinsics.checkNotNull(adapter);
        int itemCount = adapter.getItemCount();
        int m43931d = m43931d(view, parent);
        int i = this.isNeedSpace ? this.dividerWidth : 0;
        int i2 = m43931d / m43933f;
        boolean m43935h = m43935h(parent, viewLayoutPosition, m43933f, itemCount);
        boolean m43937j = m43937j(parent, viewLayoutPosition, m43933f, itemCount);
        int i3 = ((viewLayoutPosition % m43933f) * (((m43931d - (i * 2)) / (m43933f - 1)) - i2)) + i;
        int i4 = i2 - i3;
        int i5 = this.dividerWidth;
        int i6 = this.firstRowTopMargin;
        if (i6 <= 0 || !m43935h) {
            i6 = 0;
        }
        outRect.set(i3, i6, i4, (this.isLastRowNeedSpace || !m43937j) ? i5 : 0);
    }

    /* renamed from: h */
    public final boolean m43935h(RecyclerView parent, int pos, int spanCount, int childCount) {
        return (parent.getLayoutManager() instanceof GridLayoutManager) && (pos / spanCount) + 1 == 1;
    }

    /* renamed from: i */
    public final boolean m43936i(RecyclerView parent, int pos, int spanCount, int childCount) {
        return (parent.getLayoutManager() instanceof GridLayoutManager) && (pos + 1) % spanCount == 0;
    }

    /* renamed from: j */
    public final boolean m43937j(RecyclerView parent, int pos, int spanCount, int childCount) {
        if (parent.getLayoutManager() instanceof GridLayoutManager) {
            return (childCount % spanCount == 0 ? childCount / spanCount : (childCount / spanCount) + 1) == (pos / spanCount) + 1;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NotNull Canvas c, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(c, "c");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        super.onDraw(c, parent, state);
        m43928a(c, parent);
    }

    @JvmOverloads
    public GridDividerItemDecoration(int i) {
        this(i, 0, false, false, 0, 30, null);
    }

    @JvmOverloads
    public GridDividerItemDecoration(int i, int i2) {
        this(i, i2, false, false, 0, 28, null);
    }

    @JvmOverloads
    public GridDividerItemDecoration(int i, int i2, boolean z) {
        this(i, i2, z, false, 0, 24, null);
    }

    @JvmOverloads
    public GridDividerItemDecoration(int i, int i2, boolean z, boolean z2) {
        this(i, i2, z, z2, 0, 16, null);
    }

    public /* synthetic */ GridDividerItemDecoration(int i, int i2, boolean z, boolean z2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0 : i, (i4 & 2) != 0 ? 0 : i2, (i4 & 4) != 0 ? false : z, (i4 & 8) != 0 ? false : z2, (i4 & 16) != 0 ? -1 : i3);
    }

    @JvmOverloads
    public GridDividerItemDecoration(int i, int i2, boolean z, boolean z2, @ColorInt int i3) {
        Lazy lazy;
        Lazy lazy2;
        this.dividerWidth = i;
        this.firstRowTopMargin = i2;
        this.isNeedSpace = z;
        this.isLastRowNeedSpace = z2;
        this.dividerColor = i3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.onyx.galaxy.note.category.view.GridDividerItemDecoration$paint$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Paint invoke() {
                int i4;
                Paint paint = new Paint(1);
                i4 = GridDividerItemDecoration.this.dividerColor;
                paint.setColor(i4);
                paint.setStyle(Paint.Style.FILL);
                return paint;
            }
        });
        this.paint = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Float>() { // from class: com.onyx.galaxy.note.category.view.GridDividerItemDecoration$defaultDividerWidth$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                return Float.valueOf(ResManager.INSTANCE.getDimension(C7384R.dimen.dp_8));
            }
        });
        this.defaultDividerWidth = lazy2;
    }
}
