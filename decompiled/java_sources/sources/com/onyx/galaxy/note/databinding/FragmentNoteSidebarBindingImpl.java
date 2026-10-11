package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.SlideTintTabLayout;

/* loaded from: classes9.dex */
public class FragmentNoteSidebarBindingImpl extends FragmentNoteSidebarBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56776t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56777u0;

    /* renamed from: q0 */
    public long f56778q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56777u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.titleLayout, 1);
        sparseIntArray.put(C10651R.id.iv_add, 2);
        sparseIntArray.put(C10651R.id.title, 3);
        sparseIntArray.put(C10651R.id.fullscreenTabLayoutContainer, 4);
        sparseIntArray.put(C10651R.id.fullscreenTabLayout, 5);
        sparseIntArray.put(C10651R.id.close, 6);
        sparseIntArray.put(C10651R.id.selection_layout, 7);
        sparseIntArray.put(C10651R.id.close_text, 8);
        sparseIntArray.put(C10651R.id.select_all, 9);
        sparseIntArray.put(C10651R.id.finish, 10);
        sparseIntArray.put(C10651R.id.iv_thumb_size, 11);
        sparseIntArray.put(C10651R.id.topDivider, 12);
        sparseIntArray.put(C10651R.id.tab_layout, 13);
        sparseIntArray.put(C10651R.id.bottomDivider, 14);
        sparseIntArray.put(C10651R.id.view_pager, 15);
        sparseIntArray.put(C10651R.id.switch_view_type, 16);
        sparseIntArray.put(C10651R.id.bottom_tab_layout, 17);
    }

    public FragmentNoteSidebarBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 18, f56776t0, f56777u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56778q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56778q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56778q0 = 1L;
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

    public FragmentNoteSidebarBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintView) objArr[14], (TintTabLayoutView) objArr[17], (TintImageView) objArr[6], (TintTextView) objArr[8], (MediumTextView) objArr[10], (SlideTintTabLayout) objArr[5], (TintRelativeLayout) objArr[4], (TintImageView) objArr[2], (TintImageView) objArr[11], (TintFrameLayout) objArr[0], (TintRadioButton) objArr[9], (RelativeLayout) objArr[7], (TintTextView) objArr[16], (TintTabLayoutView) objArr[13], (MediumTextView) objArr[3], (ConstraintLayout) objArr[1], (TintView) objArr[12], (ViewPager2) objArr[15]);
        this.f56778q0 = -1L;
        this.rootFragmentLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
