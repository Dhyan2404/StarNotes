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
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public class FragmentBindPhoneBindingImpl extends FragmentBindPhoneBinding {

    /* renamed from: x0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56606x0 = null;

    /* renamed from: y0 */
    @Nullable
    public static final SparseIntArray f56607y0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f56608q0;

    /* renamed from: t0 */
    public OnClickListenerImpl f56609t0;

    /* renamed from: u0 */
    public InverseBindingListener f56610u0;

    /* renamed from: v0 */
    public InverseBindingListener f56611v0;

    /* renamed from: w0 */
    public long f56612w0;

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl implements View.OnClickListener {

        /* renamed from: e */
        public VerifyCodeViewModel f56613e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56613e.clearSocialAccount(view);
        }

        public OnClickListenerImpl setValue(VerifyCodeViewModel verifyCodeViewModel) {
            this.f56613e = verifyCodeViewModel;
            if (verifyCodeViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentBindPhoneBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11670a implements InverseBindingListener {
        public C11670a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentBindPhoneBindingImpl.this.phoneEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentBindPhoneBindingImpl.this.mVerifyCodeViewModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> socialAccount = verifyCodeViewModel.getSocialAccount();
                if (socialAccount != null) {
                    socialAccount.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentBindPhoneBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11671b implements InverseBindingListener {
        public C11671b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentBindPhoneBindingImpl.this.verifyCodeEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentBindPhoneBindingImpl.this.mVerifyCodeViewModel;
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
        f56607y0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.root_layout, 10);
        sparseIntArray.put(C10651R.id.title_bar, 11);
        sparseIntArray.put(C10651R.id.back_button, 12);
        sparseIntArray.put(C10651R.id.skip_button, 13);
        sparseIntArray.put(C10651R.id.verify_layout, 14);
        sparseIntArray.put(C10651R.id.area_code_selector, 15);
    }

    public FragmentBindPhoneBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 16, f56606x0, f56607y0));
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0135  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentBindPhoneBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56612w0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56612w0 = 256L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return m45220x((LiveData) obj, i2);
            case 1:
                return m45216t((LiveData) obj, i2);
            case 2:
                return m45215s((LiveData) obj, i2);
            case 3:
                return m45214r((VerifyCodeViewModel) obj, i2);
            case 4:
                return m45218v((MutableLiveData) obj, i2);
            case 5:
                return m45219w((LiveData) obj, i2);
            case 6:
                return m45217u((MutableLiveData) obj, i2);
            case 7:
                return m45221y((MutableLiveData) obj, i2);
            default:
                return false;
        }
    }

    /* renamed from: r */
    public final boolean m45214r(VerifyCodeViewModel verifyCodeViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56612w0 |= 8;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45215s(LiveData<Integer> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56612w0 |= 4;
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

    @Override // com.onyx.galaxy.note.databinding.FragmentBindPhoneBinding
    public void setVerifyCodeViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel) {
        updateRegistration(3, verifyCodeViewModel);
        this.mVerifyCodeViewModel = verifyCodeViewModel;
        synchronized (this) {
            this.f56612w0 |= 8;
        }
        notifyPropertyChanged(14);
        super.requestRebind();
    }

    /* renamed from: t */
    public final boolean m45216t(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56612w0 |= 2;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45217u(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56612w0 |= 64;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45218v(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56612w0 |= 16;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45219w(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56612w0 |= 32;
        }
        return true;
    }

    /* renamed from: x */
    public final boolean m45220x(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56612w0 |= 1;
        }
        return true;
    }

    /* renamed from: y */
    public final boolean m45221y(MutableLiveData<Integer> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56612w0 |= 128;
        }
        return true;
    }

    public FragmentBindPhoneBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 8, (TintImageView) objArr[15], (TintTextView) objArr[4], (TintImageView) objArr[12], (TintImageView) objArr[6], (TintTextView) objArr[3], (TintTextView) objArr[2], (TintTextView) objArr[9], (TintEditText) objArr[5], (ConstraintLayout) objArr[10], (TintTextView) objArr[13], (FrameLayout) objArr[11], (TintTextView) objArr[1], (TintTextView) objArr[8], (TintEditText) objArr[7], (LinearLayout) objArr[14]);
        this.f56610u0 = new C11670a();
        this.f56611v0 = new C11671b();
        this.f56612w0 = -1L;
        this.areaCodeText.setTag(null);
        this.clearButton.setTag(null);
        this.headerTipText.setTag(null);
        this.headerTitleText.setTag(null);
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f56608q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        this.nextButton.setTag(null);
        this.phoneEdit.setTag(null);
        this.titleText.setTag(null);
        this.verifyCodeButton.setTag(null);
        this.verifyCodeEdit.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
