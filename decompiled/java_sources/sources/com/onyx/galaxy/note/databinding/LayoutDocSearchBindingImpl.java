package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TouchModeTintTextInputEditTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.TextSwitchButton;

/* loaded from: classes9.dex */
public class LayoutDocSearchBindingImpl extends LayoutDocSearchBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57331u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57332v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f57333q0;

    /* renamed from: t0 */
    public long f57334t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57332v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.input_layout, 1);
        sparseIntArray.put(C10651R.id.input_edit_text_view, 2);
        sparseIntArray.put(C10651R.id.iv_search, 3);
        sparseIntArray.put(C10651R.id.iv_clear, 4);
        sparseIntArray.put(C10651R.id.hwrSwitchButton, 5);
        sparseIntArray.put(C10651R.id.rv_filter, 6);
        sparseIntArray.put(C10651R.id.searchStatusLayout, 7);
        sparseIntArray.put(C10651R.id.searchResult, 8);
        sparseIntArray.put(C10651R.id.highlightNavLayout, 9);
        sparseIntArray.put(C10651R.id.gotoPrevHighlight, 10);
        sparseIntArray.put(C10651R.id.currentHighlightIndex, 11);
        sparseIntArray.put(C10651R.id.gotoNextHighlight, 12);
    }

    public LayoutDocSearchBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f57331u0, f57332v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57334t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57334t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57334t0 = 1L;
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

    public LayoutDocSearchBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[11], (TintImageView) objArr[12], (TintImageView) objArr[10], (TintLinearLayout) objArr[9], (TextSwitchButton) objArr[5], (TouchModeTintTextInputEditTextView) objArr[2], (TintTextInputLayoutView) objArr[1], (TintImageView) objArr[4], (TintImageView) objArr[3], (TintRecycleView) objArr[6], (TintTextView) objArr[8], (TintLinearLayout) objArr[7]);
        this.f57334t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f57333q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
