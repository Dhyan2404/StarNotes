package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* loaded from: classes5.dex */
public class FlexboxItemDecoration extends RecyclerView.ItemDecoration {
    public static final int BOTH = 3;
    public static final int HORIZONTAL = 1;
    public static final int VERTICAL = 2;

    /* renamed from: c */
    public static final int[] f28759c = {android.R.attr.listDivider};

    /* renamed from: a */
    public Drawable f28760a;

    /* renamed from: b */
    public int f28761b;

    public FlexboxItemDecoration(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f28759c);
        this.f28760a = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        setOrientation(3);
    }

    /* renamed from: a */
    public final void m21698a(Canvas canvas, RecyclerView parent) {
        int top;
        int intrinsicHeight;
        int left;
        int right;
        int i;
        int i2;
        int i3;
        if (m21701d()) {
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) parent.getLayoutManager();
            int flexDirection = flexboxLayoutManager.getFlexDirection();
            int left2 = parent.getLeft() - parent.getPaddingLeft();
            int right2 = parent.getRight() + parent.getPaddingRight();
            int childCount = parent.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = parent.getChildAt(i4);
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                if (flexDirection == 3) {
                    intrinsicHeight = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    top = this.f28760a.getIntrinsicHeight() + intrinsicHeight;
                } else {
                    top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    intrinsicHeight = top - this.f28760a.getIntrinsicHeight();
                }
                if (!flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
                    left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    right = childAt.getRight();
                    i = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                } else if (flexboxLayoutManager.m21756d0()) {
                    i2 = Math.min(childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + this.f28760a.getIntrinsicWidth(), right2);
                    i3 = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    this.f28760a.setBounds(i3, intrinsicHeight, i2, top);
                    this.f28760a.draw(canvas);
                } else {
                    left = Math.max((childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f28760a.getIntrinsicWidth(), left2);
                    right = childAt.getRight();
                    i = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                }
                int i5 = left;
                i2 = right + i;
                i3 = i5;
                this.f28760a.setBounds(i3, intrinsicHeight, i2, top);
                this.f28760a.draw(canvas);
            }
        }
    }

    /* renamed from: b */
    public final void m21699b(Canvas canvas, RecyclerView parent) {
        int left;
        int intrinsicWidth;
        int max;
        int bottom;
        int i;
        int i2;
        if (m21702e()) {
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) parent.getLayoutManager();
            int top = parent.getTop() - parent.getPaddingTop();
            int bottom2 = parent.getBottom() + parent.getPaddingBottom();
            int childCount = parent.getChildCount();
            int flexDirection = flexboxLayoutManager.getFlexDirection();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = parent.getChildAt(i3);
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                if (flexboxLayoutManager.m21756d0()) {
                    intrinsicWidth = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    left = this.f28760a.getIntrinsicWidth() + intrinsicWidth;
                } else {
                    left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    intrinsicWidth = left - this.f28760a.getIntrinsicWidth();
                }
                if (flexboxLayoutManager.isMainAxisDirectionHorizontal()) {
                    max = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    bottom = childAt.getBottom();
                    i = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                } else if (flexDirection == 3) {
                    int min = Math.min(childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + this.f28760a.getIntrinsicHeight(), bottom2);
                    max = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    i2 = min;
                    this.f28760a.setBounds(intrinsicWidth, max, left, i2);
                    this.f28760a.draw(canvas);
                } else {
                    max = Math.max((childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f28760a.getIntrinsicHeight(), top);
                    bottom = childAt.getBottom();
                    i = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                }
                i2 = bottom + i;
                this.f28760a.setBounds(intrinsicWidth, max, left, i2);
                this.f28760a.draw(canvas);
            }
        }
    }

    /* renamed from: c */
    public final boolean m21700c(int position, List<FlexLine> flexLines, FlexboxLayoutManager layoutManager) {
        int m21753a0 = layoutManager.m21753a0(position);
        if ((m21753a0 == -1 || m21753a0 >= layoutManager.getFlexLinesInternal().size() || layoutManager.getFlexLinesInternal().get(m21753a0).f28755o != position) && position != 0) {
            return flexLines.size() != 0 && flexLines.get(flexLines.size() - 1).f28756p == position - 1;
        }
        return true;
    }

    /* renamed from: d */
    public final boolean m21701d() {
        return (this.f28761b & 1) > 0;
    }

    /* renamed from: e */
    public final boolean m21702e() {
        return (this.f28761b & 2) > 0;
    }

    /* renamed from: f */
    public final void m21703f(Rect outRect, int position, FlexboxLayoutManager layoutManager, List<FlexLine> flexLines) {
        if (flexLines.size() == 0 || layoutManager.m21753a0(position) == 0) {
            return;
        }
        if (layoutManager.isMainAxisDirectionHorizontal()) {
            if (m21701d()) {
                outRect.top = this.f28760a.getIntrinsicHeight();
                outRect.bottom = 0;
                return;
            } else {
                outRect.top = 0;
                outRect.bottom = 0;
                return;
            }
        }
        if (m21702e()) {
            if (layoutManager.m21756d0()) {
                outRect.right = this.f28760a.getIntrinsicWidth();
                outRect.left = 0;
            } else {
                outRect.left = this.f28760a.getIntrinsicWidth();
                outRect.right = 0;
            }
        }
    }

    /* renamed from: g */
    public final void m21704g(Rect outRect, int position, FlexboxLayoutManager layoutManager, List<FlexLine> flexLines, int flexDirection) {
        if (m21700c(position, flexLines, layoutManager)) {
            return;
        }
        if (layoutManager.isMainAxisDirectionHorizontal()) {
            if (!m21702e()) {
                outRect.left = 0;
                outRect.right = 0;
                return;
            } else if (layoutManager.m21756d0()) {
                outRect.right = this.f28760a.getIntrinsicWidth();
                outRect.left = 0;
                return;
            } else {
                outRect.left = this.f28760a.getIntrinsicWidth();
                outRect.right = 0;
                return;
            }
        }
        if (!m21701d()) {
            outRect.top = 0;
            outRect.bottom = 0;
        } else if (flexDirection == 3) {
            outRect.bottom = this.f28760a.getIntrinsicHeight();
            outRect.top = 0;
        } else {
            outRect.top = this.f28760a.getIntrinsicHeight();
            outRect.bottom = 0;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect outRect, @NonNull View view, RecyclerView parent, @NonNull RecyclerView.State state) {
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (childAdapterPosition == 0) {
            return;
        }
        if (!m21701d() && !m21702e()) {
            outRect.set(0, 0, 0, 0);
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) parent.getLayoutManager();
        List<FlexLine> flexLines = flexboxLayoutManager.getFlexLines();
        m21704g(outRect, childAdapterPosition, flexboxLayoutManager, flexLines, flexboxLayoutManager.getFlexDirection());
        m21703f(outRect, childAdapterPosition, flexboxLayoutManager, flexLines);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView parent, @NonNull RecyclerView.State state) {
        m21698a(canvas, parent);
        m21699b(canvas, parent);
    }

    public void setDrawable(Drawable drawable) {
        if (drawable == null) {
            throw new IllegalArgumentException("Drawable cannot be null.");
        }
        this.f28760a = drawable;
    }

    public void setOrientation(int orientation) {
        this.f28761b = orientation;
    }
}
