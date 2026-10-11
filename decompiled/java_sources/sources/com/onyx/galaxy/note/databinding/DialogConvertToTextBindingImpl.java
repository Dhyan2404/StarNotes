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
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.TextSwitchButton;

/* loaded from: classes9.dex */
public class DialogConvertToTextBindingImpl extends DialogConvertToTextBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56351t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56352u0;

    /* renamed from: q0 */
    public long f56353q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56352u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_layout, 1);
        sparseIntArray.put(C10651R.id.btn_cancel, 2);
        sparseIntArray.put(C10651R.id.convert, 3);
        sparseIntArray.put(C10651R.id.langSelectLayout, 4);
        sparseIntArray.put(C10651R.id.langText, 5);
        sparseIntArray.put(C10651R.id.spacingView, 6);
        sparseIntArray.put(C10651R.id.arrowButton, 7);
        sparseIntArray.put(C10651R.id.content, 8);
        sparseIntArray.put(C10651R.id.ll_btn_layout, 9);
        sparseIntArray.put(C10651R.id.smartHwrButton, 10);
        sparseIntArray.put(C10651R.id.copy, 11);
        sparseIntArray.put(C10651R.id.buttonDivider, 12);
        sparseIntArray.put(C10651R.id.export, 13);
        sparseIntArray.put(C10651R.id.recognizing, 14);
        sparseIntArray.put(C10651R.id.iv_loading, 15);
    }

    public DialogConvertToTextBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 16, f56351t0, f56352u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56353q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56353q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56353q0 = 1L;
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

    public DialogConvertToTextBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[7], (TintTextView) objArr[2], (TintView) objArr[12], (TouchModeMaxLengthEditText) objArr[8], (TintTextView) objArr[3], (TintTextView) objArr[11], (TintTextView) objArr[13], (ImageView) objArr[15], (TintLinearLayout) objArr[4], (TintTextView) objArr[5], (LinearLayoutCompat) objArr[9], (LinearLayout) objArr[14], (TintLinearLayout) objArr[0], (TextSwitchButton) objArr[10], (TintView) objArr[6], (RelativeLayout) objArr[1]);
        this.f56353q0 = -1L;
        this.f56350rl.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
