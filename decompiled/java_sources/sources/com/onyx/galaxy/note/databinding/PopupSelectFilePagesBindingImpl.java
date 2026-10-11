package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer;

/* loaded from: classes9.dex */
public class PopupSelectFilePagesBindingImpl extends PopupSelectFilePagesBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57804u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57805v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57806q0;

    /* renamed from: t0 */
    public long f57807t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57805v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.btn_back, 1);
        sparseIntArray.put(C10651R.id.fileName, 2);
        sparseIntArray.put(C10651R.id.import_action, 3);
        sparseIntArray.put(C10651R.id.file_select_all, 4);
        sparseIntArray.put(C10651R.id.swipe_container, 5);
    }

    public PopupSelectFilePagesBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f57804u0, f57805v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57807t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57807t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57807t0 = 1L;
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

    public PopupSelectFilePagesBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[1], (TintTextView) objArr[2], (TintCheckBox) objArr[4], (TintTextView) objArr[3], (SwipeRecycleViewContainer) objArr[5]);
        this.f57807t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57806q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
