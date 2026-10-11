package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;

/* loaded from: classes9.dex */
public class LayoutTitleEditTextBindingImpl extends LayoutTitleEditTextBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57506t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57507u0 = null;

    /* renamed from: q0 */
    public long f57508q0;

    public LayoutTitleEditTextBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f57506t0, f57507u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f57508q0;
            this.f57508q0 = 0L;
        }
        NoteTabData noteTabData = this.mModel;
        long j2 = j & 3;
        String title = (j2 == 0 || noteTabData == null) ? null : noteTabData.getTitle();
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.edittext, title);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57508q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57508q0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutTitleEditTextBinding
    public void setModel(@Nullable NoteTabData noteTabData) {
        this.mModel = noteTabData;
        synchronized (this) {
            this.f57508q0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((NoteTabData) obj);
        return true;
    }

    public LayoutTitleEditTextBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TouchModeMaxLengthInputTextEdit) objArr[1], (TintTextInputLayoutView) objArr[0]);
        this.f57508q0 = -1L;
        this.edittext.setTag(null);
        this.tilName.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
