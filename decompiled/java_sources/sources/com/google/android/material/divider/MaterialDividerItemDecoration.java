package com.google.android.material.divider;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C5139R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;

/* loaded from: classes6.dex */
public class MaterialDividerItemDecoration extends RecyclerView.ItemDecoration {
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;

    /* renamed from: i */
    public static final int f31236i = C5139R.style.Widget_MaterialComponents_MaterialDivider;

    /* renamed from: a */
    @NonNull
    public Drawable f31237a;

    /* renamed from: b */
    public int f31238b;

    /* renamed from: c */
    @ColorInt
    public int f31239c;

    /* renamed from: d */
    public int f31240d;

    /* renamed from: e */
    public int f31241e;

    /* renamed from: f */
    public int f31242f;

    /* renamed from: g */
    public boolean f31243g;

    /* renamed from: h */
    public final Rect f31244h;

    public MaterialDividerItemDecoration(@NonNull Context context, int i) {
        this(context, null, i);
    }

    /* renamed from: a */
    public final void m24032a(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        int height;
        int i;
        int i2;
        int i3;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i = 0;
        }
        int i4 = i + this.f31241e;
        int i5 = height - this.f31242f;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(recyclerView);
        int childCount = recyclerView.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = recyclerView.getChildAt(i6);
            if (m24034c(recyclerView, childAt)) {
                recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.f31244h);
                int round = Math.round(childAt.getTranslationX());
                if (isLayoutRtl) {
                    i3 = this.f31244h.left + round;
                    i2 = this.f31238b + i3;
                } else {
                    i2 = round + this.f31244h.right;
                    i3 = i2 - this.f31238b;
                }
                this.f31237a.setBounds(i3, i4, i2, i5);
                this.f31237a.setAlpha(Math.round(childAt.getAlpha() * 255.0f));
                this.f31237a.draw(canvas);
            }
        }
        canvas.restore();
    }

    /* renamed from: b */
    public final void m24033b(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        int width;
        int i;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(i, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            i = 0;
        }
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(recyclerView);
        int i2 = i + (isLayoutRtl ? this.f31242f : this.f31241e);
        int i3 = width - (isLayoutRtl ? this.f31241e : this.f31242f);
        int childCount = recyclerView.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = recyclerView.getChildAt(i4);
            if (m24034c(recyclerView, childAt)) {
                recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.f31244h);
                int round = this.f31244h.bottom + Math.round(childAt.getTranslationY());
                this.f31237a.setBounds(i2, round - this.f31238b, i3, round);
                this.f31237a.setAlpha(Math.round(childAt.getAlpha() * 255.0f));
                this.f31237a.draw(canvas);
            }
        }
        canvas.restore();
    }

    /* renamed from: c */
    public final boolean m24034c(@NonNull RecyclerView recyclerView, @NonNull View view) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        boolean z = adapter != null && childAdapterPosition == adapter.getItemCount() - 1;
        if (childAdapterPosition != -1) {
            return (!z || this.f31243g) && shouldDrawDivider(childAdapterPosition, adapter);
        }
        return false;
    }

    @ColorInt
    public int getDividerColor() {
        return this.f31239c;
    }

    @Px
    public int getDividerInsetEnd() {
        return this.f31242f;
    }

    @Px
    public int getDividerInsetStart() {
        return this.f31241e;
    }

    @Px
    public int getDividerThickness() {
        return this.f31238b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        rect.set(0, 0, 0, 0);
        if (m24034c(recyclerView, view)) {
            if (this.f31240d == 1) {
                rect.bottom = this.f31238b;
            } else if (ViewUtils.isLayoutRtl(recyclerView)) {
                rect.left = this.f31238b;
            } else {
                rect.right = this.f31238b;
            }
        }
    }

    public int getOrientation() {
        return this.f31240d;
    }

    public boolean isLastItemDecorated() {
        return this.f31243g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        if (this.f31240d == 1) {
            m24033b(canvas, recyclerView);
        } else {
            m24032a(canvas, recyclerView);
        }
    }

    public void setDividerColor(@ColorInt int i) {
        this.f31239c = i;
        Drawable wrap = DrawableCompat.wrap(this.f31237a);
        this.f31237a = wrap;
        DrawableCompat.setTint(wrap, i);
    }

    public void setDividerColorResource(@NonNull Context context, @ColorRes int i) {
        setDividerColor(ContextCompat.getColor(context, i));
    }

    public void setDividerInsetEnd(@Px int i) {
        this.f31242f = i;
    }

    public void setDividerInsetEndResource(@NonNull Context context, @DimenRes int i) {
        setDividerInsetEnd(context.getResources().getDimensionPixelOffset(i));
    }

    public void setDividerInsetStart(@Px int i) {
        this.f31241e = i;
    }

    public void setDividerInsetStartResource(@NonNull Context context, @DimenRes int i) {
        setDividerInsetStart(context.getResources().getDimensionPixelOffset(i));
    }

    public void setDividerThickness(@Px int i) {
        this.f31238b = i;
    }

    public void setDividerThicknessResource(@NonNull Context context, @DimenRes int i) {
        setDividerThickness(context.getResources().getDimensionPixelSize(i));
    }

    public void setLastItemDecorated(boolean z) {
        this.f31243g = z;
    }

    public void setOrientation(int i) {
        if (i == 0 || i == 1) {
            this.f31240d = i;
            return;
        }
        throw new IllegalArgumentException("Invalid orientation: " + i + ". It should be either HORIZONTAL or VERTICAL");
    }

    public boolean shouldDrawDivider(int i, @Nullable RecyclerView.Adapter<?> adapter) {
        return true;
    }

    public MaterialDividerItemDecoration(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, C5139R.attr.materialDividerStyle, i);
    }

    public MaterialDividerItemDecoration(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        this.f31244h = new Rect();
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, C5139R.styleable.MaterialDivider, i, f31236i, new int[0]);
        this.f31239c = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.MaterialDivider_dividerColor).getDefaultColor();
        this.f31238b = obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.MaterialDivider_dividerThickness, context.getResources().getDimensionPixelSize(C5139R.dimen.material_divider_thickness));
        this.f31241e = obtainStyledAttributes.getDimensionPixelOffset(C5139R.styleable.MaterialDivider_dividerInsetStart, 0);
        this.f31242f = obtainStyledAttributes.getDimensionPixelOffset(C5139R.styleable.MaterialDivider_dividerInsetEnd, 0);
        this.f31243g = obtainStyledAttributes.getBoolean(C5139R.styleable.MaterialDivider_lastItemDecorated, true);
        obtainStyledAttributes.recycle();
        this.f31237a = new ShapeDrawable();
        setDividerColor(this.f31239c);
        setOrientation(i2);
    }
}
