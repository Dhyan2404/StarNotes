package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentSettingsToolsBindingImpl extends FragmentSettingsToolsBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56865u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56866v0;

    /* renamed from: q0 */
    @NonNull
    public final TintLinearLayout f56867q0;

    /* renamed from: t0 */
    public long f56868t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56866v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.switch_graph_convert, 1);
        sparseIntArray.put(C10651R.id.tv_switch_graph_convert_with_pressure, 2);
        sparseIntArray.put(C10651R.id.switch_graph_convert_with_pressure, 3);
        sparseIntArray.put(C10651R.id.switch_graph_filling, 4);
        sparseIntArray.put(C10651R.id.switch_stylus_select_text, 5);
        sparseIntArray.put(C10651R.id.long_press_of_page_menu, 6);
    }

    public FragmentSettingsToolsBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f56865u0, f56866v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56868t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56868t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56868t0 = 1L;
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

    public FragmentSettingsToolsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintSwitchCompat) objArr[6], (TintSwitchCompat) objArr[1], (TintSwitchCompat) objArr[3], (TintSwitchCompat) objArr[4], (TintSwitchCompat) objArr[5], (TintTextView) objArr[2]);
        this.f56868t0 = -1L;
        TintLinearLayout tintLinearLayout = (TintLinearLayout) objArr[0];
        this.f56867q0 = tintLinearLayout;
        tintLinearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
