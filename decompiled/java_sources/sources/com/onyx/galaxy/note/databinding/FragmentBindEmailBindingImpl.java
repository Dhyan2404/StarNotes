package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public class FragmentBindEmailBindingImpl extends FragmentBindEmailBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56599v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56600w0;

    /* renamed from: q0 */
    public InverseBindingListener f56601q0;

    /* renamed from: t0 */
    public InverseBindingListener f56602t0;

    /* renamed from: u0 */
    public long f56603u0;

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentBindEmailBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11668a implements InverseBindingListener {
        public C11668a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentBindEmailBindingImpl.this.emailEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentBindEmailBindingImpl.this.mVerifyCodeViewModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> socialAccount = verifyCodeViewModel.getSocialAccount();
                if (socialAccount != null) {
                    socialAccount.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentBindEmailBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11669b implements InverseBindingListener {
        public C11669b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentBindEmailBindingImpl.this.verifyCodeEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentBindEmailBindingImpl.this.mVerifyCodeViewModel;
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
        f56600w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_bar, 9);
        sparseIntArray.put(C10651R.id.back_button, 10);
        sparseIntArray.put(C10651R.id.skip_button, 11);
        sparseIntArray.put(C10651R.id.verify_layout, 12);
    }

    public FragmentBindEmailBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f56599v0, f56600w0));
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ac A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0112  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentBindEmailBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56603u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56603u0 = 128L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return m45212w((LiveData) obj, i2);
            case 1:
                return m45207r((VerifyCodeViewModel) obj, i2);
            case 2:
                return m45210u((MutableLiveData) obj, i2);
            case 3:
                return m45211v((LiveData) obj, i2);
            case 4:
                return m45208s((LiveData) obj, i2);
            case 5:
                return m45209t((MutableLiveData) obj, i2);
            case 6:
                return m45213x((MutableLiveData) obj, i2);
            default:
                return false;
        }
    }

    /* renamed from: r */
    public final boolean m45207r(VerifyCodeViewModel verifyCodeViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56603u0 |= 2;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45208s(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56603u0 |= 16;
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

    @Override // com.onyx.galaxy.note.databinding.FragmentBindEmailBinding
    public void setVerifyCodeViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel) {
        updateRegistration(1, verifyCodeViewModel);
        this.mVerifyCodeViewModel = verifyCodeViewModel;
        synchronized (this) {
            this.f56603u0 |= 2;
        }
        notifyPropertyChanged(14);
        super.requestRebind();
    }

    /* renamed from: t */
    public final boolean m45209t(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56603u0 |= 32;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45210u(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56603u0 |= 4;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45211v(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56603u0 |= 8;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45212w(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56603u0 |= 1;
        }
        return true;
    }

    /* renamed from: x */
    public final boolean m45213x(MutableLiveData<Integer> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56603u0 |= 64;
        }
        return true;
    }

    public FragmentBindEmailBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 7, (TintTextView) objArr[1], (TintImageView) objArr[10], (TintEditText) objArr[5], (TintTextView) objArr[4], (TintTextView) objArr[3], (TintTextView) objArr[8], (TintConstraintLayout) objArr[0], (TintTextView) objArr[11], (FrameLayout) objArr[9], (TintTextView) objArr[2], (TintTextView) objArr[7], (TintEditText) objArr[6], (LinearLayout) objArr[12]);
        this.f56601q0 = new C11668a();
        this.f56602t0 = new C11669b();
        this.f56603u0 = -1L;
        this.areaCodeText.setTag(null);
        this.emailEdit.setTag(null);
        this.headerTipText.setTag(null);
        this.headerTitleText.setTag(null);
        this.nextButton.setTag(null);
        this.rootLayout.setTag(null);
        this.titleText.setTag(null);
        this.verifyCodeButton.setTag(null);
        this.verifyCodeEdit.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
