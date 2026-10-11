package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.PageMarginView;
import com.onyx.galaxy.note.editor.view.drag.DragProgressView;

/* loaded from: classes9.dex */
public class DragRightLayoutBindingImpl extends DragRightLayoutBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56567u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56568v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayoutCompat f56569q0;

    /* renamed from: t0 */
    public long f56570t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56568v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.allow_left, 1);
        sparseIntArray.put(C10651R.id.state_image, 2);
        sparseIntArray.put(C10651R.id.state_text, 3);
        sparseIntArray.put(C10651R.id.template_thumbnail, 4);
    }

    public DragRightLayoutBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f56567u0, f56568v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56570t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56570t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56570t0 = 1L;
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

    public DragRightLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[1], (DragProgressView) objArr[2], (TintTextView) objArr[3], (PageMarginView) objArr[4]);
        this.f56570t0 = -1L;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) objArr[0];
        this.f56569q0 = linearLayoutCompat;
        linearLayoutCompat.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
