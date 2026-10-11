package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.SpannableTextView;
import com.onyx.galaxy.note.usercenter.viewmodel.PasswordResetViewModel;

/* loaded from: classes9.dex */
public class FragmentPasswordResetBindingImpl extends FragmentPasswordResetBinding {

    /* renamed from: y0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56784y0 = null;

    /* renamed from: z0 */
    @Nullable
    public static final SparseIntArray f56785z0;

    /* renamed from: q0 */
    public OnClickListenerImpl f56786q0;

    /* renamed from: t0 */
    public OnClickListenerImpl1 f56787t0;

    /* renamed from: u0 */
    public OnClickListenerImpl2 f56788u0;

    /* renamed from: v0 */
    public InverseBindingListener f56789v0;

    /* renamed from: w0 */
    public InverseBindingListener f56790w0;

    /* renamed from: x0 */
    public long f56791x0;

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl implements View.OnClickListener {

        /* renamed from: e */
        public PasswordResetViewModel f56792e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56792e.toggleConfirmPasswordVisibility(view);
        }

        public OnClickListenerImpl setValue(PasswordResetViewModel passwordResetViewModel) {
            this.f56792e = passwordResetViewModel;
            if (passwordResetViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl1 implements View.OnClickListener {

        /* renamed from: e */
        public PasswordResetViewModel f56793e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56793e.toggleNewPasswordVisibility(view);
        }

        public OnClickListenerImpl1 setValue(PasswordResetViewModel passwordResetViewModel) {
            this.f56793e = passwordResetViewModel;
            if (passwordResetViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl2 implements View.OnClickListener {

        /* renamed from: e */
        public PasswordResetViewModel f56794e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56794e.resetPassword(view);
        }

        public OnClickListenerImpl2 setValue(PasswordResetViewModel passwordResetViewModel) {
            this.f56794e = passwordResetViewModel;
            if (passwordResetViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentPasswordResetBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11681a implements InverseBindingListener {
        public C11681a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentPasswordResetBindingImpl.this.confirmPasswordEdit);
            PasswordResetViewModel passwordResetViewModel = FragmentPasswordResetBindingImpl.this.mPasswordViewModel;
            if (passwordResetViewModel != null) {
                MutableLiveData<String> confirmPassword = passwordResetViewModel.getConfirmPassword();
                if (confirmPassword != null) {
                    confirmPassword.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentPasswordResetBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11682b implements InverseBindingListener {
        public C11682b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentPasswordResetBindingImpl.this.newPasswordEdit);
            PasswordResetViewModel passwordResetViewModel = FragmentPasswordResetBindingImpl.this.mPasswordViewModel;
            if (passwordResetViewModel != null) {
                MutableLiveData<String> newPassword = passwordResetViewModel.getNewPassword();
                if (newPassword != null) {
                    newPassword.setValue(textString);
                }
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56785z0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_bar, 8);
        sparseIntArray.put(C10651R.id.back_button, 9);
        sparseIntArray.put(C10651R.id.title_text, 10);
        sparseIntArray.put(C10651R.id.verify_layout, 11);
        sparseIntArray.put(C10651R.id.tipText, 12);
    }

    public FragmentPasswordResetBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f56784y0, f56785z0));
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00f5  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentPasswordResetBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56791x0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56791x0 = 32L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45275u((LiveData) obj, i2);
        }
        if (i == 1) {
            return m45272r((PasswordResetViewModel) obj, i2);
        }
        if (i == 2) {
            return m45273s((MutableLiveData) obj, i2);
        }
        if (i == 3) {
            return m45276v((MutableLiveData) obj, i2);
        }
        if (i != 4) {
            return false;
        }
        return m45274t((LiveData) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45272r(PasswordResetViewModel passwordResetViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56791x0 |= 2;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45273s(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56791x0 |= 4;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentPasswordResetBinding
    public void setPasswordViewModel(@Nullable PasswordResetViewModel passwordResetViewModel) {
        updateRegistration(1, passwordResetViewModel);
        this.mPasswordViewModel = passwordResetViewModel;
        synchronized (this) {
            this.f56791x0 |= 2;
        }
        notifyPropertyChanged(9);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (9 != i) {
            return false;
        }
        setPasswordViewModel((PasswordResetViewModel) obj);
        return true;
    }

    /* renamed from: t */
    public final boolean m45274t(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56791x0 |= 16;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45275u(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56791x0 |= 1;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45276v(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56791x0 |= 8;
        }
        return true;
    }

    public FragmentPasswordResetBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 5, (TintImageView) objArr[9], (TintEditText) objArr[3], (SpannableTextView) objArr[6], (TintTextView) objArr[1], (TintEditText) objArr[2], (TintTextView) objArr[7], (TintConstraintLayout) objArr[0], (TintImageView) objArr[5], (TintImageView) objArr[4], (SpannableTextView) objArr[12], (FrameLayout) objArr[8], (TintTextView) objArr[10], (ConstraintLayout) objArr[11]);
        this.f56789v0 = new C11681a();
        this.f56790w0 = new C11682b();
        this.f56791x0 = -1L;
        this.confirmPasswordEdit.setTag(null);
        this.errorText.setTag(null);
        this.headerText.setTag(null);
        this.newPasswordEdit.setTag(null);
        this.nextButton.setTag(null);
        this.rootLayout.setTag(null);
        this.showConfirmPasswordButton.setTag(null);
        this.showNewPasswordButton.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
