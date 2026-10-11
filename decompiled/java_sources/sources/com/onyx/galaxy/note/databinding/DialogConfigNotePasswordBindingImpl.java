package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;

/* loaded from: classes9.dex */
public class DialogConfigNotePasswordBindingImpl extends DialogConfigNotePasswordBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56338u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56339v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56340q0;

    /* renamed from: t0 */
    public long f56341t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56339v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_cancel, 1);
        sparseIntArray.put(C10651R.id.tv_title, 2);
        sparseIntArray.put(C10651R.id.tv_ok, 3);
        sparseIntArray.put(C10651R.id.textView5, 4);
        sparseIntArray.put(C10651R.id.til_pwd, 5);
        sparseIntArray.put(C10651R.id.tie_pwd, 6);
        sparseIntArray.put(C10651R.id.btn_toggle_pwd_visible, 7);
        sparseIntArray.put(C10651R.id.textView6, 8);
        sparseIntArray.put(C10651R.id.til_confirm_pwd, 9);
        sparseIntArray.put(C10651R.id.tie_confirm_pwd, 10);
        sparseIntArray.put(C10651R.id.btn_toggle_confirm_pwd_visible, 11);
        sparseIntArray.put(C10651R.id.tv_finger_title, 12);
        sparseIntArray.put(C10651R.id.tv_finger_sub_title, 13);
        sparseIntArray.put(C10651R.id.switch_finger, 14);
        sparseIntArray.put(C10651R.id.group_finger, 15);
    }

    public DialogConfigNotePasswordBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 16, f56338u0, f56339v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56341t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56341t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56341t0 = 1L;
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

    public DialogConfigNotePasswordBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[11], (TintImageView) objArr[7], (Group) objArr[15], (ManualSwitchCompat) objArr[14], (TintTextView) objArr[4], (TintTextView) objArr[8], (MaxLengthInputTextEdit) objArr[10], (MaxLengthInputTextEdit) objArr[6], (TintTextInputLayoutView) objArr[9], (TintTextInputLayoutView) objArr[5], (TintTextView) objArr[1], (TintTextView) objArr[13], (TintTextView) objArr[12], (TintTextView) objArr[3], (MediumTextView) objArr[2]);
        this.f56341t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56340q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
