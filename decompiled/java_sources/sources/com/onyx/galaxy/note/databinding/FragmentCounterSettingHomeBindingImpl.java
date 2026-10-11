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
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentCounterSettingHomeBindingImpl extends FragmentCounterSettingHomeBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56635u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56636v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f56637q0;

    /* renamed from: t0 */
    public long f56638t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56636v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_container, 1);
        sparseIntArray.put(C10651R.id.radio_group, 2);
        sparseIntArray.put(C10651R.id.rb_count_down, 3);
        sparseIntArray.put(C10651R.id.rb_count_up, 4);
        sparseIntArray.put(C10651R.id.vp_container, 5);
    }

    public FragmentCounterSettingHomeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f56635u0, f56636v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56638t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56638t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56638t0 = 1L;
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

    public FragmentCounterSettingHomeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RadioGroup) objArr[2], (TintRadioButton) objArr[3], (TintRadioButton) objArr[4], (TintFrameLayout) objArr[1], (ViewPager2) objArr[5]);
        this.f56638t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f56637q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
