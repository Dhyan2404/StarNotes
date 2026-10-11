package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintHorizontalScrollView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;

/* loaded from: classes9.dex */
public class LayoutInputTextToolBindingImpl extends LayoutInputTextToolBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57365u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57366v0;

    /* renamed from: q0 */
    @NonNull
    public final TintHorizontalScrollView f57367q0;

    /* renamed from: t0 */
    public long f57368t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57366v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.content, 1);
        sparseIntArray.put(C10651R.id.tv_font_name, 2);
        sparseIntArray.put(C10651R.id.textSizeLayout, 3);
        sparseIntArray.put(C10651R.id.text_size_decrease, 4);
        sparseIntArray.put(C10651R.id.text_size, 5);
        sparseIntArray.put(C10651R.id.text_size_add, 6);
        sparseIntArray.put(C10651R.id.text_spacing, 7);
        sparseIntArray.put(C10651R.id.text_bold, 8);
        sparseIntArray.put(C10651R.id.text_italic, 9);
        sparseIntArray.put(C10651R.id.text_underline, 10);
        sparseIntArray.put(C10651R.id.text_align_left, 11);
        sparseIntArray.put(C10651R.id.text_align_center, 12);
        sparseIntArray.put(C10651R.id.text_align_right, 13);
        sparseIntArray.put(C10651R.id.color_layout, 14);
        sparseIntArray.put(C10651R.id.text_background, 15);
    }

    public LayoutInputTextToolBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 16, f57365u0, f57366v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57368t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57368t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57368t0 = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    public LayoutInputTextToolBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ShapeColorPropertyLayout) objArr[14], (LinearLayout) objArr[1], (TintImageView) objArr[12], (TintImageView) objArr[11], (TintImageView) objArr[13], (TintImageView) objArr[15], (TintImageView) objArr[8], (TintImageView) objArr[9], (TintTextView) objArr[5], (TintImageView) objArr[6], (TintImageView) objArr[4], (TintLinearLayout) objArr[3], (TintTextView) objArr[7], (TintImageView) objArr[10], (TintTextView) objArr[2]);
        this.f57368t0 = -1L;
        TintHorizontalScrollView tintHorizontalScrollView = (TintHorizontalScrollView) objArr[0];
        this.f57367q0 = tintHorizontalScrollView;
        tintHorizontalScrollView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
