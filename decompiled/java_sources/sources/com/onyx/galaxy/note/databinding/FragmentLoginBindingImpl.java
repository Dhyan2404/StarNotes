package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ObservableField;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.CompoundButtonBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.viewmodel.LoginViewModel;
import com.onyx.galaxy.note.common.extension.BindingAdapterUtils;
import com.onyx.galaxy.note.generated.callback.OnClickListener;

/* loaded from: classes9.dex */
public class FragmentLoginBindingImpl extends FragmentLoginBinding implements OnClickListener.Listener {

    /* renamed from: C0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56697C0 = null;

    /* renamed from: D0 */
    @Nullable
    public static final SparseIntArray f56698D0;

    /* renamed from: A0 */
    public InverseBindingListener f56699A0;

    /* renamed from: B0 */
    public long f56700B0;

    /* renamed from: q0 */
    @NonNull
    public final TintImageView f56701q0;

    /* renamed from: t0 */
    @Nullable
    public final View.OnClickListener f56702t0;

    /* renamed from: u0 */
    @Nullable
    public final View.OnClickListener f56703u0;

    /* renamed from: v0 */
    @Nullable
    public final View.OnClickListener f56704v0;

    /* renamed from: w0 */
    @Nullable
    public final View.OnClickListener f56705w0;

    /* renamed from: x0 */
    @Nullable
    public final View.OnClickListener f56706x0;

    /* renamed from: y0 */
    public InverseBindingListener f56707y0;

