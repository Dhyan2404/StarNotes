package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthEditText;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogOcrTextConvertBindingImpl extends DialogOcrTextConvertBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56486t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56487u0;

    /* renamed from: q0 */
    public long f56488q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56487u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_layout, 1);
        sparseIntArray.put(C10651R.id.btn_cancel, 2);
        sparseIntArray.put(C10651R.id.convert, 3);
        sparseIntArray.put(C10651R.id.content, 4);
        sparseIntArray.put(C10651R.id.ll_btn_layout, 5);
        sparseIntArray.put(C10651R.id.copy, 6);
        sparseIntArray.put(C10651R.id.export, 7);
        sparseIntArray.put(C10651R.id.recognizing, 8);
        sparseIntArray.put(C10651R.id.iv_loading, 9);
    }

    public DialogOcrTextConvertBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f56486t0, f56487u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56488q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56488q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56488q0 = 1L;
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

    public DialogOcrTextConvertBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[2], (TouchModeMaxLengthEditText) objArr[4], (TintTextView) objArr[3], (TintTextView) objArr[6], (TintTextView) objArr[7], (ImageView) objArr[9], (LinearLayoutCompat) objArr[5], (LinearLayout) objArr[8], (TintLinearLayout) objArr[0], (RelativeLayout) objArr[1]);
        this.f56488q0 = -1L;
        this.f56485rl.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
