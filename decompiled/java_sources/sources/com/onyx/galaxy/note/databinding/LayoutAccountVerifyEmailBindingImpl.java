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
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel;

/* loaded from: classes9.dex */
public class LayoutAccountVerifyEmailBindingImpl extends LayoutAccountVerifyEmailBinding {

    /* renamed from: y0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57252y0 = null;

    /* renamed from: z0 */
    @Nullable
    public static final SparseIntArray f57253z0 = null;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f57254q0;

    /* renamed from: t0 */
    public OnClickListenerImpl f57255t0;

    /* renamed from: u0 */
    public OnClickListenerImpl1 f57256u0;

    /* renamed from: v0 */
    public InverseBindingListener f57257v0;

    /* renamed from: w0 */
    public InverseBindingListener f57258w0;

    /* renamed from: x0 */
    public long f57259x0;

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl implements View.OnClickListener {

        /* renamed from: e */
        public AccountVerifyEmailViewModel f57260e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57260e.onVerifyCodeClick(view);
        }

        public OnClickListenerImpl setValue(AccountVerifyEmailViewModel accountVerifyEmailViewModel) {
            this.f57260e = accountVerifyEmailViewModel;
            if (accountVerifyEmailViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl1 implements View.OnClickListener {

        /* renamed from: e */
        public AccountVerifyEmailViewModel f57261e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57261e.onNextButtonClick(view);
        }

        public OnClickListenerImpl1 setValue(AccountVerifyEmailViewModel accountVerifyEmailViewModel) {
            this.f57261e = accountVerifyEmailViewModel;
            if (accountVerifyEmailViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.LayoutAccountVerifyEmailBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11689a implements InverseBindingListener {
        public C11689a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(LayoutAccountVerifyEmailBindingImpl.this.emailEdit);
            AccountVerifyEmailViewModel accountVerifyEmailViewModel = LayoutAccountVerifyEmailBindingImpl.this.mEmailViewModel;
            if (accountVerifyEmailViewModel != null) {
                MutableLiveData<String> email = accountVerifyEmailViewModel.getEmail();
                if (email != null) {
                    email.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.LayoutAccountVerifyEmailBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11690b implements InverseBindingListener {
        public C11690b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(LayoutAccountVerifyEmailBindingImpl.this.verificationCodeEdit);
            AccountVerifyEmailViewModel accountVerifyEmailViewModel = LayoutAccountVerifyEmailBindingImpl.this.mEmailViewModel;
            if (accountVerifyEmailViewModel != null) {
                MutableLiveData<String> verificationCode = accountVerifyEmailViewModel.getVerificationCode();
                if (verificationCode != null) {
                    verificationCode.setValue(textString);
                }
            }
        }
    }

    public LayoutAccountVerifyEmailBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57252y0, f57253z0));
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0117  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.LayoutAccountVerifyEmailBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57259x0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57259x0 = 128L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return m45315t((LiveData) obj, i2);
            case 1:
                return m45318w((MutableLiveData) obj, i2);
            case 2:
                return m45319x((LiveData) obj, i2);
            case 3:
                return m45317v((LiveData) obj, i2);
            case 4:
                return m45313r((AccountVerifyEmailViewModel) obj, i2);
            case 5:
                return m45314s((MutableLiveData) obj, i2);
            case 6:
                return m45316u((LiveData) obj, i2);
            default:
                return false;
        }
    }

    /* renamed from: r */
    public final boolean m45313r(AccountVerifyEmailViewModel accountVerifyEmailViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57259x0 |= 16;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45314s(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57259x0 |= 32;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutAccountVerifyEmailBinding
    public void setEmailViewModel(@Nullable AccountVerifyEmailViewModel accountVerifyEmailViewModel) {
        updateRegistration(4, accountVerifyEmailViewModel);
        this.mEmailViewModel = accountVerifyEmailViewModel;
        synchronized (this) {
            this.f57259x0 |= 16;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (3 != i) {
            return false;
        }
        setEmailViewModel((AccountVerifyEmailViewModel) obj);
        return true;
    }

    /* renamed from: t */
    public final boolean m45315t(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57259x0 |= 1;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45316u(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57259x0 |= 64;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45317v(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57259x0 |= 8;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45318w(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57259x0 |= 2;
        }
        return true;
    }

    /* renamed from: x */
    public final boolean m45319x(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57259x0 |= 4;
        }
        return true;
    }

    public LayoutAccountVerifyEmailBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 7, (TintEditText) objArr[1], (TintTextView) objArr[4], (TintEditText) objArr[2], (TintTextView) objArr[3]);
        this.f57257v0 = new C11689a();
        this.f57258w0 = new C11690b();
        this.f57259x0 = -1L;
        this.emailEdit.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f57254q0 = constraintLayout;
        constraintLayout.setTag(null);
        this.nextButton.setTag(null);
        this.verificationCodeEdit.setTag(null);
        this.verifyCodeButton.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
