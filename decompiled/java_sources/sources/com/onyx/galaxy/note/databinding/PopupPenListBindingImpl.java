package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupPenListBindingImpl extends PopupPenListBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57771u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57772v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57773q0;

    /* renamed from: t0 */
    public long f57774t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57772v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.batch, 1);
        sparseIntArray.put(C10651R.id.create_pen_box, 2);
        sparseIntArray.put(C10651R.id.pen_box_select_all, 3);
        sparseIntArray.put(C10651R.id.pen_box_finish, 4);
        sparseIntArray.put(C10651R.id.batch_action_view, 5);
        sparseIntArray.put(C10651R.id.delete_pen_box, 6);
        sparseIntArray.put(C10651R.id.rename_pen_box, 7);
        sparseIntArray.put(C10651R.id.pen_box_list, 8);
    }

    public PopupPenListBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f57771u0, f57772v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57774t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57774t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57774t0 = 1L;
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

    public PopupPenListBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[1], (ConstraintLayout) objArr[5], (TintImageView) objArr[2], (TintTextView) objArr[6], (TintTextView) objArr[4], (RecyclerView) objArr[8], (TintTextView) objArr[3], (TintTextView) objArr[7]);
        this.f57774t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57773q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