    /* renamed from: z0 */
    public InverseBindingListener f56708z0;

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentLoginBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11674a implements InverseBindingListener {
        public C11674a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            boolean isChecked = FragmentLoginBindingImpl.this.cbPolicy.isChecked();
            LoginViewModel loginViewModel = FragmentLoginBindingImpl.this.mViewModel;
            if (loginViewModel != null) {
                ObservableField<Boolean> isAgreed = loginViewModel.isAgreed();
                if (isAgreed != null) {
                    isAgreed.set(Boolean.valueOf(isChecked));
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentLoginBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11675b implements InverseBindingListener {
        public C11675b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentLoginBindingImpl.this.edtPhoneOrEmail);
            LoginViewModel loginViewModel = FragmentLoginBindingImpl.this.mViewModel;
            if (loginViewModel != null) {
                ObservableField<String> phoneOrEmail = loginViewModel.getPhoneOrEmail();
                if (phoneOrEmail != null) {
                    phoneOrEmail.set(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentLoginBindingImpl$c */
    /* loaded from: classes9.dex */
    public class C11676c implements InverseBindingListener {
        public C11676c() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentLoginBindingImpl.this.tiePwdOrVerification);
            LoginViewModel loginViewModel = FragmentLoginBindingImpl.this.mViewModel;
            if (loginViewModel != null) {
                ObservableField<String> pwdOrVerification = loginViewModel.getPwdOrVerification();
                if (pwdOrVerification != null) {
                    pwdOrVerification.set(textString);
                }
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56698D0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.login_content_container, 16);
        sparseIntArray.put(C10651R.id.btn_back, 17);
        sparseIntArray.put(C10651R.id.imageView, 18);
        sparseIntArray.put(C10651R.id.tv_login_type, 19);
        sparseIntArray.put(C10651R.id.view, 20);
        sparseIntArray.put(C10651R.id.v_edt_bg, 21);
        sparseIntArray.put(C10651R.id.tv_area_code_mark, 22);
        sparseIntArray.put(C10651R.id.iv_area_code_arrow, 23);
        sparseIntArray.put(C10651R.id.v_divider, 24);
        sparseIntArray.put(C10651R.id.view3, 25);
        sparseIntArray.put(C10651R.id.textView, 26);
        sparseIntArray.put(C10651R.id.view4, 27);
        sparseIntArray.put(C10651R.id.ll_logins, 28);
        sparseIntArray.put(C10651R.id.tv_login_google, 29);
        sparseIntArray.put(C10651R.id.tv_login_microsoft, 30);
        sparseIntArray.put(C10651R.id.tv_login_wechat, 31);
        sparseIntArray.put(C10651R.id.tv_login_huawei, 32);
    }

    public FragmentLoginBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 33, f56697C0, f56698D0));
    }

    @Override // com.onyx.galaxy.note.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        if (i == 1) {
            LoginViewModel loginViewModel = this.mViewModel;
            if (loginViewModel != null) {
                loginViewModel.clearPhoneOrEmail();
                return;
            }
            return;
        }
        if (i == 2) {
            LoginViewModel loginViewModel2 = this.mViewModel;
            if (loginViewModel2 != null) {
                loginViewModel2.togglePwdVisible();
                return;
            }
            return;
        }
        if (i == 3) {
            LoginViewModel loginViewModel3 = this.mViewModel;
            if (loginViewModel3 != null) {
                loginViewModel3.changeLoginType(1);
                return;
            }
            return;
        }
        if (i == 4) {
            LoginViewModel loginViewModel4 = this.mViewModel;
            if (loginViewModel4 != null) {
                loginViewModel4.changeLoginType(2);
                return;
            }
            return;
        }
        if (i != 5) {
            return;
        }
        LoginViewModel loginViewModel5 = this.mViewModel;
        if (loginViewModel5 != null) {
            loginViewModel5.changeLoginType(6);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        String str;
        boolean z;
        int i;
        float f;
        String str2;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        String str3;
        int i5;
        String str4;
        int i6;
        boolean z4;
        int i7;
        float f2;
        boolean z5;
        boolean z6;
        String str5;
        long j2;
        long j3;
        synchronized (this) {
            j = this.f56700B0;
            this.f56700B0 = 0L;
        }
        LoginViewModel loginViewModel = this.mViewModel;
        if ((255 & j) != 0) {
            if ((j & 193) != 0) {
                LiveData<?> phoneLengthLimit = loginViewModel != null ? loginViewModel.getPhoneLengthLimit() : null;
                updateLiveDataRegistration(0, phoneLengthLimit);
                i5 = ViewDataBinding.safeUnbox(phoneLengthLimit != null ? phoneLengthLimit.getValue() : null);
            } else {
                i5 = 0;
            }
            long j4 = j & 194;
            if (j4 != 0) {
                ObservableField<String> phoneOrEmail = loginViewModel != null ? loginViewModel.getPhoneOrEmail() : null;
                updateRegistration(1, phoneOrEmail);
                str4 = phoneOrEmail != null ? phoneOrEmail.get() : null;
                boolean isEmpty = str4 != null ? str4.isEmpty() : false;
                if (j4 != 0) {
                    j |= isEmpty ? 512L : 256L;
                }
                i6 = isEmpty ? 8 : 0;
                z4 = !isEmpty;
            } else {
                str4 = null;
                i6 = 0;
                z4 = false;
            }
            long j5 = j & 196;
            if (j5 != 0) {
                LiveData<?> loginType = loginViewModel != null ? loginViewModel.getLoginType() : null;
                updateLiveDataRegistration(2, loginType);
                i2 = ViewDataBinding.safeUnbox(loginType != null ? loginType.getValue() : null);
                boolean z7 = i2 == 6;
                if (j5 != 0) {
                    if (z7) {
                        j2 = j | 2048;
                        j3 = 8192;
                    } else {
                        j2 = j | 1024;
                        j3 = 4096;
                    }
                    j = j2 | j3;
                }
                float dimension = z7 ? this.tiePwdOrVerification.getResources().getDimension(C7384R.dimen.dp_60) : this.tiePwdOrVerification.getResources().getDimension(C7384R.dimen.dp_150);
                i7 = z7 ? 0 : 8;
                f2 = dimension;
            } else {
                i2 = 0;
                i7 = 0;
                f2 = 0.0f;
            }
            if ((j & 200) != 0) {
                ObservableField<Boolean> isAgreed = loginViewModel != null ? loginViewModel.isAgreed() : null;
                updateRegistration(3, isAgreed);
                z5 = ViewDataBinding.safeUnbox(isAgreed != null ? isAgreed.get() : null);
            } else {
                z5 = false;
            }
            if ((j & 208) != 0) {
                ObservableField<String> pwdOrVerification = loginViewModel != null ? loginViewModel.getPwdOrVerification() : null;
                updateRegistration(4, pwdOrVerification);
                str5 = pwdOrVerification != null ? pwdOrVerification.get() : null;
                z6 = !(str5 != null ? str5.isEmpty() : false);
            } else {
                z6 = false;
                str5 = null;
            }
            if ((j & 224) != 0) {
                LiveData<?> areaCode = loginViewModel != null ? loginViewModel.getAreaCode() : null;
                updateLiveDataRegistration(5, areaCode);
                if (areaCode != null) {
                    str = areaCode.getValue();
                    z3 = z5;
                    str3 = str5;
                    str2 = str4;
                    i3 = i6;
                    f = f2;
                    z2 = z4;
                    i4 = i5;
                    z = z6;
                    i = i7;
                }
            }
            z3 = z5;
            str3 = str5;
            str2 = str4;
            i3 = i6;
            f = f2;
            z2 = z4;
            str = null;
            i4 = i5;
            z = z6;
            i = i7;
        } else {
            str = null;
            z = false;
            i = 0;
            f = 0.0f;
            str2 = null;
            i2 = 0;
            z2 = false;
            i3 = 0;
            z3 = false;
            i4 = 0;
            str3 = null;
        }
        if ((j & 196) != 0) {
            this.btnForgetPassword.setVisibility(i);
            this.btnTogglePwdVisible.setVisibility(i);
            BindingAdapterUtils.setVisibility(this.btnVerificationCode, 6, i2);
            BindingAdapterUtils.setVisibility(this.ivLoginEmail, 2, i2);
            ViewBindingAdapter.setPaddingEnd(this.tiePwdOrVerification, f);
            BindingAdapterUtils.setVisibility(this.tvLoginAccount, 6, i2);
            BindingAdapterUtils.setVisibility(this.tvLoginTypeHint, 6, i2);
            BindingAdapterUtils.setVisibility(this.view2, 6, i2);
        }
        if ((208 & j) != 0) {
            this.btnLogin.setEnabled(z);
            TextViewBindingAdapter.setText(this.tiePwdOrVerification, str3);
        }
        if ((128 & j) != 0) {
            this.btnTogglePwdVisible.setOnClickListener(this.f56702t0);
            CompoundButtonBindingAdapter.setListeners(this.cbPolicy, null, this.f56707y0);
            TextViewBindingAdapter.setTextWatcher(this.edtPhoneOrEmail, null, null, null, this.f56708z0);
            this.ivLoginEmail.setOnClickListener(this.f56705w0);
            this.ivLoginPhone.setOnClickListener(this.f56706x0);
            this.f56701q0.setOnClickListener(this.f56704v0);
            TextViewBindingAdapter.setTextWatcher(this.tiePwdOrVerification, null, null, null, this.f56699A0);
            this.tvLoginAccount.setOnClickListener(this.f56703u0);
        }
        if ((194 & j) != 0) {
            this.btnVerificationCode.setEnabled(z2);
            TextViewBindingAdapter.setText(this.edtPhoneOrEmail, str2);
            this.f56701q0.setVisibility(i3);
            this.tilPwdOrVerification.setEnabled(z2);
        }
        if ((200 & j) != 0) {
            CompoundButtonBindingAdapter.setChecked(this.cbPolicy, z3);
        }
        if ((224 & j) != 0) {
            TextViewBindingAdapter.setText(this.edtAreaCode, str);
        }
        if ((j & 193) != 0) {
            TextViewBindingAdapter.setMaxLength(this.edtPhoneOrEmail, i4);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56700B0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56700B0 = 128L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return m45238v((MutableLiveData) obj, i2);
            case 1:
                return m45239w((ObservableField) obj, i2);
            case 2:
                return m45237u((MutableLiveData) obj, i2);
            case 3:
                return m45236t((ObservableField) obj, i2);
            case 4:
                return m45240x((ObservableField) obj, i2);
            case 5:
                return m45235s((MutableLiveData) obj, i2);
            case 6:
                return m45234r((LoginViewModel) obj, i2);
            default:
                return false;
        }
    }

    /* renamed from: r */
    public final boolean m45234r(LoginViewModel loginViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56700B0 |= 64;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45235s(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56700B0 |= 32;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (16 != i) {
            return false;
        }
        setViewModel((LoginViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentLoginBinding
    public void setViewModel(@Nullable LoginViewModel loginViewModel) {
        updateRegistration(6, loginViewModel);
        this.mViewModel = loginViewModel;
        synchronized (this) {
            this.f56700B0 |= 64;
        }
        notifyPropertyChanged(16);
        super.requestRebind();
    }

    /* renamed from: t */
    public final boolean m45236t(ObservableField<Boolean> observableField, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56700B0 |= 8;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45237u(MutableLiveData<Integer> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56700B0 |= 4;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45238v(MutableLiveData<Integer> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56700B0 |= 1;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45239w(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56700B0 |= 2;
        }
        return true;
    }

    /* renamed from: x */
    public final boolean m45240x(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56700B0 |= 16;
        }
        return true;
    }

    public FragmentLoginBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 7, (TintImageView) objArr[17], (TintTextView) objArr[12], (TintTextView) objArr[11], (TintImageView) objArr[9], (TintTextView) objArr[8], (TintCheckBox) objArr[10], (TintTextView) objArr[3], (TintEditText) objArr[4], (ImageView) objArr[18], (TintImageView) objArr[23], (TintTextView) objArr[14], (TintTextView) objArr[13], (ConstraintLayout) objArr[28], (TintConstraintLayout) objArr[16], (NestedScrollView) objArr[0], (TintTextView) objArr[26], (TintEditText) objArr[7], (TintTextInputLayoutView) objArr[6], (TintTextView) objArr[22], (TintTextView) objArr[15], (TintTextView) objArr[29], (TintTextView) objArr[32], (TintTextView) objArr[30], (TintTextView) objArr[19], (TintTextView) objArr[1], (TintTextView) objArr[31], (TintView) objArr[24], (TintView) objArr[21], (View) objArr[20], (View) objArr[2], (TintView) objArr[25], (TintView) objArr[27]);
        this.f56707y0 = new C11674a();
        this.f56708z0 = new C11675b();
        this.f56699A0 = new C11676c();
        this.f56700B0 = -1L;
        this.btnForgetPassword.setTag(null);
        this.btnLogin.setTag(null);
        this.btnTogglePwdVisible.setTag(null);
        this.btnVerificationCode.setTag(null);
        this.cbPolicy.setTag(null);
        this.edtAreaCode.setTag(null);
        this.edtPhoneOrEmail.setTag(null);
        this.ivLoginEmail.setTag(null);
        this.ivLoginPhone.setTag(null);
        TintImageView tintImageView = (TintImageView) objArr[5];
        this.f56701q0 = tintImageView;
        tintImageView.setTag(null);
        this.scrollView.setTag(null);
        this.tiePwdOrVerification.setTag(null);
        this.tilPwdOrVerification.setTag(null);
        this.tvLoginAccount.setTag(null);
        this.tvLoginTypeHint.setTag(null);
        this.view2.setTag(null);
        setRootTag(view);
        this.f56702t0 = new OnClickListener(this, 2);
        this.f56703u0 = new OnClickListener(this, 5);
        this.f56704v0 = new OnClickListener(this, 1);
        this.f56705w0 = new OnClickListener(this, 4);
        this.f56706x0 = new OnClickListener(this, 3);
        invalidateAll();
    }
}
