package com.onyx.android.sdk.pay.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.pay.C7520R;
import com.onyx.android.sdk.theme.widgets.TintCardView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes8.dex */
public class DialogPayBindingImpl extends DialogPayBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f44128u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f44129v0;

    /* renamed from: q0 */
    @NonNull
    public final TintCardView f44130q0;

    /* renamed from: t0 */
    public long f44131t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f44129v0 = sparseIntArray;
        sparseIntArray.put(C7520R.id.fly_header, 1);
        sparseIntArray.put(C7520R.id.iv_close, 2);
        sparseIntArray.put(C7520R.id.lly_pay_contain, 3);
        sparseIntArray.put(C7520R.id.lly_wechat_pay, 4);
        sparseIntArray.put(C7520R.id.lly_ali_pay, 5);
        sparseIntArray.put(C7520R.id.view_wechat_line, 6);
        sparseIntArray.put(C7520R.id.view_ali_line, 7);
        sparseIntArray.put(C7520R.id.tv_order_name, 8);
        sparseIntArray.put(C7520R.id.tv_actual_price, 9);
        sparseIntArray.put(C7520R.id.tv_original_price, 10);
        sparseIntArray.put(C7520R.id.fly_qrcode, 11);
        sparseIntArray.put(C7520R.id.iv_qrcode, 12);
        sparseIntArray.put(C7520R.id.wv_qrcode, 13);
        sparseIntArray.put(C7520R.id.lly_qrcode_invalid, 14);
        sparseIntArray.put(C7520R.id.tv_qrcode_tips, 15);
        sparseIntArray.put(C7520R.id.fly_qrcode_loading, 16);
        sparseIntArray.put(C7520R.id.iv_qrcode_loading, 17);
        sparseIntArray.put(C7520R.id.tv_pay, 18);
        sparseIntArray.put(C7520R.id.tv_agreement, 19);
        sparseIntArray.put(C7520R.id.fly_status, 20);
        sparseIntArray.put(C7520R.id.lly_pay_status, 21);
        sparseIntArray.put(C7520R.id.iv_pay_status, 22);
        sparseIntArray.put(C7520R.id.tv_pay_status, 23);
        sparseIntArray.put(C7520R.id.tv_pay_error_message, 24);
        sparseIntArray.put(C7520R.id.tv_pay_status_tips, 25);
        sparseIntArray.put(C7520R.id.tv_retry, 26);
        sparseIntArray.put(C7520R.id.fly_loading, 27);
        sparseIntArray.put(C7520R.id.iv_loading, 28);
        sparseIntArray.put(C7520R.id.tv_loading, 29);
    }

    public DialogPayBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 30, f44128u0, f44129v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f44131t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f44131t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f44131t0 = 1L;
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

    public DialogPayBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FrameLayout) objArr[1], (FrameLayout) objArr[27], (FrameLayout) objArr[11], (FrameLayout) objArr[16], (FrameLayout) objArr[20], (TintImageView) objArr[2], (TintImageView) objArr[28], (TintImageView) objArr[22], (TintImageView) objArr[12], (TintImageView) objArr[17], (LinearLayout) objArr[5], (LinearLayout) objArr[3], (LinearLayout) objArr[21], (TintLinearLayout) objArr[14], (LinearLayout) objArr[4], (TintTextView) objArr[9], (TintTextView) objArr[19], (TintTextView) objArr[29], (TintTextView) objArr[8], (TintTextView) objArr[10], (TintTextView) objArr[18], (TintTextView) objArr[24], (TintTextView) objArr[23], (TintTextView) objArr[25], (TintTextView) objArr[15], (TintTextView) objArr[26], (View) objArr[7], (View) objArr[6], (WebView) objArr[13]);
        this.f44131t0 = -1L;
        TintCardView tintCardView = (TintCardView) objArr[0];
        this.f44130q0 = tintCardView;
        tintCardView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
