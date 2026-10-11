package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupDocOverviewActionBindingImpl extends PopupDocOverviewActionBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57606u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57607v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57608q0;

    /* renamed from: t0 */
    public long f57609t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57607v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.add_page_after_current_page, 1);
        sparseIntArray.put(C10651R.id.add_to_custom_paper, 2);
        sparseIntArray.put(C10651R.id.add_to_toc, 3);
        sparseIntArray.put(C10651R.id.rotate_current_page, 4);
        sparseIntArray.put(C10651R.id.duplicate_current_page, 5);
        sparseIntArray.put(C10651R.id.clone_current_page, 6);
        sparseIntArray.put(C10651R.id.paste_page, 7);
        sparseIntArray.put(C10651R.id.delete_current_page, 8);
    }

    public PopupDocOverviewActionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f57606u0, f57607v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57609t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57609t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57609t0 = 1L;
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

    public PopupDocOverviewActionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[1], (TintTextView) objArr[2], (TintTextView) objArr[3], (TintTextView) objArr[6], (TintTextView) objArr[8], (TintTextView) objArr[5], (TintTextView) objArr[7], (TintTextView) objArr[4]);
        this.f57609t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57608q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
