package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public class DialogCreateTagBindingImpl extends DialogCreateTagBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56370u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56371v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56372q0;

    /* renamed from: t0 */
    public long f56373t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56371v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.cls_root, 1);
        sparseIntArray.put(C10651R.id.b_bg, 2);
        sparseIntArray.put(C10651R.id.tv_cancel, 3);
        sparseIntArray.put(C10651R.id.textView4, 4);
        sparseIntArray.put(C10651R.id.tv_ok, 5);
        sparseIntArray.put(C10651R.id.iv_tag_face_bottom, 6);
        sparseIntArray.put(C10651R.id.iv_tag_face_icon, 7);
        sparseIntArray.put(C10651R.id.f53355rv, 8);
        sparseIntArray.put(C10651R.id.textView5, 9);
        sparseIntArray.put(C10651R.id.til_name, 10);
        sparseIntArray.put(C10651R.id.tie_name, 11);
        sparseIntArray.put(C10651R.id.tv_counter, 12);
        sparseIntArray.put(C10651R.id.rv_filter, 13);
    }

    public DialogCreateTagBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f56370u0, f56371v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56373t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56373t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56373t0 = 1L;
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

    public DialogCreateTagBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintView) objArr[2], (TintConstraintLayout) objArr[1], (ImageView) objArr[6], (ImageView) objArr[7], (RecyclerView) objArr[8], (MaxHeightRecyclerView) objArr[13], (MediumTextView) objArr[4], (TintTextView) objArr[9], (MaxLengthInputTextEdit) objArr[11], (TintTextInputLayoutView) objArr[10], (TintTextView) objArr[3], (TintTextView) objArr[12], (MediumTextView) objArr[5]);
        this.f56373t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56372q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
