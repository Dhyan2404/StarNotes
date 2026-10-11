package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentEditCounterSettingBindingImpl extends FragmentEditCounterSettingBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56666u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56667v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f56668q0;

    /* renamed from: t0 */
    public long f56669t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56667v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_cancel, 1);
        sparseIntArray.put(C10651R.id.tv_title, 2);
        sparseIntArray.put(C10651R.id.tv_save, 3);
        sparseIntArray.put(C10651R.id.radio_group, 4);
        sparseIntArray.put(C10651R.id.rb_count_down_normal, 5);
        sparseIntArray.put(C10651R.id.rb_count_down_multiple, 6);
        sparseIntArray.put(C10651R.id.vp_container, 7);
    }

    public FragmentEditCounterSettingBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f56666u0, f56667v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56669t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56669t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56669t0 = 1L;
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

    public FragmentEditCounterSettingBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RadioGroup) objArr[4], (TintRadioButton) objArr[6], (TintRadioButton) objArr[5], (TintTextView) objArr[1], (TintTextView) objArr[3], (MediumTextView) objArr[2], (ViewPager2) objArr[7]);
        this.f56669t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f56668q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
