package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
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
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public class FragmentPhoneVerifyBindingImpl extends FragmentPhoneVerifyBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56797v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56798w0;

    /* renamed from: q0 */
    public InverseBindingListener f56799q0;

    /* renamed from: t0 */
    public InverseBindingListener f56800t0;

    /* renamed from: u0 */
    public long f56801u0;

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentPhoneVerifyBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11683a implements InverseBindingListener {
        public C11683a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentPhoneVerifyBindingImpl.this.phoneEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentPhoneVerifyBindingImpl.this.mVerifyCodeViewModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> socialAccount = verifyCodeViewModel.getSocialAccount();
                if (socialAccount != null) {
                    socialAccount.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentPhoneVerifyBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11684b implements InverseBindingListener {
        public C11684b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentPhoneVerifyBindingImpl.this.verifyCodeEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentPhoneVerifyBindingImpl.this.mVerifyCodeViewModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> verifyCode = verifyCodeViewModel.getVerifyCode();
                if (verifyCode != null) {
                    verifyCode.setValue(textString);
                }
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56798w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_bar, 6);
        sparseIntArray.put(C10651R.id.back_button, 7);
        sparseIntArray.put(C10651R.id.verify_layout, 8);
        sparseIntArray.put(C10651R.id.tab_layout, 9);
    }

    public FragmentPhoneVerifyBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f56797v0, f56798w0));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0074  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentPhoneVerifyBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56801u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56801u0 = 64L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45281v((LiveData) obj, i2);
        }
        if (i == 1) {
            return m45277r((VerifyCodeViewModel) obj, i2);
        }
        if (i == 2) {
            return m45279t((MutableLiveData) obj, i2);
        }
        if (i == 3) {
            return m45280u((LiveData) obj, i2);
        }
        if (i == 4) {
            return m45278s((MutableLiveData) obj, i2);
        }
        if (i != 5) {
            return false;
        }
        return m45282w((MutableLiveData) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45277r(VerifyCodeViewModel verifyCodeViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56801u0 |= 2;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45278s(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56801u0 |= 16;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (14 != i) {
            return false;
        }
        setVerifyCodeViewModel((VerifyCodeViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentPhoneVerifyBinding
    public void setVerifyCodeViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel) {
        updateRegistration(1, verifyCodeViewModel);
        this.mVerifyCodeViewModel = verifyCodeViewModel;
        synchronized (this) {
            this.f56801u0 |= 2;
        }
        notifyPropertyChanged(14);
        super.requestRebind();
    }

    /* renamed from: t */
    public final boolean m45279t(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56801u0 |= 4;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45280u(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56801u0 |= 8;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45281v(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56801u0 |= 1;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45282w(MutableLiveData<Integer> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56801u0 |= 32;
        }
        return true;
    }

    public FragmentPhoneVerifyBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 6, (TintImageView) objArr[7], (TintTextView) objArr[5], (TintEditText) objArr[2], (ConstraintLayout) objArr[0], (TintTabLayoutView) objArr[9], (FrameLayout) objArr[6], (TintTextView) objArr[1], (TintTextView) objArr[4], (TintEditText) objArr[3], (LinearLayout) objArr[8]);
        this.f56799q0 = new C11683a();
        this.f56800t0 = new C11684b();
        this.f56801u0 = -1L;
        this.nextButton.setTag(null);
        this.phoneEdit.setTag(null);
        this.rootLayout.setTag(null);
        this.titleText.setTag(null);
        this.verifyCodeButton.setTag(null);
        this.verifyCodeEdit.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
