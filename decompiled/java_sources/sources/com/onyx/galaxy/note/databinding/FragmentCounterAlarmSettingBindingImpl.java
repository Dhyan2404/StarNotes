package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarView;

/* loaded from: classes9.dex */
public class FragmentCounterAlarmSettingBindingImpl extends FragmentCounterAlarmSettingBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56627u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56628v0;

    /* renamed from: q0 */
    @NonNull
    public final TintLinearLayout f56629q0;

    /* renamed from: t0 */
    public long f56630t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56628v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.fl_alarm_count_down, 1);
        sparseIntArray.put(C10651R.id.switch_alarm_count_down, 2);
        sparseIntArray.put(C10651R.id.fl_alarm_multiple_count, 3);
        sparseIntArray.put(C10651R.id.tv_label_multiple_count, 4);
        sparseIntArray.put(C10651R.id.iv_multiple_count_tip, 5);
        sparseIntArray.put(C10651R.id.switch_alarm_multiple_count, 6);
        sparseIntArray.put(C10651R.id.iv_volume_down, 7);
        sparseIntArray.put(C10651R.id.iv_volume_up, 8);
        sparseIntArray.put(C10651R.id.seek_bar_volume, 9);
    }

    public FragmentCounterAlarmSettingBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f56627u0, f56628v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56630t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56630t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56630t0 = 1L;
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

    public FragmentCounterAlarmSettingBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintFrameLayout) objArr[1], (TintConstraintLayout) objArr[3], (TintTextView) objArr[5], (TintImageView) objArr[7], (TintImageView) objArr[8], (StickSeekBarView) objArr[9], (TintSwitchCompat) objArr[2], (TintSwitchCompat) objArr[6], (TintTextView) objArr[4]);
        this.f56630t0 = -1L;
        TintLinearLayout tintLinearLayout = (TintLinearLayout) objArr[0];
        this.f56629q0 = tintLinearLayout;
        tintLinearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
