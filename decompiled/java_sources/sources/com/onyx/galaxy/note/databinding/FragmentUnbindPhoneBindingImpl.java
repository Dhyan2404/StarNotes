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
public class FragmentUnbindPhoneBindingImpl extends FragmentUnbindPhoneBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56880v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56881w0;

    /* renamed from: q0 */
    public InverseBindingListener f56882q0;

    /* renamed from: t0 */
    public InverseBindingListener f56883t0;

    /* renamed from: u0 */
    public long f56884u0;

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentUnbindPhoneBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11687a implements InverseBindingListener {
        public C11687a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentUnbindPhoneBindingImpl.this.phoneEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentUnbindPhoneBindingImpl.this.mVerifyCodeViewModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> socialAccount = verifyCodeViewModel.getSocialAccount();
                if (socialAccount != null) {
                    socialAccount.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentUnbindPhoneBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11688b implements InverseBindingListener {
        public C11688b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentUnbindPhoneBindingImpl.this.verifyCodeEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentUnbindPhoneBindingImpl.this.mVerifyCodeViewModel;
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
        f56881w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_bar, 6);
        sparseIntArray.put(C10651R.id.back_button, 7);
        sparseIntArray.put(C10651R.id.title_text, 8);
        sparseIntArray.put(C10651R.id.verify_layout, 9);
    }

    public FragmentUnbindPhoneBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f56880v0, f56881w0));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0064  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentUnbindPhoneBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56884u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56884u0 = 128L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return m45308w((LiveData) obj, i2);
            case 1:
                return m45303r((VerifyCodeViewModel) obj, i2);
            case 2:
                return m45306u((MutableLiveData) obj, i2);
            case 3:
                return m45307v((LiveData) obj, i2);
            case 4:
                return m45304s((LiveData) obj, i2);
            case 5:
                return m45305t((MutableLiveData) obj, i2);
            case 6:
                return m45309x((MutableLiveData) obj, i2);
            default:
                return false;
        }
    }

    /* renamed from: r */
    public final boolean m45303r(VerifyCodeViewModel verifyCodeViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56884u0 |= 2;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45304s(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56884u0 |= 16;
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

    @Override // com.onyx.galaxy.note.databinding.FragmentUnbindPhoneBinding
    public void setVerifyCodeViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel) {
        updateRegistration(1, verifyCodeViewModel);
        this.mVerifyCodeViewModel = verifyCodeViewModel;
        synchronized (this) {
            this.f56884u0 |= 2;
        }
        notifyPropertyChanged(14);
        super.requestRebind();
    }

    /* renamed from: t */
    public final boolean m45305t(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56884u0 |= 32;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45306u(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56884u0 |= 4;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45307v(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56884u0 |= 8;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45308w(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56884u0 |= 1;
        }
        return true;
    }

    /* renamed from: x */
    public final boolean m45309x(MutableLiveData<Integer> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56884u0 |= 64;
        }
        return true;
    }

    public FragmentUnbindPhoneBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 7, (TintTextView) objArr[1], (TintImageView) objArr[7], (TintTextView) objArr[5], (TintEditText) objArr[2], (TintConstraintLayout) objArr[0], (FrameLayout) objArr[6], (TintTextView) objArr[8], (TintTextView) objArr[4], (TintEditText) objArr[3], (LinearLayout) objArr[9]);
        this.f56882q0 = new C11687a();
        this.f56883t0 = new C11688b();
        this.f56884u0 = -1L;
        this.areaCodeText.setTag(null);
        this.nextButton.setTag(null);
        this.phoneEdit.setTag(null);
        this.rootLayout.setTag(null);
        this.verifyCodeButton.setTag(null);
        this.verifyCodeEdit.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
