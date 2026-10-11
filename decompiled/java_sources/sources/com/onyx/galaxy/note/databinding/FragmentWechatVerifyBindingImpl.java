package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.LiveData;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.onyx.galaxy.note.usercenter.viewmodel.WechatVerifyViewModel;

/* loaded from: classes9.dex */
public class FragmentWechatVerifyBindingImpl extends FragmentWechatVerifyBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56894t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56895u0;

    /* renamed from: q0 */
    public long f56896q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56895u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_bar, 3);
        sparseIntArray.put(C10651R.id.back_button, 4);
        sparseIntArray.put(C10651R.id.blank_top, 5);
        sparseIntArray.put(C10651R.id.qr_code_image, 6);
        sparseIntArray.put(C10651R.id.scan_tip_text, 7);
        sparseIntArray.put(C10651R.id.or_tip_text, 8);
        sparseIntArray.put(C10651R.id.blank_bottom, 9);
        sparseIntArray.put(C10651R.id.webWidget, 10);
    }

    public FragmentWechatVerifyBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f56894t0, f56895u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f56896q0;
            this.f56896q0 = 0L;
        }
        WechatVerifyViewModel wechatVerifyViewModel = this.mVerifyViewModel;
        String str = null;
        boolean z = false;
        if ((15 & j) != 0) {
            if ((j & 11) != 0) {
                LiveData<Boolean> isNextButtonEnable = wechatVerifyViewModel != null ? wechatVerifyViewModel.isNextButtonEnable() : null;
                updateLiveDataRegistration(1, isNextButtonEnable);
                z = ViewDataBinding.safeUnbox(isNextButtonEnable != null ? isNextButtonEnable.getValue() : null);
            }
            if ((j & 13) != 0) {
                LiveData<String> fragmentTitle = wechatVerifyViewModel != null ? wechatVerifyViewModel.getFragmentTitle() : null;
                updateLiveDataRegistration(2, fragmentTitle);
                if (fragmentTitle != null) {
                    str = fragmentTitle.getValue();
                }
            }
        }
        if ((j & 11) != 0) {
            this.startAppButton.setEnabled(z);
        }
        if ((j & 13) != 0) {
            TextViewBindingAdapter.setText(this.titleText, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56896q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56896q0 = 8L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45310r((WechatVerifyViewModel) obj, i2);
        }
        if (i == 1) {
            return m45312t((LiveData) obj, i2);
        }
        if (i != 2) {
            return false;
        }
        return m45311s((LiveData) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45310r(WechatVerifyViewModel wechatVerifyViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56896q0 |= 1;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45311s(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56896q0 |= 4;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (15 != i) {
            return false;
        }
        setVerifyViewModel((WechatVerifyViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentWechatVerifyBinding
    public void setVerifyViewModel(@Nullable WechatVerifyViewModel wechatVerifyViewModel) {
        updateRegistration(0, wechatVerifyViewModel);
        this.mVerifyViewModel = wechatVerifyViewModel;
        synchronized (this) {
            this.f56896q0 |= 1;
        }
        notifyPropertyChanged(15);
        super.requestRebind();
    }

    /* renamed from: t */
    public final boolean m45312t(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56896q0 |= 2;
        }
        return true;
    }

    public FragmentWechatVerifyBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3, (TintImageView) objArr[4], (View) objArr[9], (View) objArr[5], (TintTextView) objArr[8], (ShapeableImageView) objArr[6], (TintConstraintLayout) objArr[0], (TintTextView) objArr[7], (MaterialButton) objArr[2], (FrameLayout) objArr[3], (TintTextView) objArr[1], (WechatLoadWebWidget) objArr[10]);
        this.f56896q0 = -1L;
        this.rootLayout.setTag(null);
        this.startAppButton.setTag(null);
        this.titleText.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
