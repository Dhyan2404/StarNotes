package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyHuaweiViewModel;

/* loaded from: classes9.dex */
public class LayoutAccountVerifyHuaweiBindingImpl extends LayoutAccountVerifyHuaweiBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57264v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f57265w0 = null;

    /* renamed from: q0 */
    @NonNull
    public final TintLinearLayout f57266q0;

    /* renamed from: t0 */
    public OnClickListenerImpl f57267t0;

    /* renamed from: u0 */
    public long f57268u0;

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl implements View.OnClickListener {

        /* renamed from: e */
        public AccountVerifyHuaweiViewModel f57269e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57269e.onNextButtonClick(view);
        }

        public OnClickListenerImpl setValue(AccountVerifyHuaweiViewModel accountVerifyHuaweiViewModel) {
            this.f57269e = accountVerifyHuaweiViewModel;
            if (accountVerifyHuaweiViewModel == null) {
                return null;
            }
            return this;
        }
    }

    public LayoutAccountVerifyHuaweiBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f57264v0, f57265w0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        OnClickListenerImpl onClickListenerImpl;
        synchronized (this) {
            j = this.f57268u0;
            this.f57268u0 = 0L;
        }
        AccountVerifyHuaweiViewModel accountVerifyHuaweiViewModel = this.mHuaweiViewModel;
        long j2 = j & 3;
        if (j2 == 0 || accountVerifyHuaweiViewModel == null) {
            onClickListenerImpl = null;
        } else {
            OnClickListenerImpl onClickListenerImpl2 = this.f57267t0;
            if (onClickListenerImpl2 == null) {
                onClickListenerImpl2 = new OnClickListenerImpl();
                this.f57267t0 = onClickListenerImpl2;
            }
            onClickListenerImpl = onClickListenerImpl2.setValue(accountVerifyHuaweiViewModel);
        }
        if (j2 != 0) {
            this.nextButton.setOnClickListener(onClickListenerImpl);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57268u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57268u0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45320r((AccountVerifyHuaweiViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45320r(AccountVerifyHuaweiViewModel accountVerifyHuaweiViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57268u0 |= 1;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutAccountVerifyHuaweiBinding
    public void setHuaweiViewModel(@Nullable AccountVerifyHuaweiViewModel accountVerifyHuaweiViewModel) {
        updateRegistration(0, accountVerifyHuaweiViewModel);
        this.mHuaweiViewModel = accountVerifyHuaweiViewModel;
        synchronized (this) {
            this.f57268u0 |= 1;
        }
        notifyPropertyChanged(4);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (4 != i) {
            return false;
        }
        setHuaweiViewModel((AccountVerifyHuaweiViewModel) obj);
        return true;
    }

    public LayoutAccountVerifyHuaweiBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (TintTextView) objArr[1]);
        this.f57268u0 = -1L;
        TintLinearLayout tintLinearLayout = (TintLinearLayout) objArr[0];
        this.f57266q0 = tintLinearLayout;
        tintLinearLayout.setTag(null);
        this.nextButton.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
