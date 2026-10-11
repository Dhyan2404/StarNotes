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
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel;

/* loaded from: classes9.dex */
public class LayoutAccountVerifyPhoneBindingImpl extends LayoutAccountVerifyPhoneBinding {

    /* renamed from: A0 */
    @Nullable
    public static final SparseIntArray f57282A0 = null;

    /* renamed from: z0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57283z0 = null;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f57284q0;

    /* renamed from: t0 */
    public OnClickListenerImpl f57285t0;

    /* renamed from: u0 */
    public OnClickListenerImpl1 f57286u0;

    /* renamed from: v0 */
    public OnClickListenerImpl2 f57287v0;

    /* renamed from: w0 */
    public InverseBindingListener f57288w0;

    /* renamed from: x0 */
    public InverseBindingListener f57289x0;

    /* renamed from: y0 */
    public long f57290y0;

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl implements View.OnClickListener {

        /* renamed from: e */
        public AccountVerifyPhoneViewModel f57291e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57291e.onVerifyCodeClick(view);
        }

        public OnClickListenerImpl setValue(AccountVerifyPhoneViewModel accountVerifyPhoneViewModel) {
            this.f57291e = accountVerifyPhoneViewModel;
            if (accountVerifyPhoneViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl1 implements View.OnClickListener {

        /* renamed from: e */
        public AccountVerifyPhoneViewModel f57292e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57292e.onNextButtonClick(view);
        }

        public OnClickListenerImpl1 setValue(AccountVerifyPhoneViewModel accountVerifyPhoneViewModel) {
            this.f57292e = accountVerifyPhoneViewModel;
            if (accountVerifyPhoneViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl2 implements View.OnClickListener {

        /* renamed from: e */
        public AccountVerifyPhoneViewModel f57293e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57293e.onAreaCodeClick(view);
        }

        public OnClickListenerImpl2 setValue(AccountVerifyPhoneViewModel accountVerifyPhoneViewModel) {
            this.f57293e = accountVerifyPhoneViewModel;
            if (accountVerifyPhoneViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.LayoutAccountVerifyPhoneBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11693a implements InverseBindingListener {
        public C11693a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(LayoutAccountVerifyPhoneBindingImpl.this.phoneEdit);
            AccountVerifyPhoneViewModel accountVerifyPhoneViewModel = LayoutAccountVerifyPhoneBindingImpl.this.mPhoneViewModel;
            if (accountVerifyPhoneViewModel != null) {
                MutableLiveData<String> phone = accountVerifyPhoneViewModel.getPhone();
                if (phone != null) {
                    phone.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.LayoutAccountVerifyPhoneBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11694b implements InverseBindingListener {
        public C11694b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(LayoutAccountVerifyPhoneBindingImpl.this.verificationCodeEdit);
            AccountVerifyPhoneViewModel accountVerifyPhoneViewModel = LayoutAccountVerifyPhoneBindingImpl.this.mPhoneViewModel;
            if (accountVerifyPhoneViewModel != null) {
                MutableLiveData<String> verificationCode = accountVerifyPhoneViewModel.getVerificationCode();
                if (verificationCode != null) {
                    verificationCode.setValue(textString);
                }
            }
        }
    }

    public LayoutAccountVerifyPhoneBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f57283z0, f57282A0));
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0157  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.LayoutAccountVerifyPhoneBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57290y0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57290y0 = 512L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return m45333z((LiveData) obj, i2);
            case 1:
                return m45328u((LiveData) obj, i2);
            case 2:
                return m45329v((LiveData) obj, i2);
            case 3:
                return m45327t((LiveData) obj, i2);
            case 4:
                return m45325r((AccountVerifyPhoneViewModel) obj, i2);
            case 5:
                return m45332y((MutableLiveData) obj, i2);
            case 6:
                return m45330w((MutableLiveData) obj, i2);
            case 7:
                return m45326s((LiveData) obj, i2);
            case 8:
                return m45331x((LiveData) obj, i2);
            default:
                return false;
        }
    }

    /* renamed from: r */
    public final boolean m45325r(AccountVerifyPhoneViewModel accountVerifyPhoneViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57290y0 |= 16;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45326s(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57290y0 |= 128;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutAccountVerifyPhoneBinding
    public void setPhoneViewModel(@Nullable AccountVerifyPhoneViewModel accountVerifyPhoneViewModel) {
        updateRegistration(4, accountVerifyPhoneViewModel);
        this.mPhoneViewModel = accountVerifyPhoneViewModel;
        synchronized (this) {
            this.f57290y0 |= 16;
        }
        notifyPropertyChanged(10);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (10 != i) {
            return false;
        }
        setPhoneViewModel((AccountVerifyPhoneViewModel) obj);
        return true;
    }

    /* renamed from: t */
    public final boolean m45327t(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57290y0 |= 8;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45328u(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57290y0 |= 2;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45329v(LiveData<Integer> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57290y0 |= 4;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45330w(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57290y0 |= 64;
        }
        return true;
    }

    /* renamed from: x */
    public final boolean m45331x(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57290y0 |= 256;
        }
        return true;
    }

    /* renamed from: y */
    public final boolean m45332y(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57290y0 |= 32;
        }
        return true;
    }

    /* renamed from: z */
    public final boolean m45333z(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57290y0 |= 1;
        }
        return true;
    }

    public LayoutAccountVerifyPhoneBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 9, (TintTextView) objArr[2], (TintTextView) objArr[6], (TintEditText) objArr[3], (TintLinearLayout) objArr[1], (TintEditText) objArr[4], (TintTextView) objArr[5]);
        this.f57288w0 = new C11693a();
        this.f57289x0 = new C11694b();
        this.f57290y0 = -1L;
        this.areaCodeText.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f57284q0 = constraintLayout;
        constraintLayout.setTag(null);
        this.nextButton.setTag(null);
        this.phoneEdit.setTag(null);
        this.phoneLayout.setTag(null);
        this.verificationCodeEdit.setTag(null);
        this.verifyCodeButton.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
