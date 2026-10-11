package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogEditFolderBindingImpl extends DialogEditFolderBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56379u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56380v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56381q0;

    /* renamed from: t0 */
    public long f56382t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56380v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_cancel, 1);
        sparseIntArray.put(C10651R.id.textView4, 2);
        sparseIntArray.put(C10651R.id.tv_ok, 3);
        sparseIntArray.put(C10651R.id.iv_face_bottom, 4);
        sparseIntArray.put(C10651R.id.iv_face_fourth_top, 5);
        sparseIntArray.put(C10651R.id.iv_face_thr_top, 6);
        sparseIntArray.put(C10651R.id.iv_face_sec_top, 7);
        sparseIntArray.put(C10651R.id.f53355rv, 8);
        sparseIntArray.put(C10651R.id.tv_counter, 9);
        sparseIntArray.put(C10651R.id.til_name, 10);
        sparseIntArray.put(C10651R.id.tie_name, 11);
    }

    public DialogEditFolderBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f56379u0, f56380v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56382t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56382t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56382t0 = 1L;
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

    public DialogEditFolderBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ShapeableImageView) objArr[4], (ShapeableImageView) objArr[5], (ShapeableImageView) objArr[7], (ShapeableImageView) objArr[6], (RecyclerView) objArr[8], (TintTextView) objArr[2], (MaxLengthInputTextEdit) objArr[11], (TintTextInputLayoutView) objArr[10], (TintTextView) objArr[1], (TintTextView) objArr[9], (TintTextView) objArr[3]);
        this.f56382t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56381q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
