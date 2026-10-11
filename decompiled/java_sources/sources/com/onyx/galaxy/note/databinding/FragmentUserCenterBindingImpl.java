package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;

/* loaded from: classes9.dex */
public class FragmentUserCenterBindingImpl extends FragmentUserCenterBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56887u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56888v0;

    /* renamed from: q0 */
    @Nullable
    public final LayoutUsercenterLoadingBinding f56889q0;

    /* renamed from: t0 */
    public long f56890t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56888v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.header1, 3);
        sparseIntArray.put(C10651R.id.header2, 4);
        sparseIntArray.put(C10651R.id.title_bar, 5);
        sparseIntArray.put(C10651R.id.back_button, 6);
        sparseIntArray.put(C10651R.id.title_text, 7);
        sparseIntArray.put(C10651R.id.webView, 8);
        sparseIntArray.put(C10651R.id.offlinePlaceholderView, 9);
        sparseIntArray.put(C10651R.id.tipText, 10);
        sparseIntArray.put(C10651R.id.accountSettingButton, 11);
        sparseIntArray.put(C10651R.id.accountSettingText, 12);
    }

    public FragmentUserCenterBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f56887u0, f56888v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56890t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56890t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56890t0 = 1L;
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

    public FragmentUserCenterBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[11], (TextView) objArr[12], (TintImageView) objArr[6], (ImageView) objArr[3], (ImageView) objArr[4], (LinearLayout) objArr[1], (LinearLayout) objArr[9], (ConstraintLayout) objArr[0], (TextView) objArr[10], (FrameLayout) objArr[5], (TextView) objArr[7], (OnyxWebView) objArr[8]);
        this.f56890t0 = -1L;
        this.loadingView.setTag(null);
        Object obj = objArr[2];
        this.f56889q0 = obj != null ? LayoutUsercenterLoadingBinding.bind((View) obj) : null;
        this.rootLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
