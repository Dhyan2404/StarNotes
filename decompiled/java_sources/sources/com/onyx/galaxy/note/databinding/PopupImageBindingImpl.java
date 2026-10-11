package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public class PopupImageBindingImpl extends PopupImageBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57647u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57648v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57649q0;

    /* renamed from: t0 */
    public long f57650t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57648v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.fl_height, 1);
        sparseIntArray.put(C10651R.id.fl_content_layout, 2);
        sparseIntArray.put(C10651R.id.divider, 3);
        sparseIntArray.put(C10651R.id.tv_select, 4);
        sparseIntArray.put(C10651R.id.image_list, 5);
        sparseIntArray.put(C10651R.id.tv_empty, 6);
        sparseIntArray.put(C10651R.id.tv_insert_from_gallery, 7);
        sparseIntArray.put(C10651R.id.tv_camera, 8);
        sparseIntArray.put(C10651R.id.tv_batch_insert, 9);
    }

    public PopupImageBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f57647u0, f57648v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57650t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57650t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57650t0 = 1L;
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

    public PopupImageBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintView) objArr[3], (FrameLayout) objArr[2], (FrameLayout) objArr[1], (MaxHeightRecyclerView) objArr[5], (TintTextView) objArr[9], (TintTextView) objArr[8], (TintTextView) objArr[6], (TintTextView) objArr[7], (TintTextView) objArr[4]);
        this.f57650t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57649q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
