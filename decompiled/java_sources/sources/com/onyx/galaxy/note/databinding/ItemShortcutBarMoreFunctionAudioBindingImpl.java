package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemShortcutBarMoreFunctionAudioBindingImpl extends ItemShortcutBarMoreFunctionAudioBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57192u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57193v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f57194q0;

    /* renamed from: t0 */
    public long f57195t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57193v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_icon, 1);
        sparseIntArray.put(C10651R.id.iv_icon_record, 2);
        sparseIntArray.put(C10651R.id.tv_title, 3);
        sparseIntArray.put(C10651R.id.tv_title_record, 4);
        sparseIntArray.put(C10651R.id.group_play, 5);
        sparseIntArray.put(C10651R.id.group_record, 6);
    }

    public ItemShortcutBarMoreFunctionAudioBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f57192u0, f57193v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57195t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57195t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57195t0 = 1L;
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

    public ItemShortcutBarMoreFunctionAudioBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (Group) objArr[5], (Group) objArr[6], (TintImageView) objArr[1], (TintImageView) objArr[2], (TintTextView) objArr[3], (TintTextView) objArr[4]);
        this.f57195t0 = -1L;
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f57194q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
