package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.FragmentContainerView;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupCounterSettingBindingImpl extends PopupCounterSettingBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57580t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57581u0;

    /* renamed from: q0 */
    public long f57582q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57581u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.rl_navigation_bar, 1);
        sparseIntArray.put(C10651R.id.back, 2);
        sparseIntArray.put(C10651R.id.iv_alarm_setting, 3);
        sparseIntArray.put(C10651R.id.tv_title, 4);
        sparseIntArray.put(C10651R.id.close, 5);
        sparseIntArray.put(C10651R.id.divider_navigation, 6);
        sparseIntArray.put(C10651R.id.nav_timer_host_fragment_main, 7);
    }

    public PopupCounterSettingBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f57580t0, f57581u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57582q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57582q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57582q0 = 1L;
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

    public PopupCounterSettingBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[2], (TintImageView) objArr[5], (TintView) objArr[6], (TintFrameLayout) objArr[0], (TintImageView) objArr[3], (FragmentContainerView) objArr[7], (RelativeLayout) objArr[1], (MediumTextView) objArr[4]);
        this.f57582q0 = -1L;
        this.flRoot.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
