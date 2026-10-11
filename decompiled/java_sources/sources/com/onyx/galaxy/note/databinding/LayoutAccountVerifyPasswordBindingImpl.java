package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPasswordViewModel;

/* loaded from: classes9.dex */
public class LayoutAccountVerifyPasswordBindingImpl extends LayoutAccountVerifyPasswordBinding {

    /* renamed from: y0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57270y0 = null;

    /* renamed from: z0 */
    @Nullable
    public static final SparseIntArray f57271z0 = null;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f57272q0;

    /* renamed from: t0 */
    public OnClickListenerImpl f57273t0;

    /* renamed from: u0 */
    public OnClickListenerImpl1 f57274u0;

    /* renamed from: v0 */
    public InverseBindingListener f57275v0;

    /* renamed from: w0 */
    public InverseBindingListener f57276w0;

    /* renamed from: x0 */
    public long f57277x0;

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl implements View.OnClickListener {

        /* renamed from: e */
        public AccountVerifyPasswordViewModel f57278e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57278e.onHideButtonClick(view);
        }

        public OnClickListenerImpl setValue(AccountVerifyPasswordViewModel accountVerifyPasswordViewModel) {
            this.f57278e = accountVerifyPasswordViewModel;
            if (accountVerifyPasswordViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl1 implements View.OnClickListener {

        /* renamed from: e */
        public AccountVerifyPasswordViewModel f57279e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57279e.onNextButtonClick(view);
        }

        public OnClickListenerImpl1 setValue(AccountVerifyPasswordViewModel accountVerifyPasswordViewModel) {
            this.f57279e = accountVerifyPasswordViewModel;
            if (accountVerifyPasswordViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.LayoutAccountVerifyPasswordBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11691a implements InverseBindingListener {
        public C11691a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(LayoutAccountVerifyPasswordBindingImpl.this.passwordEdit);
            AccountVerifyPasswordViewModel accountVerifyPasswordViewModel = LayoutAccountVerifyPasswordBindingImpl.this.mPasswordViewModel;
            if (accountVerifyPasswordViewModel != null) {
                MutableLiveData<String> password = accountVerifyPasswordViewModel.getPassword();
                if (password != null) {
                    password.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.LayoutAccountVerifyPasswordBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11692b implements InverseBindingListener {
        public C11692b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(LayoutAccountVerifyPasswordBindingImpl.this.usernameEdit);
            AccountVerifyPasswordViewModel accountVerifyPasswordViewModel = LayoutAccountVerifyPasswordBindingImpl.this.mPasswordViewModel;
            if (accountVerifyPasswordViewModel != null) {
                MutableLiveData<String> username = accountVerifyPasswordViewModel.getUsername();
                if (username != null) {
                    username.setValue(textString);
                }
            }
        }
    }

    public LayoutAccountVerifyPasswordBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57270y0, f57271z0));
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x009f  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.LayoutAccountVerifyPasswordBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57277x0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57277x0 = 16L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45322s((LiveData) obj, i2);
        }
        if (i == 1) {
            return m45323t((MutableLiveData) obj, i2);
        }
        if (i == 2) {
            return m45321r((AccountVerifyPasswordViewModel) obj, i2);
        }
        if (i != 3) {
            return false;
        }
        return m45324u((MutableLiveData) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45321r(AccountVerifyPasswordViewModel accountVerifyPasswordViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57277x0 |= 4;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45322s(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57277x0 |= 1;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutAccountVerifyPasswordBinding
    public void setPasswordViewModel(@Nullable AccountVerifyPasswordViewModel accountVerifyPasswordViewModel) {
        updateRegistration(2, accountVerifyPasswordViewModel);
        this.mPasswordViewModel = accountVerifyPasswordViewModel;
        synchronized (this) {
            this.f57277x0 |= 4;
        }
        notifyPropertyChanged(9);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (9 != i) {
            return false;
        }
        setPasswordViewModel((AccountVerifyPasswordViewModel) obj);
        return true;
    }

    /* renamed from: t */
    public final boolean m45323t(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57277x0 |= 2;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45324u(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57277x0 |= 8;
        }
        return true;
    }

    public LayoutAccountVerifyPasswordBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 4, (TintImageView) objArr[3], (TintTextView) objArr[4], (TintEditText) objArr[2], (TintEditText) objArr[1]);
        this.f57275v0 = new C11691a();
        this.f57276w0 = new C11692b();
        this.f57277x0 = -1L;
        this.hidePasswordButton.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f57272q0 = constraintLayout;
        constraintLayout.setTag(null);
        this.nextButton.setTag(null);
        this.passwordEdit.setTag(null);
        this.usernameEdit.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
