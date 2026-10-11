package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.aitsuki.swipe.SwipeMenuRecyclerView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupAudioListBindingImpl extends PopupAudioListBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57552u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57553v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57554q0;

    /* renamed from: t0 */
    public long f57555t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57553v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.recyclerView, 1);
        sparseIntArray.put(C10651R.id.selection, 2);
        sparseIntArray.put(C10651R.id.selection_layout, 3);
        sparseIntArray.put(C10651R.id.select_all, 4);
        sparseIntArray.put(C10651R.id.delete, 5);
        sparseIntArray.put(C10651R.id.finish, 6);
    }

    public PopupAudioListBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f57552u0, f57553v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57555t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57555t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57555t0 = 1L;
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

    public PopupAudioListBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[5], (TintTextView) objArr[6], (SwipeMenuRecyclerView) objArr[1], (TintTextView) objArr[4], (TintTextView) objArr[2], (RelativeLayout) objArr[3]);
        this.f57555t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57554q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
