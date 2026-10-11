package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.PageMarginAdjustView;

/* loaded from: classes9.dex */
public class DialogPageMarginAdjustBindingImpl extends DialogPageMarginAdjustBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56489u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56490v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56491q0;

    /* renamed from: t0 */
    public long f56492t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56490v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ctl_root, 1);
        sparseIntArray.put(C10651R.id.whitespace_title, 2);
        sparseIntArray.put(C10651R.id.tv_cancel, 3);
        sparseIntArray.put(C10651R.id.tv_confirm, 4);
        sparseIntArray.put(C10651R.id.scroll_container, 5);
        sparseIntArray.put(C10651R.id.tv_margin_size, 6);
        sparseIntArray.put(C10651R.id.fl_select_size, 7);
        sparseIntArray.put(C10651R.id.tv_select_size, 8);
        sparseIntArray.put(C10651R.id.tv_margin_color, 9);
        sparseIntArray.put(C10651R.id.rv_colors, 10);
        sparseIntArray.put(C10651R.id.tv_label_margin_template, 11);
        sparseIntArray.put(C10651R.id.rv_template, 12);
        sparseIntArray.put(C10651R.id.tv_margin_style, 13);
        sparseIntArray.put(C10651R.id.fl_select_margin_style, 14);
        sparseIntArray.put(C10651R.id.tv_select_margin_style, 15);
        sparseIntArray.put(C10651R.id.tv_margin_line_space, 16);
        sparseIntArray.put(C10651R.id.fl_select_margin_line_space, 17);
        sparseIntArray.put(C10651R.id.tv_select_margin_line_space, 18);
        sparseIntArray.put(C10651R.id.page_margin_view, 19);
        sparseIntArray.put(C10651R.id.tv_select_all, 20);
        sparseIntArray.put(C10651R.id.tv_label_select_all, 21);
        sparseIntArray.put(C10651R.id.tv_apply_cover, 22);
    }

    public DialogPageMarginAdjustBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 23, f56489u0, f56490v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56492t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56492t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56492t0 = 1L;
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

    public DialogPageMarginAdjustBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintConstraintLayout) objArr[1], (TintFrameLayout) objArr[17], (TintFrameLayout) objArr[14], (TintFrameLayout) objArr[7], (PageMarginAdjustView) objArr[19], (TintRecycleView) objArr[10], (TintRecycleView) objArr[12], (NestedScrollView) objArr[5], (TintTextView) objArr[22], (TintTextView) objArr[3], (TintTextView) objArr[4], (TintTextView) objArr[11], (TintTextView) objArr[21], (TintTextView) objArr[9], (TintTextView) objArr[16], (TintTextView) objArr[6], (TintTextView) objArr[13], (TintTextView) objArr[20], (TintTextView) objArr[18], (TintTextView) objArr[15], (TintTextView) objArr[8], (MediumTextView) objArr[2]);
        this.f56492t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56491q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
