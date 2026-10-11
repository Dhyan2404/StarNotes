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
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public class LayoutPhoneVerifyItemBindingImpl extends LayoutPhoneVerifyItemBinding {

    /* renamed from: x0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57414x0 = null;

    /* renamed from: y0 */
    @Nullable
    public static final SparseIntArray f57415y0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f57416q0;

    /* renamed from: t0 */
    public OnClickListenerImpl f57417t0;

    /* renamed from: u0 */
    public InverseBindingListener f57418u0;

    /* renamed from: v0 */
    public InverseBindingListener f57419v0;

    /* renamed from: w0 */
    public long f57420w0;

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl implements View.OnClickListener {

        /* renamed from: e */
        public VerifyCodeViewModel f57421e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57421e.clearSocialAccount(view);
        }

        public OnClickListenerImpl setValue(VerifyCodeViewModel verifyCodeViewModel) {
            this.f57421e = verifyCodeViewModel;
            if (verifyCodeViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.LayoutPhoneVerifyItemBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11697a implements InverseBindingListener {
        public C11697a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(LayoutPhoneVerifyItemBindingImpl.this.phoneEdit);
            VerifyCodeViewModel verifyCodeViewModel = LayoutPhoneVerifyItemBindingImpl.this.mModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> socialAccount = verifyCodeViewModel.getSocialAccount();
                if (socialAccount != null) {
                    socialAccount.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.LayoutPhoneVerifyItemBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11698b implements InverseBindingListener {
        public C11698b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(LayoutPhoneVerifyItemBindingImpl.this.verifyCodeEdit);
            VerifyCodeViewModel verifyCodeViewModel = LayoutPhoneVerifyItemBindingImpl.this.mModel;
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
        f57415y0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.phoneNumberLayout, 7);
        sparseIntArray.put(C10651R.id.area_code_selector, 8);
        sparseIntArray.put(C10651R.id.clearButtonWrapper, 9);
    }

    public LayoutPhoneVerifyItemBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f57414x0, f57415y0));
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x012c  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.LayoutPhoneVerifyItemBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57420w0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57420w0 = 256L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return m45353r((VerifyCodeViewModel) obj, i2);
            case 1:
                return m45355t((LiveData) obj, i2);
            case 2:
                return m45357v((MutableLiveData) obj, i2);
            case 3:
                return m45356u((MutableLiveData) obj, i2);
            case 4:
                return m45354s((LiveData) obj, i2);
            case 5:
                return m45358w((LiveData) obj, i2);
            case 6:
                return m45359x((LiveData) obj, i2);
            case 7:
                return m45360y((MutableLiveData) obj, i2);
            default:
                return false;
        }
    }

    /* renamed from: r */
    public final boolean m45353r(VerifyCodeViewModel verifyCodeViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57420w0 |= 1;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45354s(LiveData<Integer> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57420w0 |= 16;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutPhoneVerifyItemBinding
    public void setModel(@Nullable VerifyCodeViewModel verifyCodeViewModel) {
        updateRegistration(0, verifyCodeViewModel);
        this.mModel = verifyCodeViewModel;
        synchronized (this) {
            this.f57420w0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((VerifyCodeViewModel) obj);
        return true;
    }

    /* renamed from: t */
    public final boolean m45355t(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57420w0 |= 2;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45356u(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57420w0 |= 8;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45357v(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57420w0 |= 4;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45358w(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57420w0 |= 32;
        }
        return true;
    }

    /* renamed from: x */
    public final boolean m45359x(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57420w0 |= 64;
        }
        return true;
    }

    /* renamed from: y */
    public final boolean m45360y(MutableLiveData<Integer> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57420w0 |= 128;
        }
        return true;
    }

    public LayoutPhoneVerifyItemBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 8, (TintImageView) objArr[8], (TintTextView) objArr[1], (TintImageView) objArr[3], (FrameLayout) objArr[9], (TintTextView) objArr[6], (TintEditText) objArr[2], (TintLinearLayout) objArr[7], (TintTextView) objArr[5], (TintEditText) objArr[4]);
        this.f57418u0 = new C11697a();
        this.f57419v0 = new C11698b();
        this.f57420w0 = -1L;
        this.areaCodeText.setTag(null);
        this.clearButton.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f57416q0 = linearLayout;
        linearLayout.setTag(null);
        this.nextButton.setTag(null);
        this.phoneEdit.setTag(null);
        this.verifyCodeButton.setTag(null);
        this.verifyCodeEdit.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
