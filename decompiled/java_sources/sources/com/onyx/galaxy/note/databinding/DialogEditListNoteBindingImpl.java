package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogEditListNoteBindingImpl extends DialogEditListNoteBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56383u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56384v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56385q0;

    /* renamed from: t0 */
    public long f56386t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56384v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_cancel, 1);
        sparseIntArray.put(C10651R.id.textView4, 2);
        sparseIntArray.put(C10651R.id.tv_ok, 3);
        sparseIntArray.put(C10651R.id.textView5, 4);
        sparseIntArray.put(C10651R.id.til_name, 5);
        sparseIntArray.put(C10651R.id.tie_name, 6);
        sparseIntArray.put(C10651R.id.tv_counter, 7);
    }

    public DialogEditListNoteBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f56383u0, f56384v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56386t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56386t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56386t0 = 1L;
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

    public DialogEditListNoteBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (MediumTextView) objArr[2], (TintTextView) objArr[4], (MaxLengthInputTextEdit) objArr[6], (TintTextInputLayoutView) objArr[5], (TintTextView) objArr[1], (TintTextView) objArr[7], (TintTextView) objArr[3]);
        this.f56386t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56385q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
