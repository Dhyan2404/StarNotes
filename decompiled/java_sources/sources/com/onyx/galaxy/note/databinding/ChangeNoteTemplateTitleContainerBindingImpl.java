package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ChangeNoteTemplateTitleContainerBindingImpl extends ChangeNoteTemplateTitleContainerBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56294t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56295u0;

    /* renamed from: q0 */
    public long f56296q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56295u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_note_template_back, 1);
        sparseIntArray.put(C10651R.id.tv_template_apply, 2);
        sparseIntArray.put(C10651R.id.templateChangeTabLayout, 3);
        sparseIntArray.put(C10651R.id.tv_change_new_page_template_title, 4);
    }

    public ChangeNoteTemplateTitleContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f56294t0, f56295u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56296q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56296q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56296q0 = 1L;
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

    public ChangeNoteTemplateTitleContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintRelativeLayout) objArr[0], (TintTextView) objArr[1], (TintTabLayoutView) objArr[3], (MediumTextView) objArr[4], (MediumTextView) objArr[2]);
        this.f56296q0 = -1L;
        this.changeTitleLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
