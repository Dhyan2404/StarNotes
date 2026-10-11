package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyWechatViewModel;

/* loaded from: classes9.dex */
public class LayoutAccountVerifyWechatBindingImpl extends LayoutAccountVerifyWechatBinding {

    /* renamed from: w0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57296w0 = null;

    /* renamed from: x0 */
    @Nullable
    public static final SparseIntArray f57297x0;

    /* renamed from: q0 */
    @NonNull
    public final TintLinearLayout f57298q0;

    /* renamed from: t0 */
    public OnClickListenerImpl f57299t0;

    /* renamed from: u0 */
    public OnClickListenerImpl1 f57300u0;

    /* renamed from: v0 */
    public long f57301v0;

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl implements View.OnClickListener {

        /* renamed from: e */
        public AccountVerifyWechatViewModel f57302e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57302e.onNextButtonClick(view);
        }

        public OnClickListenerImpl setValue(AccountVerifyWechatViewModel accountVerifyWechatViewModel) {
            this.f57302e = accountVerifyWechatViewModel;
            if (accountVerifyWechatViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl1 implements View.OnClickListener {

        /* renamed from: e */
        public AccountVerifyWechatViewModel f57303e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57303e.onCodeImageClick(view);
        }

        public OnClickListenerImpl1 setValue(AccountVerifyWechatViewModel accountVerifyWechatViewModel) {
            this.f57303e = accountVerifyWechatViewModel;
            if (accountVerifyWechatViewModel == null) {
                return null;
            }
            return this;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57297x0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.webWidget, 3);
    }

    public LayoutAccountVerifyWechatBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f57296w0, f57297x0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        boolean z;
        OnClickListenerImpl1 onClickListenerImpl1;
        OnClickListenerImpl onClickListenerImpl;
        synchronized (this) {
            j = this.f57301v0;
            this.f57301v0 = 0L;
        }
        AccountVerifyWechatViewModel accountVerifyWechatViewModel = this.mWechatViewModel;
        long j2 = 7 & j;
        OnClickListenerImpl onClickListenerImpl2 = null;
        if (j2 != 0) {
            if ((j & 5) == 0 || accountVerifyWechatViewModel == null) {
                onClickListenerImpl = null;
                onClickListenerImpl1 = null;
            } else {
                OnClickListenerImpl onClickListenerImpl3 = this.f57299t0;
                if (onClickListenerImpl3 == null) {
                    onClickListenerImpl3 = new OnClickListenerImpl();
                    this.f57299t0 = onClickListenerImpl3;
                }
                onClickListenerImpl = onClickListenerImpl3.setValue(accountVerifyWechatViewModel);
                OnClickListenerImpl1 onClickListenerImpl12 = this.f57300u0;
                if (onClickListenerImpl12 == null) {
                    onClickListenerImpl12 = new OnClickListenerImpl1();
                    this.f57300u0 = onClickListenerImpl12;
                }
                onClickListenerImpl1 = onClickListenerImpl12.setValue(accountVerifyWechatViewModel);
            }
            MutableLiveData<Boolean> isNextButtonEnable = accountVerifyWechatViewModel != null ? accountVerifyWechatViewModel.isNextButtonEnable() : null;
            updateLiveDataRegistration(1, isNextButtonEnable);
            z = ViewDataBinding.safeUnbox(isNextButtonEnable != null ? isNextButtonEnable.getValue() : null);
            onClickListenerImpl2 = onClickListenerImpl;
        } else {
            z = false;
            onClickListenerImpl1 = null;
        }
        if (j2 != 0) {
            this.nextButton.setEnabled(z);
        }
        if ((j & 5) != 0) {
            this.nextButton.setOnClickListener(onClickListenerImpl2);
            this.qrCodeImage.setOnClickListener(onClickListenerImpl1);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57301v0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57301v0 = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45334r((AccountVerifyWechatViewModel) obj, i2);
        }
        if (i != 1) {
            return false;
        }
        return m45335s((MutableLiveData) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45334r(AccountVerifyWechatViewModel accountVerifyWechatViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57301v0 |= 1;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45335s(MutableLiveData<Boolean> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57301v0 |= 2;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (17 != i) {
            return false;
        }
        setWechatViewModel((AccountVerifyWechatViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutAccountVerifyWechatBinding
    public void setWechatViewModel(@Nullable AccountVerifyWechatViewModel accountVerifyWechatViewModel) {
        updateRegistration(0, accountVerifyWechatViewModel);
        this.mWechatViewModel = accountVerifyWechatViewModel;
        synchronized (this) {
            this.f57301v0 |= 1;
        }
        notifyPropertyChanged(17);
        super.requestRebind();
    }

    public LayoutAccountVerifyWechatBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (TintTextView) objArr[2], (ShapeableImageView) objArr[1], (WechatLoadWebWidget) objArr[3]);
        this.f57301v0 = -1L;
        TintLinearLayout tintLinearLayout = (TintLinearLayout) objArr[0];
        this.f57298q0 = tintLinearLayout;
        tintLinearLayout.setTag(null);
        this.nextButton.setTag(null);
        this.qrCodeImage.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
