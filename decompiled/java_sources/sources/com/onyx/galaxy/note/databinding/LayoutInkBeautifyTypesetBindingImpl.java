package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;

/* loaded from: classes9.dex */
public class LayoutInkBeautifyTypesetBindingImpl extends LayoutInkBeautifyTypesetBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57362t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57363u0;

    /* renamed from: q0 */
    public long f57364q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57363u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.fontSizeSeekbar, 1);
        sparseIntArray.put(C10651R.id.charSpacingSeekbar, 2);
        sparseIntArray.put(C10651R.id.lineSpacingSeekbar, 3);
        sparseIntArray.put(C10651R.id.restoreButton, 4);
    }

    public LayoutInkBeautifyTypesetBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57362t0, f57363u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57364q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57364q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57364q0 = 1L;
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

    public LayoutInkBeautifyTypesetBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (StickSeekBarContainer) objArr[2], (StickSeekBarContainer) objArr[1], (StickSeekBarContainer) objArr[3], (TintTextView) objArr[4], (TintLinearLayout) objArr[0]);
        this.f57364q0 = -1L;
        this.typesetLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
